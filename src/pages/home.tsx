import { TopBar } from "@/components/TopBar";
import {
  Box,
  Button,
  HStack,
  Icon,
  Select,
  Tab,
  TabList,
  TabPanel,
  TabPanels,
  Tabs,
  Text,
  VStack,
} from "@chakra-ui/react";
import React from "react";
import { TableFieldsEditor } from "@/components/TableFieldsEditor";
import { TableConstraintsEditor } from "@/components/TableConstraintsEditor";
import {
  ArrayHelpers,
  FieldArray,
  Form,
  Formik,
  FormikTouched,
} from "formik";
import {
  Field,
  Format,
  Tables,
  defaultTableOptions,
  defaultTables,
  sqlReservedWords,
} from "@/types";
import { AddButton } from "@/components/btn/AddButton";
import { BsX } from "react-icons/bs";
import {
  ChooseTypeModal,
  ConstraintModal,
  GenOptionsModal,
} from "@/components/modal";
import { VisualiserModal } from "@/components/modal/VisualiserModal";
import { ConfirmDeleteModal } from "@/components/modal/ConfirmDeleteModal";
import { PreviewSQLModal } from "@/components/modal/PreviewSQLModal";
import { BaseFooter } from "@/components/BaseFooter";
import * as yup from "yup";
import { CreateTypeModal } from "@/components/modal/CreateTypeModal";

const initialValues: Tables = {
  ...defaultTables,
};

const sqlFieldNamePattern = /^[a-zA-Z][a-zA-Z0-9_]*$/;

yup.addMethod(yup.array, "unique", function (field: string, message: string) {
  return this.test(
    "unique",
    message,
    function (array: Record<string, any>[] | undefined) {
      if (!array) {
        return true;
      }
      const uniquedata = Array.from(
        new Set(array.map((row) => row[field]?.toLowerCase()))
      );
      const isunique = array.length === uniquedata.length;
      if (isunique) {
        return true;
      }
      const index = array.findIndex(
        (row, i) => row[field]?.toLowerCase() !== uniquedata[i]
      );
      if (array[index][field] === "") {
        return true;
      }
      return this.createError({
        path: `${this.path}.${index}.${field}`,
        message,
      });
    }
  );
});

yup.addMethod(
  yup.array,
  "uniquePropertyValue",
  function (
    path: string,
    valueGetter: (arr: Record<string, any>) => any,
    propertyValue: any,
    message: string
  ) {
    return this.test(
      "unique-property-value",
      message,
      function (array: Record<string, any>[] | undefined) {
        if (!array) {
          return true;
        }
        const values = array.map((obj) => valueGetter(obj));
        const appearances = values.filter(
          (val) => val === propertyValue
        ).length;
        if (appearances <= 1) {
          return true;
        }
        const firstIndex = values.indexOf(propertyValue);
        values[firstIndex] = null;
        const secondIndex = values.indexOf(propertyValue);

        return this.createError({
          path: `${this.path}.${secondIndex}.${path}`,
          message,
        });
      }
    );
  }
);

const validationSchema = yup.object().shape({
  tables: yup
    .array()
    .of(
      yup.object().shape({
        name: yup
          .string()
          .matches(sqlFieldNamePattern, "Name should not contain spaces")
          .notOneOf(sqlReservedWords, "Reserved SQL keyword used as field name")
          .required("Table name is required"),
        rowQuantity: yup
          .number()
          .min(1, "The minimum row quantity should be 1")
          .max(100, "The maximum rows quantity should be 100")
          .required("Rows quantity is required"),
        fields: yup
          .array()
          .of(
            yup.object().shape({
              name: yup
                .string()
                .matches(sqlFieldNamePattern, "Name should not contain spaces")
                .notOneOf(
                  sqlReservedWords,
                  "Reserved SQL keyword used as field name"
                )
                .required("Field name is required"),
              type: yup.string().required("Type is required"),
            })
          )
          // @ts-ignore
          .unique("name", "Field name needs to be unique")
          .uniquePropertyValue(
            "constraints",
            (obj: Field) => obj?.constraints?.primaryKey,
            true,
            "Primary key already exists. For composite primary key, please use the constraint editor."
          ),
        constraints: yup
          .array()
          .of(
            yup.object().shape({
              name: yup
                .string()
                .matches(
                  sqlFieldNamePattern,
                  "Constraint name should not contain spaces"
                )
                .notOneOf(
                  sqlReservedWords,
                  "Reserved SQL keyword used as field name"
                ),
              condition: yup.string().required("Condition is required"),
            })
          )
          // @ts-ignore 
          .unique("name", "Constraint name needs to be unique"),
      })
    )
    // @ts-ignore
    .unique("name", "Table name needs to be unique"),
});

type ModalOpenStates = {
  chooseType: boolean;
  removeTable: boolean;
  constraint: boolean;
  generationOptions: boolean;
  visualiser: boolean;
  preview: boolean;
  createType: boolean;
};

export default function Home() {
  const [tabIndex, setTabIndex] = React.useState(0);
  const [openModal, setOpenModal] = React.useState<ModalOpenStates>({
    chooseType: false,
    removeTable: false,
    constraint: false,
    generationOptions: false,
    visualiser: false,
    preview: false,
    createType: false,
  });
  const [currentFieldIndex, setCurrentFieldIndex] = React.useState<number>(0);
  const [currentConstraintIndex, setCurrentConstraintIndex] =
    React.useState<number>(0);
  const [deletingModal, setDeletingModal] = React.useState<number>(0);
  const [removeTable, setRemoveTable] =
    React.useState<ArrayHelpers["remove"]>();
  const onOpenModal = (modal: keyof ModalOpenStates) => {
    // switch off every other modal, except for the open one
    setOpenModal((prev) => {
      return Object.keys(prev).reduce((acc, key) => {
        return {
          ...acc,
          [key]: key === modal,
        };
      }, {} as ModalOpenStates);
    });
  };

  const onCloseModal = (modal: keyof ModalOpenStates) => {
    setOpenModal((prev) => {
      return {
        ...prev,
        [modal]: false,
      };
    });
  };

  const openRemoveTableModal = (
    index: number,
    remove: ArrayHelpers["remove"]
  ) => {
    setDeletingModal(index);
    setRemoveTable(() => remove);
    onOpenModal("removeTable");
  };

  const onChooseType = (index: number) => {
    setCurrentFieldIndex(index);
    onOpenModal("chooseType");
  };

  const onEditOptions = (index: number) => {
    setCurrentFieldIndex(index);
    onOpenModal("generationOptions");
  };

  const onEditConstraint = (index: number) => {
    setCurrentConstraintIndex(index);
    onOpenModal("constraint");
  };

  return (
    <Formik
      initialValues={initialValues}
      onSubmit={async (values) => {
        alert(JSON.stringify(values));
        console.log(values);
      }}
      validationSchema={validationSchema}
    >
      {({
        values,
        handleChange,
        validateForm,
        setTouched,
        touched,
        errors,
      }) => (
        <>
          {/* {console.log("error", errors)}
          {console.log("values", values)} */}
          <Form>
            <VStack
              width={"100vw"}
              textAlign={"center"}
              justifyContent={"center"}
              mb={20}
            >
              <TopBar heading="Create your database schemas" />
              <VStack
                direction="row"
                align="center"
                maxWidth={"1600px"}
                w={"100%"}
              >
                <Tabs
                  onChange={(index: number) => setTabIndex(index)}
                  index={tabIndex}
                  variant={"brand"}
                  px={12}
                  maxWidth={"1600px"}
                  w={"100%"}
                >
                  <TabList my={4} justifyContent={"space-between"}>
                    <HStack w={"100%"}>
                      <FieldArray name={`tables`}>
                        {({ remove, push }: ArrayHelpers) => (
                          <>
                            <AddButton
                              onClick={() => {
                                push({
                                  ...defaultTableOptions,
                                  name: `table_${values.tables.length + 1}`,
                                });
                              }}
                            >
                              Add Table
                            </AddButton>
                            {values.tables.map((table, index) => (
                              <Tab key={index} paddingInlineEnd={2}>
                                {table.name}
                                <Icon
                                  color="red"
                                  as={BsX}
                                  boxSize={5}
                                  ml={1}
                                  onClick={() =>
                                    openRemoveTableModal(index, remove)
                                  }
                                />
                              </Tab>
                            ))}
                          </>
                        )}
                      </FieldArray>
                    </HStack>
                    <Button
                      variant={"primary"}
                      onClick={() => onOpenModal("visualiser")}
                    >
                      Visualiser
                    </Button>
                  </TabList>
                  <TabPanels w={"100%"}>
                    {values.tables.map((table, index) => (
                      <TabPanel p={0} key={index}>
                        <Box display={"flex"} flexDirection={"column"}>
                          <TableFieldsEditor
                            index={index}
                            onChooseType={onChooseType}
                            onEditOptions={onEditOptions}
                          />
                          <TableConstraintsEditor
                            tableIndex={index}
                            onEditConstraint={onEditConstraint}
                          />
                        </Box>
                      </TabPanel>
                    ))}
                  </TabPanels>
                </Tabs>
              </VStack>
              <BaseFooter>
                <Text>Format</Text>
                <Select
                  size="sm"
                  fontSize="xs"
                  w={"150px"}
                  value={values.format}
                  onChange={handleChange}
                  name="format"
                >
                  <option value={Format.MySQL}>{Format.MySQL}</option>
                  <option value={Format.OracleSQL}>{Format.OracleSQL}</option>
                </Select>
                <Button
                  minW={"75px"}
                  size="sm"
                  variant={"outline"}
                  fontSize={"xs"}
                  fontWeight={"bold"}
                  onClick={async () => {
                    const errors = await validateForm();
                    const possibleErrors = Object.keys(errors);
                    if (possibleErrors.length === 0) {
                      onOpenModal("preview");
                    } else {
                      setTouched({
                        ...touched,
                        ...errors,
                      } as FormikTouched<Tables>);
                    }
                  }}
                >
                  Preview
                </Button>
                <Button variant={"primary"} type="submit" fontWeight={"bold"}>
                  Download
                </Button>
              </BaseFooter>
            </VStack>
          </Form>

          <ChooseTypeModal
            isOpen={openModal.chooseType}
            onClose={(selected: string) => {
              onCloseModal("chooseType");
              if (selected) {
                onOpenModal("generationOptions");
              }
            }}
            addCustomType={() => {
              onCloseModal("chooseType");
              onOpenModal("createType");
            }}
            tableIndex={tabIndex}
            fieldIndex={currentFieldIndex}
          />
          <ConfirmDeleteModal
            isOpen={openModal.removeTable}
            onClose={() => onCloseModal("removeTable")}
            onRemove={() => {
              removeTable && removeTable(deletingModal);
            }}
            entity={"table"}
          />
          <ConstraintModal
            isOpen={openModal.constraint}
            onClose={() => onCloseModal("constraint")}
            tableIndex={tabIndex}
            constraintIndex={currentConstraintIndex}
          />
          <VisualiserModal
            isOpen={openModal.visualiser}
            onClose={() => onCloseModal("visualiser")}
          />
          <GenOptionsModal
            isOpen={openModal.generationOptions}
            onClose={() => onCloseModal("generationOptions")}
            tableIndex={tabIndex}
            fieldIndex={currentFieldIndex}
          />
          <PreviewSQLModal
            isOpen={openModal.preview}
            onClose={() => onCloseModal("preview")}
          />
          <CreateTypeModal
            isOpen={openModal.createType}
            onClose={() => {
              onOpenModal("chooseType");
              onCloseModal("createType");
            }}
          />
        </>
      )}
    </Formik>
  );
}

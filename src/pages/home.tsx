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
import { ArrayHelpers, FieldArray, Form, Formik } from "formik";
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
  ErrorModal,
  PreviewSQLModal,
  ConfirmDeleteModal,
  VisualiserModal,
  CreateTypeModal,
} from "@/components/modal";
import { BaseFooter } from "@/components/BaseFooter";
import * as yup from "yup";
import dayjs from "dayjs";
import { useDefaultSchemaContext } from "@/context";

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
              genOptions: yup.object().shape({
                maxLength: yup
                  .number()
                  .optional()
                  .positive("Max length must be a positive number"),
                precision: yup
                  .number()
                  .optional()
                  .positive("Precision must be a positive number"),
                scale: yup
                  .number()
                  .optional()
                  .positive("Scale must be a positive number"),
                nullPercent: yup
                  .number()
                  .optional()
                  .min(0, "Null percentage min value is 0")
                  .max(100, "Null percentage max value is 100"),
                minNumber: yup
                  .number()
                  .optional()
                  .test(
                    "minNumber",
                    "Min value must be less than max value",
                    function (value) {
                      return (
                        !value ||
                        !this.parent.maxNumber ||
                        value <= this.parent.maxNumber
                      );
                    }
                  ),
                maxNumber: yup
                  .number()
                  .optional()
                  .test(
                    "maxNumber",
                    "Max value must be greater than min value",
                    function (value) {
                      return (
                        !value ||
                        !this.parent.minNumber ||
                        value >= this.parent.minNumber
                      );
                    }
                  ),
                minDate: yup
                  .string()
                  .optional()
                  .test(
                    "minDate",
                    "Min date must be less than max date",
                    function (value) {
                      return (
                        !value ||
                        !this.parent.maxDate ||
                        this.parent.maxDate === value ||
                        dayjs(value).isBefore(dayjs(this.parent.maxDate))
                      );
                    }
                  ),
                maxDate: yup
                  .string()
                  .optional()
                  .test(
                    "maxDate",
                    "Max date must be greater than min date",
                    function (value) {
                      return (
                        !value ||
                        !this.parent.minDate ||
                        this.parent.minDate === value ||
                        dayjs(this.parent.minDate).isBefore(dayjs(value))
                      );
                    }
                  ),
              }),
            })
          )
          .min(1, "At least one field is required")
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
  error: boolean;
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
    error: false,
  });
  const [currentFieldIndex, setCurrentFieldIndex] = React.useState<number>(0);
  const [currentConstraintIndex, setCurrentConstraintIndex] =
    React.useState<number>(0);
  const [deletingModal, setDeletingModal] = React.useState<number>(0);
  const [removeTable, setRemoveTable] =
    React.useState<ArrayHelpers["remove"]>();

  const { defaultSchema } = useDefaultSchemaContext();

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
      initialValues={defaultSchema}
      onSubmit={async (_) => {
        onOpenModal("preview");
      }}
      validationSchema={validationSchema}
    >
      {({ values, handleChange, errors }) => (
        <>
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
                    <HStack w={"100%"} overflowX={"auto"}>
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
                    {/* TODO: Enable again if implement visualiser */}
                    {/* <Button
                      variant={"primary"}
                      onClick={() => onOpenModal("visualiser")}
                    >
                      Visualiser
                    </Button> */}
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
                  variant={"outlinedBasic"}
                  onClick={() => {
                    // Create a Blob containing the SQL content
                    const blob = new Blob([JSON.stringify(values, null, 2)], {
                      type: "application/json",
                    });

                    // Create a URL for the Blob
                    const url = URL.createObjectURL(blob);

                    // Create a temporary anchor element
                    const a = document.createElement("a");
                    a.href = url;
                    a.download = "schema.json";

                    // Trigger a click event on the anchor to initiate the download
                    a.click();

                    // Clean up by revoking the Blob URL
                    URL.revokeObjectURL(url);
                  }}
                >
                  Export
                </Button>
                <Button
                  variant={"primary"}
                  type="submit"
                  fontWeight={"bold"}
                  onClick={() => {
                    if (Object.keys(errors).length !== 0) {
                      onOpenModal("error");
                    }
                  }}
                >
                  Preview
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
          <ErrorModal
            isOpen={openModal.error}
            onClose={() => onCloseModal("error")}
          />
        </>
      )}
    </Formik>
  );
}

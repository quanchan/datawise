import { Footer } from "@/components/Footer";
import { TopBar } from "@/components/TopBar";
import {
  Box,
  Button,
  HStack,
  Icon,
  IconButton,
  Modal,
  ModalBody,
  ModalContent,
  ModalFooter,
  ModalHeader,
  ModalOverlay,
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
import { TableConstaintsEditor } from "@/components/TableConstaintsEditor";
import { ArrayHelpers, FieldArray, Form, Formik } from "formik";
import { Tables, defaultTableOptions, defaultTables } from "@/types";
import { AddButton } from "@/components/AddButton";
import { BsX } from "react-icons/bs";
import { ChooseType } from "@/components/ChooseType";
import { ConstraintEditorModal } from "@/components/ConstraintEditorModal";

const initialValues: Tables = {
  ...defaultTables,
};

type ModalOpenStates = {
  chooseType: boolean;
  removeTable: boolean;
  constraint: boolean;
  generationOptions: boolean;
  visualiser: boolean;
};

export default function Home() {
  const [tabIndex, setTabIndex] = React.useState(0);
  const [openModal, setOpenModal] = React.useState<ModalOpenStates>({
    chooseType: false,
    removeTable: false,
    constraint: false,
    generationOptions: false,
    visualiser: false,
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
    onOpenModal("removeTable");
    setDeletingModal(index);
    setRemoveTable(() => remove);
  };

  const onChooseType = (index: number) => {
    setCurrentFieldIndex(index);
    onOpenModal("chooseType");
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
      }}
    >
      {({ values, handleChange }) => (
        <>
          <Form>
            <VStack
              width={"100vw"}
              textAlign={"center"}
              justifyContent={"center"}
              mb={20}
            >
              <TopBar heading="Create your database schemas" />
              <VStack direction="row" align="center" maxWidth={"1600px"} w={"100%"}>
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
                                  name: `Table_${values.tables.length + 1}`,
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
                    <Button variant={"primary"} onClick={() => onOpenModal("visualiser")}>Visualiser</Button>
                  </TabList>
                  <TabPanels w={"100%"}>
                    {values.tables.map((table, index) => (
                      <TabPanel p={0} key={index}>
                        <Box display={"flex"} flexDirection={"column"}>
                          <TableFieldsEditor
                            index={index}
                            onChooseType={onChooseType}
                          />
                          <TableConstaintsEditor
                            tableIndex={index}
                            onEditConstraint={onEditConstraint}
                          />
                        </Box>
                      </TabPanel>
                    ))}
                  </TabPanels>
                </Tabs>
              </VStack>
              <Footer />
            </VStack>
          </Form>
          <Modal
            isOpen={openModal.chooseType}
            onClose={() => onCloseModal("chooseType")}
            size={"full"}
          >
            <ModalOverlay />
            <ModalContent>
              <ChooseType
                onClose={() => onCloseModal("chooseType")}
                tableIndex={tabIndex}
                fieldIndex={currentFieldIndex}
              />
            </ModalContent>
          </Modal>
          <Modal
            isOpen={openModal.removeTable}
            onClose={() => onCloseModal("removeTable")}
            size={"sm"}
          >
            <ModalOverlay />
            <ModalContent>
              <ModalHeader>Confirm Table Deletion</ModalHeader>
              <ModalBody>
                <Text>
                  Are you sure you want to delete this table? This action cannot
                  be undone. All data in this table will be lost.
                </Text>
              </ModalBody>
              <ModalFooter>
                <Button
                  variant={"basic"}
                  bg="gray.02"
                  mr={4}
                  onClick={() => onCloseModal("removeTable")}
                >
                  Cancel
                </Button>
                <Button
                  variant={"primary"}
                  onClick={() => {
                    removeTable!(deletingModal);
                    onCloseModal("removeTable");
                  }}
                >
                  Confirm
                </Button>
              </ModalFooter>
            </ModalContent>
          </Modal>
          <Modal
            isOpen={openModal.constraint}
            onClose={() => onCloseModal("constraint")}
            size={"full"}
          >
            <ModalOverlay />
            <ModalContent>
              <ConstraintEditorModal
                onClose={() => onCloseModal("constraint")}
                tableIndex={tabIndex}
                constraintIndex={currentConstraintIndex}
              />
            </ModalContent>
          </Modal>
          <Modal
            isOpen={openModal.visualiser}
            onClose={() => onCloseModal("visualiser")}
            size={"full"}
          >
            <ModalOverlay />
            <ModalContent>
              <Button onClick={() => onCloseModal("visualiser")}>Close</Button>
            </ModalContent>
          </Modal>
          <Modal
            isOpen={openModal.generationOptions}
            onClose={() => onCloseModal("generationOptions")}
            size={"full"}
          >
            <ModalOverlay />
            <ModalContent>
              <Button onClick={() => onCloseModal("generationOptions")}>Close</Button>
            </ModalContent>
          </Modal>
        </>
      )}
    </Formik>
  );
}

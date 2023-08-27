import { Footer } from "@/components/Footer";
import { TopBar } from "@/components/TopBar";
import {
  Box,
  Button,
  HStack,
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
import { FieldArray, Form, Formik } from "formik";
import { Tables, defaultTableOptions, defaultTables, sqlReservedWords } from "@/types/table";
import { AddButton } from "@/components/AddButton";
import * as yup from "yup";

const initialValues: Tables = {
  ...defaultTables,
};

const sqlFieldNamePattern = /^[a-zA-Z][a-zA-Z0-9_]*$/;

const validationSchema = yup.object().shape({
  tables: yup.array().of(
    yup.object().shape({
      name: yup
        .string()
        .matches(sqlFieldNamePattern, "Name should not contain spaces")
        .notOneOf(sqlReservedWords, "Reserved SQL keyword used as field name")
        .required("Table name is required"),
      rowQuantity: yup
        .number()
        .min(1, "The minimum row quantity should be 1!")
        .max(100, "The maximum rows quantity should be 100!")
        .required("Rows quantity is required"),
      fields: yup.array().of(
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
      ),
      constraints: yup.array().of(
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
        })
      ),
    })
  ),
});

export default function Home() {
  const [tabIndex, setTabIndex] = React.useState(0);
  return (
    <Formik
      initialValues={initialValues}
      onSubmit={async (values) => {
        alert(JSON.stringify(values));
      }}
      validationSchema={validationSchema}
    >
      {({ values, handleChange }) => (
        <Form>
          <VStack
            width={"100vw"}
            textAlign={"center"}
            justifyContent={"center"}
            mb={20}
          >
            <TopBar heading="Create your database schemas" />
            <VStack direction="row" align="center">
              <Tabs
                onChange={(index: number) => setTabIndex(index)}
                variant={"brand"}
                px={12}
                maxWidth={"8xl"}
              >
                <TabList my={4} justifyContent={"space-between"}>
                  <HStack>
                    <FieldArray name={`tables`}>
                      {({ remove, push }) => (
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
                            <Tab key={table.name}>{table.name}</Tab>
                          ))}
                        </>
                      )}
                    </FieldArray>
                  </HStack>
                  <Button
                    minW={"75px"}
                    size="sm"
                    variant={"solid"}
                    background={"blue.primary"}
                  >
                    <Text fontSize="xs" color="white">
                      Visualiser
                    </Text>
                  </Button>
                </TabList>
                <TabPanels>
                  {values.tables.map((table, index) => (
                    <TabPanel p={0} key={table.name}>
                      <Box display={"flex"} flexDirection={"column"}>
                        <TableFieldsEditor index={index} />
                        <TableConstaintsEditor index={index} />
                      </Box>
                    </TabPanel>
                  ))}
                </TabPanels>
              </Tabs>
            </VStack>
            <Footer />
          </VStack>
        </Form>
      )}
    </Formik>
  );
}

import {
  Box,
  Divider,
  HStack,
  Heading,
  Stack,
  Text,
} from "@chakra-ui/react";
import { TableConstaintControl } from "./TableConstraintControl";
import { AddButton } from "./AddButton";
import { FieldArray, useFormikContext } from "formik";
import { Tables, defaultTableConstaints } from "@/types/table";

export type TableConstaintsEditorProps = {
  index: number;
};

export const TableConstaintsEditor: React.FC<TableConstaintsEditorProps> = (
  props
) => {
  const { index } = props;
  const { values, handleChange } = useFormikContext<Tables>();
  const data = values.tables[index].constraints;

  return (
    <Stack
      overflowX={{ base: "scroll", lg: "hidden" }}
      display={"flex"}
      spacing={4}
      border={"1px solid"}
      borderColor={"border.primary"}
      p={4}
      mt={4}
      borderRadius={8}
    >
      <Heading
        as="h3"
        size="sm"
        noOfLines={1}
        color={"text.primary"}
        fontWeight={"normal"}
        textAlign={"left"}
      >
        Table-wide Constraints
      </Heading>
      <Divider
        orientation="horizontal"
        color={"border.primary"}
        opacity={1}
        my={0}
        borderWidth={0.5}
        w={"100%"}
      />
      <HStack pl={12} fontWeight={"semibold"}>
        <Text flex={{ base: 2, lg: 2, xl: 2 }}>Constraint Name</Text>
        <Text flex={{ base: 5, lg: 5, xl: 5 }}>Condition</Text>
        <Text flex={{ base: 1, lg: 1, xl: 1 }}>Actions</Text>
      </HStack>
      <Divider
        orientation="horizontal"
        color={"border.primary"}
        opacity={1}
        my={0}
        borderWidth={0.5}
        w={"100%"}
      />
      <FieldArray name={`tables.${index}.constraints`}>
        {({ remove, push }) => (
          <>
            {data.map((constraint, i) => (
              <TableConstaintControl
                key={constraint.name}
                onRemove={() => remove(i)}
                tableIndex={index}
                constraintIndex={i}
              />
            ))}
            <Box textAlign={"left"}>
              <AddButton
                onClick={() => {
                  push({
                    ...defaultTableConstaints,
                    name: `Constraint_${data.length + 1}`,
                  });
                }}
              >
                Add Constraint
              </AddButton>
            </Box>
          </>
        )}
      </FieldArray>
    </Stack>
  );
};

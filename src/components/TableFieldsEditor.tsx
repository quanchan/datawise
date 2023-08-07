import {
  Box,
  Divider,
  HStack,
  Input,
  Stack,
  Text,
} from "@chakra-ui/react";
import { FieldControl } from "./FieldControl";
import { FieldArray, useFormikContext } from "formik";
import { Tables, defaultField } from "@/types/table";
import { AddButton } from "./AddButton";
export type TableFieldsEditorProps = {
  index: number;
};

export const TableFieldsEditor: React.FC<TableFieldsEditorProps> = (props) => {
  const { index } = props;

  const { values, handleChange } = useFormikContext<Tables>();
  const data = values.tables[index];
  return (
    <Stack
      overflowX={{ base: "scroll", lg: "hidden" }}
      display={"flex"}
      spacing={4}
      border={"1px solid"}
      borderColor={"border.primary"}
      p={4}
      borderRadius={8}
    >
      <Text fontSize={"sm"} alignSelf={"flex-start"}>
        Rows Quantity{" "}
        <Input
          name={`tables.${index}.rowQuantity`}
          onChange={handleChange}
          value={data.rowQuantity}
          p={0}
          fontSize={"sm"}
          ml={3}
          w={"75px"}
          textAlign={"center"}
          type="number"
          py={1}
          h={"auto"}
        />
      </Text>
      <Divider
        orientation="horizontal"
        color={"border.primary"}
        opacity={1}
        my={0}
        borderWidth={0.5}
        w={"100%"}
      />
      <HStack pl={12} fontWeight={"semibold"}>
        <Text flex={{ base: 2, lg: 3, xl: 4 }}>Field Name</Text>
        <Text flex={{ base: 2, lg: 3, xl: 4 }}>Type</Text>
        <Text flex={{ base: 3, lg: 3, xl: 4 }}>Constraints</Text>
        <Text flex={{ base: 2, lg: 3, xl: 4 }}>Default</Text>
        <Text flex={2}>Generation Options</Text>
      </HStack>
      <Divider
        orientation="horizontal"
        color={"border.primary"}
        opacity={1}
        my={0}
        borderWidth={0.5}
        w={"100%"}
      />
      <FieldArray name={`tables.${index}.fields`}>
        {({ remove, push }) => (
          <Stack spacing={4}>
            {data.fields.map((f, i) => (
              <FieldControl
                key={f.name}
                onRemove={() => remove(i)}
                fieldIndex={i}
                tableIndex={index}
              />
            ))}
            <Box textAlign={"left"}>
              <AddButton
                onClick={() => {
                  push({
                    ...defaultField,
                    name: `Field_${data.fields.length + 1}`,
                  })
                }}
              >
                Add Field
              </AddButton>
            </Box>
          </Stack>
        )}
      </FieldArray>
    </Stack>
  );
};

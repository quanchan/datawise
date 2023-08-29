import {
  Box,
  Divider,
  HStack,
  Input,
  Stack,
  Text,
  VStack,
} from "@chakra-ui/react";
import { FieldControl } from "./FieldControl";
import {
  ArrayHelpers,
  FieldArray,
  useFormikContext,
  ErrorMessage,
} from "formik";
import { Tables, defaultField } from "@/types/table";
import { AddButton } from "./AddButton";
export type TableFieldsEditorProps = {
  index: number;
  onChooseType: (index: number) => void;
};

export const TableFieldsEditor: React.FC<TableFieldsEditorProps> = (props) => {
  const { index, onChooseType } = props;

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
      <VStack spacing={1} alignItems={"flex-start"} padding={4} width={"100%"}>
        <HStack fontSize={"sm"} alignSelf={"flex-start"}>
          <HStack spacing={3}>
            <Text>Table Name</Text>
            <Input
              name={`tables.${index}.name`}
              onChange={handleChange}
              value={data.name}
              p={0}
              fontSize={"sm"}
              w={"75px"}
              textAlign={"center"}
              py={1}
              h={"auto"}
            />
            <Text>Row Quantity</Text>
            <Input
              name={`tables.${index}.rowQuantity`}
              onChange={handleChange}
              value={data.rowQuantity}
              p={0}
              fontSize={"sm"}
              w={"75px"}
              textAlign={"center"}
              type="number"
              py={1}
              h={"auto"}
            />
          </HStack>
          <Box></Box>
        </HStack>
        <ErrorMessage
          name={`tables.${index}.name`}
          component={Text}
          color="red.500"
        />
        <ErrorMessage
          name={`tables.${index}.rowQuantity`}
          component={Text}
          color="red.500"
        />
      </VStack>
      <Divider
        orientation="horizontal"
        color={"border.primary"}
        opacity={1}
        my={0}
        borderWidth={0.5}
        w={"100%"}
      />
      <HStack pl={12} fontWeight={"semibold"} minW={"4xl"}>
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
        {({ remove, push }: ArrayHelpers) => (
          <Stack spacing={4}>
            {data.fields.map((f, i) => (
              <FieldControl
                key={i}
                onRemove={() => remove(i)}
                fieldIndex={i}
                tableIndex={index}
                onChooseType={onChooseType}
              />
            ))}
            <Box textAlign={"left"}>
              <AddButton
                onClick={() => {
                  push({
                    ...defaultField,
                    name: `Field_${data.fields.length + 1}`,
                  });
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

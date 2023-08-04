import { Checkbox, HStack, Text } from "@chakra-ui/react";

export type FieldConstraintsControlProps = {};

export const FieldConstraintsControl: React.FC<
  FieldConstraintsControlProps
> = () => {
  return (
    <HStack spacing={4} w={"100%"}>
      <Checkbox defaultChecked>
        <Text fontSize="xs">NOT NULL</Text>
      </Checkbox>
      <Checkbox defaultChecked>
        <Text fontSize="xs">UNIQUE</Text>
      </Checkbox>
      <Checkbox defaultChecked>
        <Text fontSize="xs">PRIMARY KEY</Text>
      </Checkbox>
    </HStack>
  );
};

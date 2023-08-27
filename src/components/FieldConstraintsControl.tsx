import { Tables } from "@/types/table";
import { Checkbox, HStack, Text } from "@chakra-ui/react";
import { useFormikContext } from "formik";

export type FieldConstraintsControlProps = {
  fieldIndex: number;
  tableIndex: number;
};

export const FieldConstraintsControl: React.FC<
  FieldConstraintsControlProps
> = (props) => {
  const { fieldIndex, tableIndex } = props;
  const {values, handleChange} = useFormikContext<Tables>();
  const data = values.tables[tableIndex].fields[fieldIndex].constraints;

  return (
    <HStack w={"100%"} justifyContent={"space-between"}>
      <Checkbox name={`tables.${tableIndex}.fields.${fieldIndex}.constraints.notNull`} checked={data.notNull} onChange={handleChange}>
        <Text fontSize="xs">NOT NULL</Text>
      </Checkbox>
      <Checkbox name={`tables.${tableIndex}.fields.${fieldIndex}.constraints.unique`} checked={data.unique} onChange={handleChange}>
        <Text fontSize="xs">UNIQUE</Text>
      </Checkbox>
      <Checkbox name={`tables.${tableIndex}.fields.${fieldIndex}.constraints.primaryKey`} checked={data.primaryKey} onChange={handleChange}>
        <Text fontSize="xs">PRIMARY KEY</Text>
      </Checkbox>
    </HStack>
  );
};

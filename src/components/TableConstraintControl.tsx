import { Tables } from "@/types/table";
import {
  Box,
  Button,
  HStack,
  Icon,
  IconButton,
  Input,
  Text,
} from "@chakra-ui/react";
import { useFormikContext } from "formik";
import { RiDeleteBinLine } from "react-icons/ri";
export type TableConstaintControlProps = {
  onRemove: () => void;
  tableIndex: number;
  constraintIndex: number;
};

export const TableConstaintControl: React.FC<TableConstaintControlProps> = (props) => {
  const { onRemove, tableIndex, constraintIndex } = props;
  const { values, handleChange } = useFormikContext<Tables>();
  const data = values.tables[tableIndex].constraints[constraintIndex];
  return (
    <HStack
      spacing={4}
      backgroundColor={"surface.02"}
      borderRadius={8}
      borderColor={"border.primary"}
      borderWidth={1}
      borderStyle={"solid"}
      justifyContent={"space-between"}
      padding={4}
      width={"100%"}
    >
      <Input
        size="sm"
        placeholder={"Constraint Name"}
        value={data.name}
        onChange={handleChange}
        name={`tables.${tableIndex}.constraints.${constraintIndex}.name`}
        flex={2}
        backgroundColor={"surface.01"}
      />
      <Input
        size="sm"
        placeholder={"Condition"}
        value={data.condition}
        onChange={handleChange}
        name={`tables.${tableIndex}.constraints.${constraintIndex}.condition`}
        flex={5}
        backgroundColor={"surface.01"}
      />
      <Button
        size="sm"
        variant={"ghost"}
      >
        <Text fontSize="xs" color="blue.primary">
          Edit
        </Text>
      </Button>
      <Box>
        <IconButton
          size={"xs"}
          fontSize="lg"
          aria-label="Menu"
          onClick={onRemove}
          icon={<Icon color="red" as={RiDeleteBinLine} />}
          colorScheme="white"
        />
      </Box>
    </HStack>
  );
};

import { Tables } from "@/types";
import {
  Box,
  Button,
  HStack,
  Icon,
  IconButton,
  Input,
  VStack,
} from "@chakra-ui/react";
import { useFormikContext } from "formik";
import { RiDeleteBinLine } from "react-icons/ri";
export type TableConstraintControlProps = {
  onRemove: () => void;
  tableIndex: number;
  constraintIndex: number;
  onEditConstraint: (index: number) => void;
};
import { ErrorMessage } from "./ErrorMessage";

export const TableConstraintControl: React.FC<TableConstraintControlProps> = (
  props
) => {
  const { onRemove, tableIndex, constraintIndex, onEditConstraint } = props;
  const { values, handleChange } = useFormikContext<Tables>();
  const data = values.tables[tableIndex]?.constraints[constraintIndex];

  if (!data) return <></>;

  return (
    <VStack
      spacing={1}
      backgroundColor={"surface.02"}
      borderRadius={8}
      borderColor={"border.primary"}
      borderWidth={2}
      borderStyle={"solid"}
      alignItems={"flex-start"}
      padding={4}
      width={"100%"}
    >
      <HStack
        spacing={4}
        backgroundColor={"surface.02"}
        justifyContent={"space-between"}
        padding={4}
        width={"100%"}
        minW={"4xl"}
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
          fontSize="xs"
          color="blue.primary"
          onClick={() => onEditConstraint(constraintIndex)}
        >
          Edit
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
      <ErrorMessage
        name={`tables.${tableIndex}.constraints.${constraintIndex}.name`}
      />
      <ErrorMessage
        name={`tables.${tableIndex}.constraints.${constraintIndex}.condition`}
      />
    </VStack>
  );
};

import {
  Box,
  Button,
  HStack,
  Icon,
  IconButton,
  Input,
  Text,
} from "@chakra-ui/react";
import { MdOutlineDragIndicator } from "react-icons/md";
import { IoOpenOutline } from "react-icons/io5";
import { FieldConstraintsControl } from "./FieldConstraintsControl";
import { RiDeleteBinLine } from "react-icons/ri";
import { Tables } from "@/types/table";
import { useFormikContext } from "formik";

export type FieldControlProps = {
  onRemove: () => void;
  tableIndex: number;
  fieldIndex: number;
};

export const FieldControl: React.FC<FieldControlProps> = (props) => {
  const { values, handleChange } = useFormikContext<Tables>();
  const { onRemove, tableIndex, fieldIndex } = props;
  const data = values.tables[tableIndex].fields[fieldIndex];

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
      <Box>
        <MdOutlineDragIndicator />
      </Box>
      <Input
        size="sm"
        value={data.name}
        name={`tables.${tableIndex}.fields.${fieldIndex}.name`}
        placeholder={"Field Name"}
        onChange={handleChange}
        w={"100%"}
        backgroundColor={"surface.01"}
      />
      <Button
        padding={4}
        size="xs"
        justifyContent={"space-between"}
        variant={"outline"}
        rightIcon={<Icon as={IoOpenOutline} fontSize={"md"} color={"blue.primary"} />}
        w={"100%"}
        backgroundColor={"surface.01"}
      >
        {data.type || <Text as="i" color="text.disable">Choose a Type</Text>}
      </Button>
      <FieldConstraintsControl fieldIndex={fieldIndex} tableIndex={tableIndex} />
      <Input
        size="sm"
        placeholder={"Default Value"}
        w={"100%"}
        backgroundColor={"surface.01"}
        value={data.defaultValue}
        name={`tables.${tableIndex}.fields.${fieldIndex}.defaultValue`}
        onChange={handleChange}
      />
      <Button
        minW={"75px"}
        size="sm"
        variant={"solid"}
        background={"blue.primary"}
      >
        <Text fontSize="xs" color="white">
          Options
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

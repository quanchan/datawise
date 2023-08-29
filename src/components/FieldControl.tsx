import {
  Box,
  Button,
  HStack,
  Icon,
  IconButton,
  Input,
  Text,
  VStack,
} from "@chakra-ui/react";
import { MdOutlineDragIndicator } from "react-icons/md";
import { IoOpenOutline } from "react-icons/io5";
import { FieldConstraintsControl } from "./FieldConstraintsControl";
import { RiDeleteBinLine } from "react-icons/ri";
import { Tables } from "@/types/table";
import { useFormikContext, ErrorMessage } from "formik";
import { useRouter } from "next/router";
import allData from "../../typeData.json";

export type FieldControlProps = {
  onRemove: () => void;
  tableIndex: number;
  fieldIndex: number;
  onChooseType: (index: number) => void;
};

export const FieldControl: React.FC<FieldControlProps> = (props) => {
  const { values, handleChange } = useFormikContext<Tables>();
  const { onRemove, tableIndex, fieldIndex, onChooseType } = props;
  const data = values.tables[tableIndex].fields[fieldIndex];
  const router = useRouter();
  const type = allData.find((type) => type.id === data.type);
  return (
    <VStack
      spacing={1}
      backgroundColor={"surface.02"}
      borderRadius={8}
      borderColor={"border.primary"}
      borderWidth={1}
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
          fontSize={"sm"}
          fontWeight={"normal"}
          justifyContent={"space-between"}
          variant={"outline"}
          rightIcon={
            <Icon as={IoOpenOutline} fontSize={"md"} color={"blue.primary"} />
          }
          w={"100%"}
          backgroundColor={"surface.01"}
          onClick={() => onChooseType(fieldIndex)}
        >
          {type?.displayName || (
            <Text as="i" color="text.disable">
              Choose a Type
            </Text>
          )}
        </Button>
        <FieldConstraintsControl
          fieldIndex={fieldIndex}
          tableIndex={tableIndex}
        />
        <Input
          size="sm"
          placeholder={"Default Value"}
          w={"100%"}
          backgroundColor={"surface.01"}
          value={data.defaultValue}
          name={`tables.${tableIndex}.fields.${fieldIndex}.defaultValue`}
          onChange={handleChange}
        />
        <Button variant={"primary"}>Options</Button>
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
        name={`tables.${tableIndex}.fields.${fieldIndex}.name`}
        component={Text}
        color="red.500"
      />
    </VStack>
  );
};

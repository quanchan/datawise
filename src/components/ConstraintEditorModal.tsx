import { Box, HStack, Text, Textarea, VStack } from "@chakra-ui/react";
import { BaseTopBar } from "./BaseTopBar";
import { ConstraintEditorModalFooter } from "@/components/ConstraintEditorModalFooter";
import { useFormikContext } from "formik";
import { Tables } from "@/types/table";
export type ConstraintEditorModalProps = {
  onClose: () => void;
  tableIndex: number;
  constraintIndex: number;
};

const functions = [
  "CONCAT(string1, string2, ..., string_n)",
  "SUBSTRING(string, start, length)",
  "LEN(string)",
  "UNIQUE(col1, col2, ..., col_n)",
  "FOREIGN KEY(col1, col2, ..., col_n) REFERENCES table_name(col1, col2, ..., col_n)",
];

export const ConstraintEditorModal: React.FC<ConstraintEditorModalProps> = (
  props
) => {
  const { onClose, tableIndex, constraintIndex } = props;
  const { values, handleChange } = useFormikContext<Tables>();

  return (
    <VStack
      width={"100vw"}
      textAlign={"center"}
      justifyContent={"center"}
      mb={20}
    >
      <BaseTopBar heading="Constraint Editor" />
      <HStack height={"70vh"} spacing={12} alignItems={"flex-start"} mt={8}>
        <Box textAlign={"left"} w={"25vw"}>
          <Text mb={8} fontSize={"md"} fontWeight={"bold"}>
            Functions reference
          </Text>
          <Box ml={8}>
            {functions.map((func, index) => (
              <Text mb={4} key={index}>
                {func}
              </Text>
            ))}
          </Box>
        </Box>
        <Textarea
          name={`tables.${tableIndex}.constraints.${constraintIndex}.condition`}
          onChange={handleChange}
          value={
            values.tables[tableIndex].constraints[constraintIndex].condition
          }
          height={"70vh"}
          variant={"outline"}
          fontSize={"sm"}
        />
        <Box textAlign={"left"} w={"25vw"}>
          <Text mb={8} fontSize={"md"} fontWeight={"bold"}>
            List of available columns
          </Text>
          <Box ml={8}>
            {values.tables[tableIndex].fields.map((field, index) => (
              <Text mb={4} key={index}>
                {field.name}
              </Text>
            ))}
          </Box>
        </Box>
      </HStack>
      <ConstraintEditorModalFooter onClose={onClose} />
    </VStack>
  );
};

import { Box, HStack, Text, Textarea, VStack } from "@chakra-ui/react";
import { BaseTopBar } from "./BaseTopBar";
import { ConstraintEditorModalFooter } from "@/components/ConstraintEditorModalFooter";
import { useFormikContext } from "formik";
import { Tables } from "@/types";
export type GenerationOptionsModalProps = {
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

export const GenerationOptionsModal: React.FC<GenerationOptionsModalProps> = (
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
      <BaseTopBar heading="Generation Options" />
      <HStack height={"70vh"} spacing={12} alignItems={"flex-start"} mt={8}>
      </HStack>
      <ConstraintEditorModalFooter onClose={onClose} />
    </VStack>
  );
};

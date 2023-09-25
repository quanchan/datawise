import { Box, HStack, Text, Textarea, VStack } from "@chakra-ui/react";
import { BaseTopBar } from "../BaseTopBar";
import { ConstraintModalFooter } from "@/components/modal";
import { useFormikContext } from "formik";
import { Tables } from "@/types";
import { BaseModal, BaseModalProps } from "./BaseModal";
export type ConstraintModalProps = {
  onClose: () => void;
  tableIndex: number;
  constraintIndex: number;
} & BaseModalProps;

const functions = [
  "CONCAT(string1, string2, ..., string_n)",
  "SUBSTRING(string, start, length)",
  "LEN(string)",
];

const constraints = [
  "UNIQUE(col1, col2, ..., col_n)",
  "FOREIGN KEY(col1, col2, ..., col_n) REFERENCES table_name(col1, col2, ..., col_n)",
  "PRIMARY KEY(col1, col2, ..., col_n)",
  "CHECK(condition)",
];

export const ConstraintModal: React.FC<ConstraintModalProps> = (props) => {
  const { onClose, tableIndex, constraintIndex, isOpen, size } = props;
  const { values, handleChange } = useFormikContext<Tables>();

  return (
    <BaseModal isOpen={isOpen} onClose={onClose} size={size}>
      <VStack
        width={"100vw"}
        textAlign={"center"}
        justifyContent={"center"}
        mb={20}
      >
        <BaseTopBar heading="Constraint Editor" />
        <HStack height={"70vh"} spacing={12} alignItems={"flex-start"} mt={8}>
          <Box textAlign={"left"} w={"25vw"}>
            <Text mb={4} fontSize={"md"} fontWeight={"bold"}>
              Constraints reference
            </Text>
            <Box ml={8}>
              {constraints.map((c, index) => (
                <Text mb={4} key={index}>
                  {c}
                </Text>
              ))}
            </Box>
            <Text mb={4} fontSize={"md"} fontWeight={"bold"}>
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
              values.tables[tableIndex]?.constraints[constraintIndex]?.condition
            }
            height={"70vh"}
            variant={"outline"}
            fontSize={"sm"}
          />
          <Box textAlign={"left"} w={"25vw"}>
            <Text mb={4} fontSize={"md"} fontWeight={"bold"}>
              List of available columns
            </Text>
            <Box ml={8}>
              {values.tables.map((table, index) => {
                return (
                  <Box key={index}>
                    <Text mb={2} fontWeight={"bold"}>
                      {table.name}
                    </Text>
                    {table.fields.map((field, index) => {
                      return (
                        <Text mb={2} fontSize={"xs"} key={index}>
                          {field.name}
                        </Text>
                      );
                    })}
                  </Box>
                );
              })}
            </Box>
          </Box>
        </HStack>
        <ConstraintModalFooter onClose={onClose} />
      </VStack>
    </BaseModal>
  );
};

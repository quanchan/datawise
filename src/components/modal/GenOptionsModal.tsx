import { Box, HStack, Text, Textarea, VStack } from "@chakra-ui/react";
import { BaseTopBar } from "../BaseTopBar";
import {
  BaseModal,
  BaseModalProps,
  GenOptionsModalFooter,
} from "@/components/modal";
import { useFormikContext } from "formik";
import { Tables } from "@/types";
import { TextInput, DateInput, SelectInput } from "@/components/input";
import { ValuePoolInput } from "../input/ValuePoolInput";
export type GenOptionsModalProps = {
  onClose: () => void;
  tableIndex: number;
  fieldIndex: number;
} & BaseModalProps;

export const GenOptionsModal: React.FC<GenOptionsModalProps> = (props) => {
  const { onClose, tableIndex, fieldIndex, isOpen, size } = props;
  const { values, handleChange } = useFormikContext<Tables>();

  return (
    <BaseModal isOpen={isOpen} onClose={onClose}>
      <VStack
        width={"100vw"}
        textAlign={"center"}
        justifyContent={"center"}
        mb={20}
      >
        <BaseTopBar heading="Generation Options" />
        <VStack
          height={"70vh"}
          alignItems={"flex-start"}
          justifyContent={"flex-start"}
          mt={8}
        >
          <HStack justifyContent={"space-between"} flexWrap={"wrap"} mx={8}>
            <TextInput
              label="Max Length Max Length Max Length"
              inclusiveChecked={true}
              tooltip="The maximum length of the generated string"
            />
            <TextInput label="Max Length" isNumber={true} />
            <SelectInput label="Max Length" 
              options={["long string 12345", "long string 12345"]}
            /> 
            <DateInput label="Max Length" placeholder="Pick a date"/>
          </HStack>
                      <ValuePoolInput />

        </VStack>
        <GenOptionsModalFooter onClose={onClose} />
      </VStack>
    </BaseModal>
  );
};

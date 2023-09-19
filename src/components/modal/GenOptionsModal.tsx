import { HStack, VStack } from "@chakra-ui/react";
import { BaseTopBar } from "../BaseTopBar";
import {
  BaseModal,
  BaseModalProps,
  GenOptionsModalFooter,
} from "@/components/modal";
import { useFormikContext } from "formik";
import { Tables, WordCasingOptions } from "@/types";
import { TextInput, DateInput, SelectInput } from "@/components/input";
import { ValuePoolInput } from "../input/ValuePoolInput";
import { Type } from "@/types";
import axios from "axios";
import { useQuery } from "@tanstack/react-query";
import { TypeProcessor } from "@/server/TypeProcessor";
import React from "react";

export type GenOptionsModalProps = {
  onClose: () => void;
  tableIndex: number;
  fieldIndex: number;
} & BaseModalProps;

export const GenOptionsModal: React.FC<GenOptionsModalProps> = (props) => {
  const { onClose, tableIndex, fieldIndex, isOpen } = props;
  const { values, handleChange, setFieldValue } = useFormikContext<Tables>();
  const fieldData = values.tables[tableIndex].fields[fieldIndex];
  const genOptions = fieldData?.genOptions;
  const typeId = fieldData?.type;
  const { data: type } = useQuery<Type | undefined>({
    queryKey: [`typeData${typeId}`],
    queryFn: () =>
      axios.get(`/api/types/id?id=${typeId}`).then((res) => res.data),
  });
  const gen_opts = type?.gen_opts;
  const namePrefix = `tables.${tableIndex}.fields.${fieldIndex}.genOptions.`;
  const typeProcessor = new TypeProcessor(type?.data_type);

  React.useEffect(() => {
    setFieldValue(
      namePrefix + "actualType",
      genOptions?.actualType || typeProcessor.getSQLType(values.format)
    );
    setFieldValue(
      namePrefix + "maxLength",
      genOptions?.maxLength || typeProcessor.args[0]
    );
    setFieldValue(
      namePrefix + "precision",
      genOptions?.precision || typeProcessor.args[0]
    );
    setFieldValue(
      namePrefix + "scale",
      genOptions?.scale || typeProcessor.args[1]
    );
    setFieldValue(namePrefix + "excluded", genOptions?.excluded || []);
    setFieldValue(namePrefix + "nullPercent", genOptions?.nullPercent || 0);
    setFieldValue(
      namePrefix + "phoneFaxFormat",
      genOptions?.phoneFaxFormat || ""
    );
    setFieldValue(namePrefix + "minDate", genOptions?.minDate || "");
    setFieldValue(namePrefix + "maxDate", genOptions?.maxDate || "");
    setFieldValue(namePrefix + "minNumber", genOptions?.minNumber || "");
    setFieldValue(namePrefix + "maxNumber", genOptions?.maxNumber || "");
  }, [type]);

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
          <HStack
            justifyContent={"space-between"}
            flexWrap={"wrap"}
            mx={8}
            maxW={"1234px"}
          >
            {gen_opts?.includes("actualType") && (
              <TextInput
                value={genOptions?.actualType}
                onChange={handleChange}
                label="Actual Type"
                disabled={true}
                styles={{ m: 2 }}
              />
            )}
            {gen_opts?.includes("maxLength") && (
              <TextInput
                name={namePrefix + "maxLength"}
                onChange={handleChange}
                value={genOptions?.maxLength}
                label={"String Max Length"}
                styles={{ m: 2 }}
              />
            )}
            {gen_opts?.includes("precision") && (
              <TextInput
                name={namePrefix + "precision"}
                onChange={handleChange}
                value={genOptions?.precision}
                label={"Precision"}
                isNumber={true}
                tooltip="The number of digits in a number. For example, the number 123.45 has a precision of 5."
                styles={{ m: 2 }}
              />
            )}
            {gen_opts?.includes("scale") && (
              <TextInput
                name={namePrefix + "scale"}
                onChange={handleChange}
                value={genOptions?.scale}
                label={"Scale"}
                isNumber={true}
                tooltip="The number of digits to the right of the decimal point in a number. For example, the number 123.45 has a scale of 2."
                styles={{ m: 2 }}
              />
            )}
            {gen_opts?.includes("minDate") && (
              <DateInput
                name={namePrefix + "minDate"}
                onChange={handleChange}
                value={genOptions?.minDate}
                label={"Min Date"}
                selectTime={gen_opts?.includes("time")}
                styles={{ m: 2 }}
              />
            )}
            {gen_opts?.includes("maxDate") && (
              <DateInput
                name={namePrefix + "maxDate"}
                onChange={handleChange}
                value={genOptions?.maxDate}
                label={"Max Date"}
                selectTime={gen_opts?.includes("time")}
                styles={{ m: 2 }}
              />
            )}
            {gen_opts?.includes("minNumber") && (
              <TextInput
                name={namePrefix + "minNumber"}
                onChange={handleChange}
                value={genOptions?.minNumber}
                label={"Min Value"}
                isNumber={true}
                styles={{ m: 2 }}
              />
            )}
            {gen_opts?.includes("maxNumber") && (
              <TextInput
                name={namePrefix + "maxNumber"}
                onChange={handleChange}
                value={genOptions?.maxNumber}
                label={"Max Value"}
                isNumber={true}
                styles={{ m: 2 }}
              />
            )}
            {gen_opts?.includes("nullPercent") && (
              <TextInput
                name={namePrefix + "nullPercent"}
                onChange={handleChange}
                value={genOptions?.nullPercent}
                label={"Null Percentage"}
                isNumber={true}
                tooltip="The percentage of rows with NULL value "
                styles={{ m: 2 }}
              />
            )}
            {gen_opts?.includes("phoneFaxFormat") && (
              <TextInput
                name={namePrefix + "phoneFaxFormat"}
                onChange={handleChange}
                value={genOptions?.phoneFaxFormat}
                label={"Phone/Fax Generation Format"}
                tooltip="The format of the phone/fax number. # will be replaced with random number. For example, +61 (###) ###-####"
                styles={{ m: 2 }}
              />
            )}
            {gen_opts?.includes("wordCasing") && (
              <SelectInput
                name={namePrefix + "wordCasing"}
                onChange={handleChange}
                value={genOptions?.wordCasing}
                label={"Word Casing"}
                options={WordCasingOptions}
                styles={{ m: 2 }}
              />
            )}
          </HStack>
          {gen_opts?.includes("excluded") && (
            <ValuePoolInput
              name={namePrefix + "excluded"}
              type={type}
              excluded={genOptions?.excluded}
            />
          )}
        </VStack>
        <GenOptionsModalFooter onClose={onClose} />
      </VStack>
    </BaseModal>
  );
};

import { HStack, Text, VStack } from "@chakra-ui/react";
import { BaseTopBar } from "../BaseTopBar";
import {
  BaseModal,
  BaseModalProps,
  GenOptionsModalFooter,
} from "@/components/modal";
import { useFormikContext } from "formik";
import { Tables, WordCasing, WordCasingOptions, YesNoOptions } from "@/types";
import { TextInput, DateInput, SelectInput } from "@/components/input";
import { ValuePoolInput } from "../input/ValuePoolInput";
import { Type } from "@/types";
import { TypeProcessor } from "@/server/TypeProcessor";
import React, { useEffect, useState } from "react";
import { ErrorMessage } from "@/components/ErrorMessage";
import { useTypesContext } from "@/context";

export type GenOptionsModalProps = {
  onClose: () => void;
  tableIndex: number;
  fieldIndex: number;
} & BaseModalProps;

export const GenOptionsModal: React.FC<GenOptionsModalProps> = (props) => {
  const { onClose, tableIndex, fieldIndex, isOpen } = props;
  const { values, handleChange, setFieldValue } = useFormikContext<Tables>();
  const fieldData = values.tables[tableIndex]?.fields[fieldIndex];
  const genOptions = fieldData?.genOptions;
  const typeId = fieldData?.type;

  const [type, setType] = useState<Type | undefined>(undefined);
  const { types } = useTypesContext();
  useEffect(() => {
    if (types && typeId) {
      const type = types.find((type) => type.id === typeId);
      setType(type);
    }
  }, [types, typeId]);


  const gen_opts = type?.gen_opts;
  const namePrefix = `tables.${tableIndex}.fields.${fieldIndex}.genOptions.`;
  const typeProcessor = new TypeProcessor(type?.data_type);
  React.useEffect(() => {
    if (fieldData) {
      setFieldValue(
        namePrefix + "actualType",
        genOptions?.actualType || typeProcessor.type
      );
      setFieldValue(
        namePrefix + "maxLength",
        genOptions?.maxLength || typeProcessor.args[0]
      );
      setFieldValue(
        namePrefix + "precision",
        genOptions?.precision || typeProcessor.args[0] || 5
      );
      setFieldValue(
        namePrefix + "scale",
        genOptions?.scale || typeProcessor.args[1] || 2
      );
      setFieldValue(namePrefix + "excluded", genOptions?.excluded || []);
      setFieldValue(namePrefix + "nullPercent", genOptions?.nullPercent || 0);
      setFieldValue(
        namePrefix + "phoneFaxFormat",
        genOptions?.phoneFaxFormat || ""
      );
      setFieldValue(namePrefix + "minDate", genOptions?.minDate || "");
      setFieldValue(namePrefix + "maxDate", genOptions?.maxDate || "");
      setFieldValue(namePrefix + "minNumber", genOptions?.minNumber);
      setFieldValue(namePrefix + "maxNumber", genOptions?.maxNumber);
      setFieldValue(
        namePrefix + "minDateInclusive",
        genOptions?.minDateInclusive || false
      );
      setFieldValue(
        namePrefix + "maxDateInclusive",
        genOptions?.maxDateInclusive || false
      );
      setFieldValue(
        namePrefix + "minNumberInclusive",
        genOptions?.minNumberInclusive || false
      );
      setFieldValue(
        namePrefix + "maxNumberInclusive",
        genOptions?.maxNumberInclusive || false
      );
      setFieldValue(
        namePrefix + "wordCasing",
        genOptions?.wordCasing || WordCasing.original
      );
      setFieldValue(namePrefix + "serial", genOptions?.serial || "n");
      setFieldValue(namePrefix + "withEntity", genOptions?.withEntity || "n");
      setFieldValue(
        namePrefix + "justUsername",
        genOptions?.justUsername || "n"
      );
      setFieldValue(
        namePrefix + "divisibleBy",
        genOptions?.divisibleBy || 1
      );
    }
    //
  }, [type, gen_opts]);

  if (!fieldData) return <></>;

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
            justifyContent={"flex-start"}
            alignItems={"flex-start"}
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
                tooltip={`This is the arbitrary type that this data belongs to. In your selected format, this will be mapped to : ${typeProcessor.getSQLType(
                  values.format
                )}`}
              />
            )}
            {gen_opts?.includes("withEntity") && !type?.standalone && (
              <SelectInput
                name={namePrefix + "withEntity"}
                onChange={handleChange}
                value={genOptions?.withEntity}
                options={YesNoOptions}
                label={"With Entity"}
                styles={{ m: 2 }}
                tooltip="Certain types are grouped together in a Domain Entity. They can be generated as their individual field or generate together with other fields in their entity so that the result is more consistent and meaningful."
              />
            )}
            {gen_opts?.includes("serial") && (
              <SelectInput
                name={namePrefix + "serial"}
                onChange={handleChange}
                value={genOptions?.serial}
                options={YesNoOptions}
                label={"Serial"}
                styles={{ m: 2 }}
                tooltip="Numbers will be generated sequentially from the provided min number."
              />
            )}
            {gen_opts?.includes("maxLength") && (
              <VStack>
                <TextInput
                  name={namePrefix + "maxLength"}
                  onChange={handleChange}
                  value={genOptions?.maxLength}
                  label={"String Max Length"}
                  styles={{ m: 2 }}
                />
                <ErrorMessage
                  name={namePrefix + "maxLength"}
                  maxW={"286.5px"}
                />
              </VStack>
            )}
            {gen_opts?.includes("precision") && (
              <VStack>
                <TextInput
                  name={namePrefix + "precision"}
                  onChange={handleChange}
                  value={genOptions?.precision}
                  label={"Precision"}
                  isNumber={true}
                  tooltip="The number of digits in a number. For example, the number 123.45 has a precision of 5."
                  styles={{ m: 2 }}
                />
                <ErrorMessage
                  name={namePrefix + "precision"}
                  maxW={"286.5px"}
                />
              </VStack>
            )}
            {gen_opts?.includes("scale") && (
              <VStack>
                <TextInput
                  name={namePrefix + "scale"}
                  onChange={handleChange}
                  value={genOptions?.scale}
                  label={"Scale"}
                  isNumber={true}
                  tooltip="The number of digits to the right of the decimal point in a number. For example, the number 123.45 has a scale of 2."
                  styles={{ m: 2 }}
                />
                <ErrorMessage name={namePrefix + "scale"} maxW={"286.5px"} />
              </VStack>
            )}
            {gen_opts?.includes("minDate") && (
              <VStack>
                <DateInput
                  name={namePrefix + "minDate"}
                  onChange={handleChange}
                  value={genOptions?.minDate}
                  label={"Min Date"}
                  selectTime={gen_opts?.includes("time")}
                  styles={{ m: 2 }}
                  setFieldValue={setFieldValue}
                  inclusiveChecked={genOptions?.minDateInclusive}
                />
                <ErrorMessage name={namePrefix + "minDate"} maxW={"286.5px"} />
              </VStack>
            )}
            {gen_opts?.includes("maxDate") && (
              <VStack>
                <DateInput
                  name={namePrefix + "maxDate"}
                  onChange={handleChange}
                  value={genOptions?.maxDate}
                  label={"Max Date"}
                  selectTime={gen_opts?.includes("time")}
                  styles={{ m: 2 }}
                  setFieldValue={setFieldValue}
                  inclusiveChecked={genOptions?.maxDateInclusive}
                />
                <ErrorMessage name={namePrefix + "maxDate"} maxW={"286.5px"} />
              </VStack>
            )}
            {gen_opts?.includes("minNumber") && (
              <VStack>
                <TextInput
                  name={namePrefix + "minNumber"}
                  onChange={handleChange}
                  value={genOptions?.minNumber}
                  label={"Min Value"}
                  isNumber={true}
                  styles={{ m: 2 }}
                  inclusiveChecked={genOptions?.minNumberInclusive}
                />
                <ErrorMessage
                  name={namePrefix + "minNumber"}
                  maxW={"286.5px"}
                />
              </VStack>
            )}
            {gen_opts?.includes("maxNumber") && (
              <VStack>
                <TextInput
                  name={namePrefix + "maxNumber"}
                  onChange={handleChange}
                  value={genOptions?.maxNumber}
                  label={"Max Value"}
                  isNumber={true}
                  styles={{ m: 2 }}
                  inclusiveChecked={genOptions?.maxNumberInclusive}
                />
                <ErrorMessage
                  name={namePrefix + "maxNumber"}
                  maxW={"286.5px"}
                />
              </VStack>
            )}
            {gen_opts?.includes("divisibleBy") && (
              <VStack>
                <TextInput
                  name={namePrefix + "divisibleBy"}
                  onChange={handleChange}
                  value={genOptions?.divisibleBy}
                  label={"Divisible By"}
                  isNumber={true}
                  styles={{ m: 2 }}
                />
                <ErrorMessage
                  name={namePrefix + "divisibleBy"}
                  maxW={"286.5px"}
                />
              </VStack>
            )}
            {gen_opts?.includes("nullPercent") && (
              <VStack>
                <TextInput
                  name={namePrefix + "nullPercent"}
                  onChange={handleChange}
                  value={genOptions?.nullPercent}
                  label={"Null Percentage"}
                  isNumber={true}
                  tooltip="The percentage of rows with NULL value. For composite FK, the null percentage of that key will be the min percentage within all the columns."
                  styles={{ m: 2 }}
                />
                <ErrorMessage
                  name={namePrefix + "nullPercent"}
                  maxW={"286.5px"}
                />
              </VStack>
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
            {gen_opts?.includes("regex") && (
              <TextInput
                doubleLength={true}
                name={namePrefix + "regex"}
                onChange={handleChange}
                value={genOptions?.regex}
                label={"Regex Generation Format"}
                tooltip="The Simplified Regex format of the generated string. /d: digit, /w: alphanumeric, /W: uppercase alphanumeric, /a: alphabetic character, /A: uppercase alphabetic character, everything else means itself"
                styles={{ m: 2 }}
              />
            )}
            {gen_opts?.includes("emailDomain") && (
              <TextInput
                name={namePrefix + "emailDomain"}
                onChange={handleChange}
                value={genOptions?.emailDomain}
                label={"Email Domain"}
                tooltip="The default domain for email addresses (without the @). For example, gmail.com. If left blank, the domain will be randomly generated. If just username is selected, this field will be ignored."
                styles={{ m: 2 }}
              />
            )}
            {gen_opts?.includes("justUsername") && (
              <SelectInput
                name={namePrefix + "justUsername"}
                onChange={handleChange}
                value={genOptions?.justUsername}
                label={"Just Username"}
                tooltip="If selected, only the username part of the email address will be generated."
                options={YesNoOptions}
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

import { HStack, Text, Button, Select } from "@chakra-ui/react";
import { Format, Tables } from "@/types";
import { useFormikContext } from "formik";

export type FooterProps = {};

export const Footer: React.FC<FooterProps> = (props) => {
  const { values, handleChange } = useFormikContext<Tables>();
  const data = values.format;
  return (
    <HStack
      paddingX={8}
      paddingY={4}
      background={"surface.01"}
      width={"100vw"}
      position={"fixed"}
      bottom={0}
      left={0}
      justifyContent={"flex-end"}
      borderTop={"1px solid"}
      borderColor={"border.primary"}
    >
      <Text>Format</Text>
      <Select
        size="sm"
        fontSize="xs"
        w={"150px"}
        value={data}
        onChange={handleChange}
        name="format"
      >
        <option value={Format.MySQL}>{Format.MySQL}</option>
        <option value={Format.OracleSQL}>{Format.OracleSQL}</option>
      </Select>
      <Button minW={"75px"} size="sm" variant={"outline"}>
        <Text fontSize="xs" fontWeight={"bold"}>
          Preview
        </Text>
      </Button>
      <Button variant={"primary"} type="submit" fontWeight={"bold"}>
        Download
      </Button>
    </HStack>
  );
};

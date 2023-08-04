import {
  HStack,
  Text,
  Button,
  Select,
} from "@chakra-ui/react";

export type FooterProps = {};

export const Footer: React.FC<FooterProps> = (props) => {
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
      <Select size="sm" fontSize="xs" w={"150px"}>
        <option value="mysql">MySQL</option>
        <option value="postgresql">PostgreSQL</option>
        <option value="oraclesql">OracleSQL</option>
      </Select>
      <Button minW={"75px"} size="sm" variant={"outline"}>
        <Text fontSize="xs" fontWeight={"bold"}>
          Preview
        </Text>
      </Button>
      <Button
        minW={"75px"}
        size="sm"
        variant={"solid"}
        background={"blue.primary"}
      >
        <Text fontSize="xs" fontWeight={"bold"} color="white">
          Download
        </Text>
      </Button>
    </HStack>
  );
};

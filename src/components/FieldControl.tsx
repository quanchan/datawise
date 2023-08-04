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
export type FieldControlProps = {};

export const FieldControl: React.FC<FieldControlProps> = () => {
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
        placeholder={"Field Name"}
        value={"first_name"}
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
        First Name
      </Button>
      <FieldConstraintsControl />
      <Input
        size="sm"
        placeholder={"Default Value"}
        w={"100%"}
        backgroundColor={"surface.01"}
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
          icon={<Icon color="red" as={RiDeleteBinLine} />}
          colorScheme="white"
        />
      </Box>
    </HStack>
  );
};

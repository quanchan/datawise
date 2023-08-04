import {
  Box,
  Button,
  HStack,
  Icon,
  IconButton,
  Input,
  Text,
} from "@chakra-ui/react";
import { RiDeleteBinLine } from "react-icons/ri";
export type TableConstaintsControlProps = {};

export const TableConstaintsControl: React.FC<TableConstaintsControlProps> = () => {
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
      <Input
        size="sm"
        placeholder={"Constraint Name"}
        value={"first_name"}
        flex={2}
        backgroundColor={"surface.01"}
      />
      <Input
        size="sm"
        placeholder={"Condition"}
        value={"model_year > 2000 OR make = “Super Durable”"}
        flex={5}
        backgroundColor={"surface.01"}
      />
      <Button
        size="sm"
        variant={"ghost"}
      >
        <Text fontSize="xs" color="blue.primary">
          Edit
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

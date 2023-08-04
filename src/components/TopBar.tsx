import { HStack, Heading, IconButton, Icon } from "@chakra-ui/react";
import { AiOutlineMenu } from "react-icons/ai";

export type TopBarProps = {
  heading: string;
};

export const TopBar: React.FC<TopBarProps> = (props) => {
  const { heading } = props;
  return (
    <HStack
      paddingX={8}
      paddingY={4}
      background={"blue.primary"}
      width={"100vw"}
      justifyContent={"space-between"}
    >
      <Heading as="h1" size="md" noOfLines={1} color={"white"}>
        {heading}
      </Heading>
      <IconButton
        aria-label="Menu"
        fontSize={"xl"}
        icon={<Icon as={AiOutlineMenu} />}
        colorScheme="white"
      />
    </HStack>
  );
};

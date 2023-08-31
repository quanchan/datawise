import { HStack, Heading } from "@chakra-ui/react";
export type BaseTopBarProps = {
  heading: string;
};

export const BaseTopBar: React.FC<BaseTopBarProps> = (props) => {
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
      <></>
    </HStack>
  );
};

import { HStack } from "@chakra-ui/react";

export type BaseFooterProps = {
  children?: React.ReactNode;
  styles?: Record<string, any>; 
};

export const BaseFooter: React.FC<BaseFooterProps> = (props) => {
  const { children, styles } = props;

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
      borderTop={"2px solid"}
      borderColor={"border.primary"}
      {...styles}
    >
      {children}
    </HStack>
  );
}
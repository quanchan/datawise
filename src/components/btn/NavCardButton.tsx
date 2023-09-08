import React, { ReactNode } from "react";
import {
  Card,
  CardBody,
  CardHeader,
  Heading,
} from "@chakra-ui/react";

export type NavCardButtonProps = {
  children?: ReactNode;
  header: string;
  onClick?: () => void;
};

export const NavCardButton: React.FC<NavCardButtonProps> = (props) => {
  const { children, header, onClick } = props;
  return (
    <Card w={"400px"}>
      <CardHeader m={8} p={0} textAlign={"left"}>
        <Heading as="h3" size="md" noOfLines={1}>
          {header}
        </Heading>
      </CardHeader>
      <CardBody
        m={8}
        mt={0}
        p={0}
        border={"1px dashed #0093FA"}
        borderRadius={4}
        minHeight={40}
        display={"flex"}
        justifyContent={"center"}
        alignItems={"center"}
        backgroundColor={"surface.02"}
        _hover={{
          backgroundColor: "blue.01",
        }}
        onClick={onClick}
      >
        {children}
      </CardBody>
    </Card>
  );
};

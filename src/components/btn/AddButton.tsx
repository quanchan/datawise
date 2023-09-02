import { Button, Icon } from "@chakra-ui/react";
import { ReactNode } from "react";
import { FiPlusCircle } from "react-icons/fi";

export type AddButtonProps = {
  children?: ReactNode;
  onClick?: () => void;
};

export const AddButton: React.FC<AddButtonProps> = (props) => {
  const { children, onClick } = props;
  return (
    <Button
      padding={4}
      size="xs"
      justifyContent={"space-between"}
      variant={"outline"}
      fontWeight={"bold"}
      color={"text.secondary"}
      onClick={onClick}
      leftIcon={
        <Icon as={FiPlusCircle} fontSize={"md"} color={"blue.primary"} />
      }
    >
      {children}
    </Button>
  );
};

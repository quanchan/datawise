import { Button, HStack } from "@chakra-ui/react";

export type ConstraintEditorModalFooterProps = {
  onClose: () => void;
};

export const ConstraintEditorModalFooter: React.FC<
  ConstraintEditorModalFooterProps
> = (props) => {
  const { onClose } = props;

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
      <Button variant={"primary"} onClick={onClose} fontWeight={"bold"}>
        Save
      </Button>
    </HStack>
  );
};

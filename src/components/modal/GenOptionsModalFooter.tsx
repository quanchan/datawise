import { Button, Text } from "@chakra-ui/react";
import { BaseFooter } from "@/components/BaseFooter";

export type GenOptionsModalFooterProps = {
  onClose: () => void;
};

export const GenOptionsModalFooter: React.FC<
  GenOptionsModalFooterProps
> = (props) => {
  const { onClose } = props;

  return (
    <BaseFooter>
      <Text as="i" mr={4} color={"text.secondary"}>
        Note: The options in here will vary for the type you choose and will not be saved into your sql schema (except actual type)
      </Text>
      <Button variant={"primary"} onClick={onClose} fontWeight={"bold"}>
        Save
      </Button>
    </BaseFooter>
  );
};

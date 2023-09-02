import { Button } from "@chakra-ui/react";
import { BaseFooter } from "@/components/BaseFooter";

export type ConstraintModalFooterProps = {
  onClose: () => void;
};

export const ConstraintModalFooter: React.FC<
  ConstraintModalFooterProps
> = (props) => {
  const { onClose } = props;

  return (
    <BaseFooter>
      <Button variant={"primary"} onClick={onClose} fontWeight={"bold"}>
        Save
      </Button>
    </BaseFooter>
  );
};

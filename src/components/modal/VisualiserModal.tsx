import { Button } from "@chakra-ui/react";
import { BaseModal, BaseModalProps } from "./BaseModal";

export type VisualiserModalProps = {

} & BaseModalProps;

export const VisualiserModal: React.FC<VisualiserModalProps> = (props) => {
  const { isOpen, onClose, size } = props;

  return (
    <BaseModal
      isOpen={isOpen}
      onClose={onClose}
      size={size}
    >
      <Button onClick={onClose}>Close</Button>
    </BaseModal>
  )
}
import { Button, ModalBody, ModalFooter, ModalHeader, Text } from "@chakra-ui/react";
import { BaseModal, BaseModalProps } from "./BaseModal";

export type ConfirmDeleteModalProps = {
  onRemove: () => void;
  entity: string;
} & BaseModalProps;

export const ConfirmDeleteModal: React.FC<ConfirmDeleteModalProps> = (
  props
) => {
  const { isOpen, onClose, onRemove, entity } = props;

  return (
    <BaseModal isOpen={isOpen} onClose={onClose} size={"sm"}>
      <ModalHeader>Confirm {entity[0].toUpperCase() + entity.substring(1)} Deletion</ModalHeader>
      <ModalBody>
        <Text>
          Are you sure you want to delete this {entity}? This action cannot be
          undone. All data in this {entity} will be lost.
        </Text>
      </ModalBody>
      <ModalFooter>
        <Button
          variant={"basic"}
          bg="gray.02"
          mr={4}
          onClick={onClose}
        >
          Cancel
        </Button>
        <Button
          variant={"primary"}
          onClick={() => {
            onRemove();
            onClose();
          }}
        >
          Confirm
        </Button>
      </ModalFooter>
    </BaseModal>
  );
};

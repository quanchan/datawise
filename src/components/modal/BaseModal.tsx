import { Modal, ModalContent, ModalOverlay, ResponsiveValue } from "@chakra-ui/react";

export type BaseModalProps = {
  isOpen: boolean;
  onClose: () => void;
  size?: ResponsiveValue<"full" | (string & {}) | "sm" | "md" | "lg" | "xl" | "2xl" | "3xl" | "xs" | "4xl" | "5xl" | "6xl">;
  children?: React.ReactNode;
}

export const BaseModal: React.FC<BaseModalProps> = (props) => {
  const { isOpen, onClose, size, children } = props;
  return (
    <Modal
    isOpen={isOpen}
    onClose={onClose}
    size={size || "full"}
  >
    <ModalOverlay />
    <ModalContent overflowX={"hidden"}>
      {children}
    </ModalContent>
  </Modal>
  )

}
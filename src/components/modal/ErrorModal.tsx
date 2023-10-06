import { useFormikContext } from "formik";
import { BaseModal, BaseModalProps } from "./BaseModal";
import { Tables } from "@/types";
import { Button, ModalBody, ModalFooter, ModalHeader } from "@chakra-ui/react";
import React, { useEffect } from "react";

export type ErrorModalProps = {} & BaseModalProps;

export const ErrorModal: React.FC<ErrorModalProps> = (props) => {
  const { isOpen, onClose } = props;
  const { errors } = useFormikContext<Tables>();

  return (
    <BaseModal isOpen={isOpen} onClose={onClose} size={"2xl"} >
      <ModalHeader color={"red"}>
        There is something wrong with your schema
      </ModalHeader>
      <ModalBody overflowX={"auto"}>
        <pre>{JSON.stringify(errors, null, 2)}</pre>
      </ModalBody>
      <ModalFooter>
        <Button variant={"primary"} onClick={onClose}>
          Close
        </Button>
      </ModalFooter>
    </BaseModal>
  );
};

import { useFormikContext } from "formik";
import { BaseModal, BaseModalProps } from "./BaseModal";
import { Tables } from "@/types";
import axios from "axios";
import { useMutation } from "@tanstack/react-query";
import {
  Box,
  Button,
  ModalBody,
  ModalFooter,
  ModalHeader,
} from "@chakra-ui/react";
import React, { useEffect } from "react";

export type PreviewSQLModalProps = {} & BaseModalProps;

export const PreviewSQLModal: React.FC<PreviewSQLModalProps> = (props) => {
  const { isOpen, onClose } = props;
  const { values } = useFormikContext<Tables>();
  const [data, setData] = React.useState("");
  const previewMutation = useMutation(
    () => axios.post("/api/schema", values).then((res) => res.data),
    {
      onSuccess: (data) => setData(data),
    }
  );

  useEffect(() => {
    if (isOpen) {
      previewMutation.mutateAsync();
    }
  }, [isOpen]);

  return (
    <BaseModal isOpen={isOpen} onClose={onClose} size={"6xl"}>
      <ModalHeader>SQL Preview</ModalHeader>
      <ModalBody
        whiteSpace={"pre"}
        fontWeight={"semibold"}
        fontFamily={
          "Consolas,Monaco,Lucida Console,Liberation Mono,DejaVu Sans Mono,Bitstream Vera Sans Mono,Courier New"
        }
      >
        {data}
      </ModalBody>
      <ModalFooter>
        <Button variant={"primary"} onClick={onClose}>
          Close
        </Button>
      </ModalFooter>
    </BaseModal>
  );
};

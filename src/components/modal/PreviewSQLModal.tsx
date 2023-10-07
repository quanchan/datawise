import { useFormikContext } from "formik";
import { BaseModal, BaseModalProps } from "./BaseModal";
import { Tables } from "@/types";
import axios from "axios";
import { useMutation } from "@tanstack/react-query";
import {
  Button,
  ModalBody,
  ModalHeader,
} from "@chakra-ui/react";
import React, { useEffect } from "react";
import { BaseFooter } from "../BaseFooter";

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
      console.log("form values", values)
      previewMutation.mutateAsync();
    }
  }, [isOpen]);

  const downloadSQL = () => {
    // Create a Blob containing the SQL content
    const blob = new Blob([data], { type: "application/sql" });

    // Create a URL for the Blob
    const url = URL.createObjectURL(blob);

    // Create a temporary anchor element
    const a = document.createElement("a");
    a.href = url;
    a.download = "schema.sql";

    // Trigger a click event on the anchor to initiate the download
    a.click();

    // Clean up by revoking the Blob URL
    URL.revokeObjectURL(url);
  };

  return (
    <BaseModal isOpen={isOpen} onClose={onClose}>
      <ModalHeader>SQL Preview</ModalHeader>
      <ModalBody
        whiteSpace={"pre"}
        fontWeight={"semibold"}
        fontFamily={
          "Consolas,Monaco,Lucida Console,Liberation Mono,DejaVu Sans Mono,Bitstream Vera Sans Mono,Courier New"
        }
        fontSize={"xs"}
        mb={"65px"}
      >
        {data}
      </ModalBody>
      <BaseFooter>
        <Button variant={"primary"} onClick={downloadSQL}>
          Download
        </Button>
        <Button variant={"primary"} onClick={onClose}>
          Close
        </Button>
      </BaseFooter>
    </BaseModal>
  );
};

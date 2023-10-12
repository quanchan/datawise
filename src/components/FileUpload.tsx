import { useDefaultSchemaContext } from "@/context";
import { Text } from "@chakra-ui/react";
import { useRouter } from "next/router";
import React, { useState } from "react";

export const FileUpload: React.FC = () => {
  const router = useRouter();
  const { setDefaultSchema } = useDefaultSchemaContext();
  const [dragging, setDragging] = useState(false);

  const handleDragEnter = (e: React.DragEvent<HTMLLabelElement>) => {
    e.preventDefault();
    setDragging(true);
  };

  const handleDragLeave = (e: React.DragEvent<HTMLLabelElement>) => {
    e.preventDefault();
    setDragging(false);
  };

  const handleDragOver = (e: React.DragEvent<HTMLLabelElement>) => {
    e.preventDefault();
  };

  const handleDrop = (e: React.DragEvent<HTMLLabelElement>) => {
    e.preventDefault();
    setDragging(false);

    const file = e.dataTransfer.files[0];
    handleFileUpload(file);
  };

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    if (!e.target.files) return;
    const file = e.target.files[0];
    handleFileUpload(file);
  };

  const handleFileUpload = async (file: File) => {
    if (file) {
      const content = await file.text();
      try {
        const json = JSON.parse(content);
        setDefaultSchema(json);
        router.push("/home");
      } catch (e) {
        alert("Invalid JSON file");
      } 
    }
  };

  return (
    <label
      htmlFor="file-input"
      style={{
        width: "100%",
        minHeight: "10em",
        justifyContent: "center",
        alignItems: "center",
        padding: "2em",
        display: "flex",
      }}
      onDragEnter={handleDragEnter}
      onDragLeave={handleDragLeave}
      onDragOver={handleDragOver}
      onDrop={handleDrop}
    >
      <Text color={"blue.primary"}>Click here or Drop a file</Text>
      <input
        type="file"
        accept=".json"
        style={{ display: "none" }}
        onChange={handleFileChange}
        id="file-input"
      />
    </label>
  );
};

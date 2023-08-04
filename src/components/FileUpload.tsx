import { Text } from "@chakra-ui/react";
import React, { useState } from "react";

export const FileUpload: React.FC = () => {
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

  const handleFileUpload = (file: File) => {
    console.log("Uploaded file:", file);
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
        accept=".sql"
        style={{ display: "none" }}
        onChange={handleFileChange}
        id="file-input"
      />
    </label>
  );
};

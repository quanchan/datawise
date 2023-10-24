import {
  Box,
  Divider,
  HStack,
  Input,
  Stack,
  Text,
  VStack,
  useDisclosure,
} from "@chakra-ui/react";
import { FieldControl } from "./FieldControl";
import { ArrayHelpers, FieldArray, useFormikContext } from "formik";
import { Tables, defaultField } from "@/types";
import { AddButton } from "./btn/AddButton";
import React from "react";
import { ConfirmDeleteModal } from "./modal/ConfirmDeleteModal";
import {
  DragDropContext,
  Droppable,
  OnDragEndResponder,
} from "react-beautiful-dnd";
import { ErrorMessage } from "./ErrorMessage";

export type TableFieldsEditorProps = {
  tableIndex: number;
  onChooseType: (index: number) => void;
  onEditOptions: (index: number) => void;
  currentTable: number;
};

export const TableFieldsEditor: React.FC<TableFieldsEditorProps> = (props) => {
  const { tableIndex, onChooseType, onEditOptions, currentTable } = props;
  const { values, handleChange, setFieldValue } = useFormikContext<Tables>();
  const data = values.tables[tableIndex];

  const { isOpen, onOpen, onClose } = useDisclosure();
  const [currentFieldIndex, setCurrentFieldIndex] = React.useState<number>(0);

  const [removeField, setRemoveField] =
    React.useState<ArrayHelpers["remove"]>();

  if (tableIndex !== currentTable) return <></>;

  const openRemoveFieldModal = (
    fieldIndex: number,
    remove: ArrayHelpers["remove"]
  ) => {
    setCurrentFieldIndex(fieldIndex);
    setRemoveField(() => remove);
    onOpen();
  };

  const onDragEnd: OnDragEndResponder = (result) => {
    const { source, destination } = result;
    if (!destination) return;
    if (
      source.index === destination.index &&
      source.droppableId === destination.droppableId
    )
      return;
    const fields = [...data.fields];
    fields.splice(source.index, 1);
    fields.splice(destination.index, 0, data.fields[source.index]);
    setFieldValue(`tables.${tableIndex}.fields`, fields);
  };
  return (
    <>
      <Stack
        overflowX={{ base: "scroll", lg: "hidden" }}
        display={"flex"}
        spacing={4}
        border={"2px solid"}
        borderColor={"border.primary"}
        p={4}
        borderRadius={8}
      >
        <VStack
          spacing={1}
          alignItems={"flex-start"}
          padding={4}
          width={"100%"}
        >
          <HStack fontSize={"sm"} alignSelf={"flex-start"}>
            <HStack spacing={3}>
              <Text>Table Name</Text>
              <Input
                name={`tables.${tableIndex}.name`}
                onChange={handleChange}
                value={data.name}
                fontSize={"sm"}
                w={"300px"}
                py={1}
                h={"auto"}
              />
              <Text>Row Quantity</Text>
              <Input
                name={`tables.${tableIndex}.rowQuantity`}
                onChange={handleChange}
                value={data.rowQuantity}
                p={0}
                fontSize={"sm"}
                w={"75px"}
                textAlign={"center"}
                type="number"
                py={1}
                h={"auto"}
              />
            </HStack>
            <Box></Box>
          </HStack>
          <ErrorMessage name={`tables.${tableIndex}.name`} />
          <ErrorMessage name={`tables.${tableIndex}.rowQuantity`} />
        </VStack>
        <Divider
          orientation="horizontal"
          color={"border.primary"}
          opacity={1}
          my={0}
          borderWidth={1}
          w={"100%"}
        />
        <HStack pl={12} fontWeight={"semibold"} minW={"4xl"}>
          <Text flex={{ base: 2, lg: 3, xl: 4 }}>Field Name</Text>
          <Text flex={{ base: 2, lg: 3, xl: 4 }}>Type</Text>
          <Text flex={{ base: 3, lg: 3, xl: 4 }}>Constraints</Text>
          <Text flex={{ base: 2, lg: 3, xl: 4 }}>Default</Text>
          <Text flex={2}>Generation Options</Text>
        </HStack>
        <Divider
          orientation="horizontal"
          color={"border.primary"}
          opacity={1}
          my={0}
          borderWidth={1}
          w={"100%"}
        />
        <DragDropContext onDragEnd={onDragEnd}>
          <Droppable droppableId={"table-" + tableIndex}>
            {(provided) => (
              <div {...provided.droppableProps} ref={provided.innerRef}>
                <FieldArray name={`tables.${tableIndex}.fields`}>
                  {({ remove, push }: ArrayHelpers) => (
                    <Stack spacing={4}>
                      {data.fields.map((f, i) => (
                        <FieldControl
                          key={i}
                          onRemove={() => openRemoveFieldModal(i, remove)}
                          fieldIndex={i}
                          tableIndex={tableIndex}
                          onChooseType={onChooseType}
                          onEditOptions={onEditOptions}
                        />
                      ))}
                      {provided.placeholder}
                      <Box textAlign={"left"}>
                        <AddButton
                          onClick={() => {
                            push({
                              ...defaultField,
                              name: `field_${data.fields.length + 1}`,
                            });
                          }}
                        >
                          Add Field
                        </AddButton>
                      </Box>
                    </Stack>
                  )}
                </FieldArray>
              </div>
            )}
          </Droppable>
        </DragDropContext>
      </Stack>
      <ConfirmDeleteModal
        isOpen={isOpen}
        onClose={onClose}
        onRemove={() => {
          removeField && removeField(currentFieldIndex);
        }}
        entity={"field"}
      />
    </>
  );
};

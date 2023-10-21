import {
  Box,
  Divider,
  HStack,
  Heading,
  Stack,
  Text,
  useDisclosure,
} from "@chakra-ui/react";
import { TableConstraintControl } from "./TableConstraintControl";
import { AddButton } from "./btn/AddButton";
import { ArrayHelpers, FieldArray, useFormikContext } from "formik";
import { Tables, defaultTableConstraints } from "@/types";
import React from "react";
import { ConfirmDeleteModal } from "./modal/ConfirmDeleteModal";
import {
  DragDropContext,
  Droppable,
  OnDragEndResponder,
} from "react-beautiful-dnd";

export type TableConstraintsEditorProps = {
  tableIndex: number;
  onEditConstraint: (index: number) => void;
  currentTable: number;
};

export const TableConstraintsEditor: React.FC<TableConstraintsEditorProps> = (
  props
) => {
  const { tableIndex, onEditConstraint, currentTable } = props;
  const { values, setFieldValue } = useFormikContext<Tables>();
  const data = values.tables[tableIndex]?.constraints;

  const { isOpen, onOpen, onClose } = useDisclosure();
  const [currentConstraintIndex, setCurrentConstraintIndex] =
    React.useState<number>(0);
  const [removeField, setRemoveField] =
    React.useState<ArrayHelpers["remove"]>();

  if (tableIndex !== currentTable) return <></>;
    
  const openRemoveConstraintModal = (
    index: number,
    remove: ArrayHelpers["remove"]
  ) => {
    setCurrentConstraintIndex(index);
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
    const constraints = [...data];
    constraints.splice(source.index, 1);
    constraints.splice(destination.index, 0, data[source.index]);
    setFieldValue(`tables.${tableIndex}.constraints`, constraints);
  };

  if (!data) return <></>;

  return (
    <>
      <Stack
        overflowX={{ base: "scroll", lg: "hidden" }}
        display={"flex"}
        spacing={4}
        border={"2px solid"}
        borderColor={"border.primary"}
        p={4}
        mt={4}
        borderRadius={8}
      >
        <Heading
          as="h3"
          size="sm"
          noOfLines={1}
          color={"text.primary"}
          fontWeight={"normal"}
          textAlign={"left"}
        >
          Table-wide Constraints
        </Heading>
        <Divider
          orientation="horizontal"
          color={"border.primary"}
          opacity={1}
          my={0}
          borderWidth={1}
          w={"100%"}
        />
        <HStack pl={12} fontWeight={"semibold"} minW={"4xl"}>
          <Text flex={{ base: 2, lg: 2, xl: 2 }}>Constraint Name</Text>
          <Text flex={{ base: 5, lg: 5, xl: 5 }}>Condition</Text>
          <Text flex={{ base: 1, lg: 1, xl: 1 }}>Actions</Text>
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
          <Droppable droppableId={"tableConstraints-" + tableIndex}>
            {(provided) => (
              <div {...provided.droppableProps} ref={provided.innerRef}>
                <FieldArray name={`tables.${tableIndex}.constraints`}>
                  {({ remove, push }: ArrayHelpers) => (
                    <Stack spacing={4}>
                      {data.map((_, i) => (
                        <TableConstraintControl
                          key={i}
                          onRemove={() => openRemoveConstraintModal(i, remove)}
                          tableIndex={tableIndex}
                          constraintIndex={i}
                          onEditConstraint={onEditConstraint}
                        />
                      ))}
                      {provided.placeholder}
                      <Box textAlign={"left"}>
                        <AddButton
                          onClick={() => {
                            push({
                              ...defaultTableConstraints,
                              name: `constraint_${data.length + 1}`,
                            });
                          }}
                        >
                          Add Constraint
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
          removeField && removeField(currentConstraintIndex);
        }}
        entity={"constraint"}
      />
    </>
  );
};

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
import {
  ArrayHelpers,
  ErrorMessage,
  FieldArray,
  useFormikContext,
} from "formik";
import { Tables, defaultTableConstraints } from "@/types";
import React from "react";
import { ConfirmDeleteModal } from "./modal/ConfirmDeleteModal";

export type TableConstraintsEditorProps = {
  tableIndex: number;
  onEditConstraint: (index: number) => void;
};

export const TableConstraintsEditor: React.FC<TableConstraintsEditorProps> = (
  props
) => {
  const { tableIndex, onEditConstraint } = props;
  const { values, handleChange, errors } = useFormikContext<Tables>();
  const data = values.tables[tableIndex].constraints;

  const { isOpen, onOpen, onClose } = useDisclosure();
  const [currentConstraintIndex, setCurrentConstraintIndex] =
    React.useState<number>(0);
  const [removeField, setRemoveField] =
    React.useState<ArrayHelpers["remove"]>();

  const openRemoveConstraintModal = (
    index: number,
    remove: ArrayHelpers["remove"]
  ) => {
    setCurrentConstraintIndex(index);
    setRemoveField(() => remove);
    onOpen();
  };

  return (
    <>
      <Stack
        overflowX={{ base: "scroll", lg: "hidden" }}
        display={"flex"}
        spacing={4}
        border={"1px solid"}
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
          borderWidth={0.5}
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
          borderWidth={0.5}
          w={"100%"}
        />
        <FieldArray name={`tables.${tableIndex}.constraints`}>
          {({ remove, push }: ArrayHelpers) => (
            <>
              {data.map((constraint, i) => (
                <TableConstraintControl
                  key={i}
                  onRemove={() => openRemoveConstraintModal(i, remove)}
                  tableIndex={tableIndex}
                  constraintIndex={i}
                  onEditConstraint={onEditConstraint}
                />
              ))}
              <Box textAlign={"left"}>
                <AddButton
                  onClick={() => {
                    push({
                      ...defaultTableConstraints,
                      name: `Constraint_${data.length + 1}`,
                    });
                  }}
                >
                  Add Constraint
                </AddButton>
              </Box>
            </>
          )}
        </FieldArray>
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
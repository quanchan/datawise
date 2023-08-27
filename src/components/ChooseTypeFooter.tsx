import { Type } from "@/types/type";
import {
  Box,
  Button,
  Checkbox,
  HStack,
  Stack,
  Text,
  Tooltip,
} from "@chakra-ui/react";
import { useMemo } from "react";

export type ChooseTypeFooterProps = {
  selection: Type;
  onClose: () => void;
};

function getSelectionText(selection: Type) {
  if (selection) {
    let entity = selection.entityDisplayName;
    if (selection.standalone) {
      entity = "Standalone";
    }
    if (selection.custom) {
      entity = "Custom";
    }

    return `${entity} / ${selection.displayName}`;
  }
  return "None";
}

export const ChooseTypeFooter: React.FC<ChooseTypeFooterProps> = (props) => {
  const { selection, onClose } = props;
  const selectionText = useMemo(() => getSelectionText(selection), [selection]);
  return (
    <HStack
      paddingX={8}
      paddingY={4}
      background={"surface.01"}
      width={"100vw"}
      position={"fixed"}
      bottom={0}
      left={0}
      justifyContent={"space-between"}
      borderTop={"1px solid"}
      borderColor={"border.primary"}
    >
      <Text fontWeight={"bold"}>
        Currently selected:{" "}
        <Text as="i" fontWeight={"normal"}>
          {selectionText}
        </Text>
      </Text>
      <HStack spacing={4}>
        <Tooltip
          label="Certain type are grouped together in a Domain Entity. They can be generated as their individual field or generate together with other fields so that the result is more consistent and meaningful. 
i.e Name: John, Age: 16, Occupation: Student, Gender: Male"
        >
          <span>
            <Checkbox>
              Generate as a collective with others columns in the same Entity
            </Checkbox>
          </span>
        </Tooltip>
        <Button variant={"primary"} onClick={() => onClose()} fontWeight={"bold"}>
          Save
        </Button>
      </HStack>
    </HStack>
  );
};

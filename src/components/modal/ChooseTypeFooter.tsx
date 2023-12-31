import { Type } from "@/types";
import { Button, Checkbox, HStack, Text, Tooltip } from "@chakra-ui/react";
import { useMemo } from "react";
import { BaseFooter } from "@/components/BaseFooter";

export type ChooseTypeFooterProps = {
  selection?: Type;
  onClose: (selected: string) => void;
  onSave: () => void;
};

function getSelectionText(selection?: Type) {
  if (selection) {
    let entity = selection.entity_display_name;
    if (selection.standalone) {
      entity = "Standalone";
    }
    if (selection.custom) {
      entity = "Custom";
    }

    return `${entity} / ${selection.display_name}`;
  }
  return "None";
}

export const ChooseTypeFooter: React.FC<ChooseTypeFooterProps> = (props) => {
  const { selection, onClose, onSave } = props;
  const selectionText = useMemo(() => getSelectionText(selection), [selection]);
  return (
    <BaseFooter
      styles={{
        justifyContent: "space-between",
      }}
    >
      <Text fontWeight={"bold"}>
        Currently selected:{" "}
        <Text as="i" fontWeight={"normal"}>
          {selectionText}
        </Text>
      </Text>
      <HStack spacing={4}>
        <Button
          variant={"outlinedBasic"}
          onClick={() => onClose("")}
        >
          Cancel
        </Button>
        <Button
          variant={"primary"}
          onClick={() => onSave()}
          fontWeight={"bold"}
        >
          Save
        </Button>
      </HStack>
    </BaseFooter>
  );
};

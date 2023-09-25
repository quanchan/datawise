import { Checkbox, HStack, Icon, Text, Tooltip } from "@chakra-ui/react";
import { ChangeEvent } from "react";
import { BiInfoCircle } from "react-icons/bi";

export type InputLabelProps = {
  name?: string;
  label?: string;
  onChange?: (e: ChangeEvent<any>) => void;
  inclusiveChecked?: boolean;
  tooltip?: string;
};

export const InputLabel: React.FC<InputLabelProps> = (props) => {
  const { name, label, onChange, inclusiveChecked, tooltip } = props;
  return (
    <HStack mb={2} justifyContent={"space-between"} maxWidth={"286.5px"}>
      <Text
        fontWeight={"semibold"}
        fontSize={"md"}
        maxWidth={"286.5px"}
        overflow={"hidden"}
        textOverflow={"ellipsis"}
        whiteSpace={"nowrap"}
      >
        {tooltip && (
          <Tooltip display={"inline"} label={tooltip} fontSize={"md"}>
            <span style={{ verticalAlign: "text-top" }}>
              <Icon as={BiInfoCircle} mr={1} />
            </span>
          </Tooltip>
        )}
        {label}
      </Text>
      {inclusiveChecked !== undefined && (
        <Checkbox
          flexDirection={"row-reverse"}
          isChecked={inclusiveChecked}
          onChange={onChange}
          name={name + "Inclusive"}
        >
          <Text color={"text.secondary"} fontSize={"sm"} mr={2}>
            Inclusive
          </Text>
        </Checkbox>
      )}
    </HStack>
  );
};

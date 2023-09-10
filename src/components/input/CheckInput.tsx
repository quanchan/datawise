import { Box, Checkbox } from "@chakra-ui/react";
import { InputLabel, InputLabelProps } from "./InputLabel";

export type CheckInputProps = {
  value?: boolean;
  styles?: Record<string, any>;
} & InputLabelProps;

export const TextInput: React.FC<CheckInputProps> = (props) => {
  const {
    name,
    label,
    onChange,
    tooltip,
    value,
    styles,
  } = props;

  return (
    <Box {...styles}>
      <InputLabel
        name={name}
        label={label}
        onChange={onChange}
        tooltip={tooltip}
      />
      <Checkbox checked={value} onChange={onChange} name={name}></Checkbox>
    </Box>
  );
};

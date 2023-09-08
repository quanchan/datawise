import { Box, Input } from "@chakra-ui/react";
import { InputLabel, InputLabelProps } from "./InputLabel";

export type TextInputProps = {
  isNumber?: boolean;
  value?: string | number;
  placeholder?: string;
  disabled?: boolean;
} & InputLabelProps;

export const TextInput: React.FC<TextInputProps> = (props) => {
  const {
    name,
    label,
    onChange,
    inclusiveChecked,
    tooltip,
    value,
    placeholder,
    isNumber,
    disabled
  } = props;

  return (
    <Box m={2}>
      <InputLabel
        name={name}
        label={label}
        onChange={onChange}
        inclusiveChecked={inclusiveChecked}
        tooltip={tooltip}
      />
      <Input
        variant={"outline"}
        type={isNumber ? "number" : "text"}
        value={value}
        onChange={onChange}
        name={name}
        placeholder={placeholder}
        disabled={disabled}
      />
    </Box>
  );
};

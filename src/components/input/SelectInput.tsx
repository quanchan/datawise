import { Box, Select } from "@chakra-ui/react";
import { InputLabel, InputLabelProps } from "./InputLabel";

export type Option = {
  value: string | number;
  label: string;
}
export type SelectInputProps = {
  value?: string | number;
  options?: Option[];
  styles?: Record<string, any>;
} & InputLabelProps;

export const SelectInput: React.FC<SelectInputProps> = (props) => {
  const {
    name,
    label,
    onChange,
    inclusiveChecked,
    tooltip,
    value,
    options,
    styles
  } = props;

  return (
    <Box {...styles}>
      <InputLabel
        name={name}
        label={label}
        onChange={onChange}
        inclusiveChecked={inclusiveChecked}
        tooltip={tooltip}
      />
      <Select
        width="286.5px"
        value={value}
        onChange={onChange}
        name={name}
      >
        {options?.map((option) => (
          <option key={option.value} value={option.value}>{option.label}</option>
        ))}
      </Select>
    </Box>
  );
};

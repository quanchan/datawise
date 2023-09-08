import { Box, Select } from "@chakra-ui/react";
import { InputLabel, InputLabelProps } from "./InputLabel";

export type SelectInputProps = {
  value: string | number;
  options: string[];
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
      <Select
        width="286.5px"
        value={value}
        onChange={onChange}
        name={name}
      >
        {options?.map((option) => (
          <option key={option} value={option}>{option}</option>
        ))}
      </Select>
    </Box>
  );
};

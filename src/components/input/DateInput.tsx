import { Box } from "@chakra-ui/react";
import { InputLabel, InputLabelProps } from "./InputLabel";
import { DatePickerInput } from "@/components/DatePicker";

export type DateInputProps = {
  isNumber?: boolean;
  value: string | number;
} & InputLabelProps;

export const DateInput: React.FC<DateInputProps> = (props) => {
  const {
    name,
    label,
    onChange,
    inclusiveChecked,
    tooltip,
    value,
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
      <DatePickerInput
        showTimeSelector={true}
        currentLangKey="en"
        format="DD-MM-YYYY HH:mm:ss"
      />
    </Box>
  );
};
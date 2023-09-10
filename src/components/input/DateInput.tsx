import { Box } from "@chakra-ui/react";
import { InputLabel, InputLabelProps } from "./InputLabel";
import { DatePickerInput } from "@/components/DatePicker";

export type DateInputProps = {
  isNumber?: boolean;
  value?: Date;
  selectTime?: boolean;
  styles?: Record<string, any>;
} & InputLabelProps;

export const DateInput: React.FC<DateInputProps> = (props) => {
  const {
    name,
    label,
    onChange,
    inclusiveChecked,
    tooltip,
    selectTime,
    value,
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
      <DatePickerInput
        showTimeSelector={selectTime}
        currentLangKey="en"
        format={selectTime ? "DD-MM-YYYY HH:mm:ss" : "DD-MM-YYYY"}
      />
    </Box>
  );
};
import { Box } from "@chakra-ui/react";
import { InputLabel, InputLabelProps } from "./InputLabel";
import { DatePickerInput } from "@/components/DatePicker";
import { FormikErrors } from "formik";
import { Tables } from "@/types";

export type DateInputProps = {
  isNumber?: boolean;
value?: string;
  selectTime?: boolean;
  styles?: Record<string, any>;
  setFieldValue: (field: string, value: any, shouldValidate?: boolean | undefined) => Promise<void | FormikErrors<Tables>>;
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
    styles,
    setFieldValue
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
        value={value}
        format={selectTime ? "YYYY-MM-DD HH:mm:ss" : "YYYY-MMM-DD"}
        onChange={(date) => setFieldValue(name || "", date)}
      />
    </Box>
  );
};
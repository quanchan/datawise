import { Text } from "@chakra-ui/react";
import { ErrorMessage as FErrorMessage, type ErrorMessageProps as FErrorMessageProps } from "formik";

export type ErrorMessageProps = {
  maxW?: string;
} & FErrorMessageProps

export const ErrorMessage: React.FC<ErrorMessageProps> = (props) => {
  const {name, maxW} = props;
  return (
    <FErrorMessage
      name={name}
      component={Text}
      // @ts-ignore
      color={"red.500"}
      maxW={maxW}
    />

  );
}
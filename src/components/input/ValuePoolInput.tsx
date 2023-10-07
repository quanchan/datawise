import { Box, Button, HStack, Icon, VStack } from "@chakra-ui/react";
import { InputLabel, InputLabelProps } from "./InputLabel";
import React, { useState } from "react";
import { HiArrowNarrowRight, HiArrowNarrowLeft } from "react-icons/hi";
import { useQuery } from "@tanstack/react-query";
import axios from "axios";
import { Tables, Type } from "@/types";
import { useFormikContext } from "formik";
export type ValuePoolInputProps = {
  type?: Type;
  excluded?: (string | number)[];
} & InputLabelProps;

export const ValuePoolInput: React.FC<ValuePoolInputProps> = (
  props: ValuePoolInputProps
) => {
  const { setFieldValue } = useFormikContext<Tables>();
  const { name, type, excluded } = props;
  const { data } = useQuery<(string | number)[]>({
    queryKey: [`values${type?.column_name}`],
    queryFn: () =>
      axios
        .get(
          `/api/types/values?column=${type?.column_name}&table=${type?.entity_meta_table}`
        )
        .then((res) => res.data),
  });
  const [isExcluded, setIsExcluded] = useState<boolean[]>([]);
  const [values, setValues] = useState<(string | number)[]>([]);
  React.useEffect(() => {
    if (data) {
      setValues(Array.from(new Set(data.sort())));
    }
  }, [data]);

  React.useEffect(() => {
    setIsExcluded(values?.map((v) => excluded?.includes(v) || false) ?? []);
  }, [values, excluded]);

  const toggleExclude = (index: number) => {
    if (excluded) {
      const isExcluded = excluded.includes(values[index]);
      if (isExcluded) {
        setFieldValue(
          name || "",
          excluded.filter((v) => v !== values[index])
        );
      } else {
        setFieldValue(name || "", [...excluded, values[index]]);
      }
    }
  };

  const excludeAll = () => {
    setIsExcluded(values?.map((v) => true) ?? []);
  }

  const includeAll = () => {
    setIsExcluded(values?.map((v) => false) ?? []);
  }

  return (
    <HStack
      w={"100%"}
      alignItems={"baseline"}
      mx={8}
      px={2}
      spacing={0}
      maxW={"1234px"}
    >
      <VStack width={"50%"} pr={3} alignItems={"flex-start"}>
        <HStack>
          <InputLabel name={name} label={"Value Pool"} />
          <Button mb={2} variant={"outline"} size="sm" onClick={excludeAll}>Exclude all</Button>
        </HStack>
        <Box
          width={"100%"}
          border="1px solid"
          borderColor="border.primary"
          p={4}
          borderRadius={4}
          bg="surface.02"
          h={"500px"}
          overflow={"auto"}
        >
          {values?.map(
            (value, i) =>
              isExcluded[i] || (
                <MovingButton
                  onClick={() => toggleExclude(i)}
                  value={value}
                  isExcluded={isExcluded[i]}
                  key={i}
                />
              )
          )}
        </Box>
      </VStack>
      <VStack width={"50%"} pl={3} alignItems={"flex-start"}>
        <HStack>
          <InputLabel name={name} label={"Excluded Pool"} />
          <Button mb={2} variant={"outline"} size="sm" onClick={includeAll}>Include all</Button>
        </HStack>
        <Box
          width={"100%"}
          border="1px solid"
          borderColor="border.primary"
          p={4}
          borderRadius={4}
          bg="surface.02"
          h={"500px"}
          overflow={"auto"}
        >
          {values?.map(
            (value, i) =>
              isExcluded[i] && (
                <MovingButton
                  onClick={() => toggleExclude(i)}
                  value={value}
                  isExcluded={isExcluded[i]}
                  key={i}
                />
              )
          )}
        </Box>
      </VStack>
    </HStack>
  );
};

type MovingButtonProps = {
  onClick: () => void;
  value: string | number;
  isExcluded: boolean;
};

const MovingButton: React.FC<MovingButtonProps> = (props) => {
  const { onClick, value, isExcluded } = props;
  return (
    <Button
      onClick={onClick}
      variant={"ghost"}
      w="100%"
      rightIcon={
        isExcluded ? undefined : (
          <Icon as={HiArrowNarrowRight} color={"blue.primary"} />
        )
      }
      leftIcon={
        isExcluded ? (
          <Icon as={HiArrowNarrowLeft} mr={4} color={"blue.primary"} />
        ) : undefined
      }
      justifyContent={isExcluded ? "flex-start" : "space-between"}
    >
      {value}
    </Button>
  );
};

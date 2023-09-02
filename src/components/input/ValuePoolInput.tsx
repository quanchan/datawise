import { Box, Button, HStack, Icon, VStack } from "@chakra-ui/react";
import { InputLabel, InputLabelProps } from "./InputLabel";
import { useState } from "react";
import { HiArrowNarrowRight, HiArrowNarrowLeft } from "react-icons/hi";
export type ValuePoolInputProps = {} & InputLabelProps;

export const ValuePoolInput: React.FC<ValuePoolInputProps> = (
  props: ValuePoolInputProps
) => {
  const { name } = props;
  const [values, setValues] = useState<string[]>([
    "Helo",
    "World",
    "Test",
    "Helo",
    "World",
    "Test",
    "Helo",
    "World",
    "Test",
    "Helo",
    "World",
    "Test",
    "Helo",
    "World",
    "Test",
    "Helo",
    "World",
    "Test",
  ]);
  const [isExcluded, setIsExcluded] = useState<boolean[]>([
    false,
    false,
    false,
  ]);

  const toggleExclude = (index: number) => {
    setIsExcluded((prev) => [
      ...prev.slice(0, index),
      !prev[index],
      ...prev.slice(index + 1),
    ]);
  };

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
        <InputLabel name={name} label={"Value Pool"} />
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
          {values.map(
            (value, i) =>
              isExcluded[i] || (
                <MovingButton
                  onClick={() => toggleExclude(i)}
                  value={value}
                  index={i}
                  isExcluded={isExcluded[i]}
                  key={i}
                />
              )
          )}
        </Box>
      </VStack>
      <VStack width={"50%"} pl={3} alignItems={"flex-start"}>
        <InputLabel name={name} label={"Excluded Pool"} />
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
          {values.map(
            (value, i) =>
              isExcluded[i] && (
                <MovingButton
                  onClick={() => toggleExclude(i)}
                  value={value}
                  index={i}
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
  value: string;
  index: number;
  isExcluded: boolean;
};

const MovingButton: React.FC<MovingButtonProps> = (props) => {
  const { onClick, value, index, isExcluded } = props;
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

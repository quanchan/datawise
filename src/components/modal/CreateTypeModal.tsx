import {
  Button,
  HStack,
  Tab,
  TabList,
  TabPanel,
  TabPanels,
  Tabs,
  Text,
  Textarea,
  VStack,
} from "@chakra-ui/react";
import { BaseModal, BaseModalProps } from "./BaseModal";
import { BaseTopBar } from "../BaseTopBar";
import { SelectInput, TextInput } from "../input";
import { useEffect, useState } from "react";
import { BaseFooter } from "../BaseFooter";
import { useFormikContext } from "formik";
import { Tables, defaultCustomType } from "@/types";
import { useMutation, useQueryClient } from "@tanstack/react-query";
import axios from "axios";

export type CreateTypeModalProps = {} & BaseModalProps;

export const CreateTypeModal: React.FC<CreateTypeModalProps> = (props) => {
  const { isOpen, onClose } = props;
  const [tabIndex, setTabIndex] = useState(0);
  const { values, handleChange, setFieldValue } = useFormikContext<Tables>();

  useEffect(() => {
    setFieldValue("newType", defaultCustomType);
  }, []);

  const namePrefix = `newType.`;

  const newTypeMutation = useMutation(() =>
    axios.post("/api/types/new", values.newType).then((res) => res.data)
  );

  const queryClient = useQueryClient();
  const onSave = () => {
    newTypeMutation.mutateAsync();
    queryClient.invalidateQueries({ queryKey: ["typesData"] });
    onClose();
  };
  return (
    <BaseModal isOpen={isOpen} onClose={onClose}>
      <VStack width={"100vw"} mb={20} alignItems={"center"} textAlign={"left"}>
        <BaseTopBar heading="Create a New Type" />
        <Tabs
          mt={8}
          index={tabIndex}
          onChange={(index: number) => {
            setTabIndex(index);
          }}
          variant={"brand"}
          maxWidth={"1600px"}
          w={"100%"}
          textAlign={"left"}
        >
          <HStack w="100%" spacing={4}>
            <TextInput
              onChange={handleChange}
              name={namePrefix + "name"}
              label="Type Name"
            />
            <TextInput
              onChange={handleChange}
              name={namePrefix + "actualSQLType"}
              label="Actual SQL Type"
            />
            <TextInput
              onChange={handleChange}
              name={namePrefix + "description"}
              label="Description"
              doubleLength={true}
            />
          </HStack>
          <Text mt={4} mb={2} fontWeight={"semibold"} fontSize={"md"}>
            Values Source
          </Text>
          <TabList gap={4}>
            <Tab>Manual Input</Tab>
            <Tab>From other types</Tab>
            <Tab>AI Generation</Tab>
          </TabList>
          <TabPanels mt={4}>
            <TabPanel p={0}>
              <SelectInput
                onChange={handleChange}
                label="Separator"
                name={namePrefix + "separator"}
                options={[
                  { value: "newline", label: 'NEW LINE ("\\n")' },
                  { value: "comma", label: 'COMMA (",")' },
                ]}
              />
              <Text
                onChange={handleChange}
                mt={4}
                mb={2}
                fontWeight={"semibold"}
                fontSize={"md"}
              >
                Values
              </Text>
              <Textarea
                onChange={handleChange}
                name={namePrefix + "values"}
                h={"50vh"}
              />
            </TabPanel>
          </TabPanels>
        </Tabs>
        <BaseFooter>
          <Button
            variant={"outline"}
            size="sm"
            minW={"75px"}
            fontSize={"xs"}
            mr={4}
            onClick={onClose}
          >
            Cancel
          </Button>
          <Button variant={"primary"} onClick={onSave}>
            Save
          </Button>
        </BaseFooter>
      </VStack>
    </BaseModal>
  );
};

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
import { Tables, Type, defaultCustomType, separatorOptions } from "@/types";
import { useMutation, useQueryClient } from "@tanstack/react-query";
import axios from "axios";
import { useTypesContext } from "@/context";

export type CreateTypeModalProps = {} & BaseModalProps;

export const CreateTypeModal: React.FC<CreateTypeModalProps> = (props) => {
  const { isOpen, onClose } = props;
  const [tabIndex, setTabIndex] = useState(0);
  const { values, handleChange, setFieldValue } = useFormikContext<Tables>();

  useEffect(() => {
    setFieldValue("newType", defaultCustomType);
  }, [isOpen]);

  const namePrefix = `newType.`;
  
  const queryClient = useQueryClient();
  const newTypeMutation = useMutation({
    mutationFn: async () => {
      const res = await axios.post("/api/types/new", values.newType);
      return res.data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["typesData"]});
    }
  });

  const onSave = async () => {
    await newTypeMutation.mutateAsync();
    onClose();
  };
  const newType = values.newType;
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
              value={newType.name}
            />
            <TextInput
              onChange={handleChange}
              name={namePrefix + "actualSQLType"}
              label="Actual SQL Type"
              value={newType.actualSQLType}
            />
            <TextInput
              onChange={handleChange}
              name={namePrefix + "description"}
              label="Description"
              doubleLength={true}
              value={newType.description}
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
                options={separatorOptions}
                value={newType.separator}
              />
              <Text mt={4} mb={2} fontWeight={"semibold"} fontSize={"md"}>
                Values
              </Text>
              <Textarea
                onChange={handleChange}
                name={namePrefix + "values"}
                h={"50vh"}
                value={newType.values}
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

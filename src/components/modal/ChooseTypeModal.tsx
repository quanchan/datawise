import {
  HStack,
  Tab,
  Tabs,
  TabList,
  TabPanel,
  TabPanels,
  VStack,
  Box,
  InputGroup,
  InputLeftElement,
  Input,
  Card,
  CardBody,
  Text,
} from "@chakra-ui/react";
import React, { useState, useMemo } from "react";
import { TypeCard } from "@/components/TypeCard";
import { Type, Tables, defaultGenOptions } from "@/types";
import { BaseTopBar } from "@/components/BaseTopBar";
import {
  BaseModal,
  BaseModalProps,
  ChooseTypeFooter,
} from "@/components/modal";
import { BiSearch } from "react-icons/bi";
import { useFormikContext } from "formik";
import axios from "axios";
import { useQuery } from "@tanstack/react-query";
import { AiOutlinePlusCircle } from "react-icons/ai";

export type ChooseTypeModalProps = Omit<BaseModalProps, 'onClose'> & {
  onClose: (selected: string) => void;
  tableIndex: number;
  fieldIndex: number;
  addCustomType: () => void;
};

export const ChooseTypeModal: React.FC<ChooseTypeModalProps> = (props) => {
  const { onClose, tableIndex, fieldIndex, isOpen, addCustomType } = props;
  const [tabIndex, setTabIndex] = useState(0);
  const { setFieldValue, values } = useFormikContext<Tables>();
  const [selectedType, setSelectedType] = useState<string>(
    values.tables[tableIndex]?.fields[fieldIndex]?.type || ""
  );
  const [searchTerm, setSearchTerm] = useState("");

  const { data } = useQuery<Type[]>({
    queryKey: ["typesData"],
    queryFn: () => axios.get("/api/types").then((res) => res.data),
  });

  const typeMap = useMemo(() => {
    if (!data)
      return {
        All: [],
        Standalone: [],
        Custom: [],
      };
    const standalone = data.filter((type) => type.standalone && !type.custom);
    const custom = data.filter((type) => type.custom);
    const others = data.filter((type) => !type.standalone && !type.custom);
    const typeMap: Record<string, Type[]> = {};
    typeMap["All"] = data;
    typeMap["Standalone"] = standalone;
    typeMap["Custom"] = custom;
    others.forEach((type) => {
      if (typeMap[type.entity_display_name]) {
        typeMap[type.entity_display_name].push(type);
      } else {
        typeMap[type.entity_display_name] = [type];
      }
    });
    return typeMap;
  }, [data]);

  const onSave = () => {
    setFieldValue(
      `tables.${tableIndex}.fields.${fieldIndex}.genOptions`,
      defaultGenOptions
    )
    setFieldValue(
      `tables.${tableIndex}.fields.${fieldIndex}.type`,
      selectedType
    );
    onClose(selectedType);
  };

  if (!data) return <></>;

  return (
    <BaseModal isOpen={isOpen} onClose={onSave}>
      <VStack
        width={"100vw"}
        textAlign={"center"}
        justifyContent={"center"}
        mb={20}
      >
        <BaseTopBar heading="Choose a Type" />
        <Tabs
          onChange={(index: number) => {
            setSearchTerm("");
            setTabIndex(index);
          }}
          variant={"brand"}
          maxWidth={"1600px"}
          w={"100%"}
          textAlign={"left"}
        >
          <TabList
            px={{ base: 6, lg: 12 }}
            mt={4}
            justifyContent={"space-between"}
            paddingBottom={4}
            borderBottom={"2px solid"}
            borderColor={"border.primary"}
          >
            <HStack overflowX={"auto"} whiteSpace={"nowrap"}>
              {Object.keys(typeMap).map((key, index) => {
                return (
                  <Tab key={key}>
                    {key} ({typeMap[key].length})
                  </Tab>
                );
              })}
            </HStack>
          </TabList>
          <TabPanels>
            {Object.keys(typeMap).map((key, index) => {
              return (
                <TabPanel key={key} mx={{ base: 2, lg: 8 }} w={"100%"}>
                  <InputGroup maxW={"400px"} mb={4}>
                    <InputLeftElement pointerEvents="none" color="gray.500">
                      <BiSearch />
                    </InputLeftElement>
                    <Input
                      onChange={(e) => setSearchTerm(e.target.value)}
                      value={searchTerm}
                      type="text"
                      placeholder="Find type..."
                    />
                  </InputGroup>
                  <Box display={"flex"} flexWrap={"wrap"} gap={6}>
                    {key === "Custom" && (
                      <Card
                        onClick={addCustomType}
                        variant={"outline"}
                        border="dashed"
                        borderColor={"border.primary"}
                        width={{ base: "100%", md: "47%", lg: "23%" }}
                        _hover={{
                          borderColor: "blue.primary",
                          backgroundColor: "blue.50",
                          cursor: "pointer",
                        }}
                        minH={"203px"}
                      >
                        <CardBody display={"flex"} justifyContent={"center"} alignItems={"center"} flexDir={"column"}>
                          <AiOutlinePlusCircle size={"4em"} color="#0093FA" />
                          <Text mt={4} fontWeight={"bold"}>Add Type</Text>
                        </CardBody>
                      </Card>
                    )}
                    {typeMap[key]
                      .filter((t) =>
                        t.display_name
                          .toLowerCase()
                          .includes(searchTerm.toLowerCase())
                      )
                      .map((type) => {
                        return (
                          <TypeCard
                            key={type.id}
                            type={type}
                            selected={selectedType == type.id}
                            handleClick={() => {
                              if (selectedType == type.id) {
                                setSelectedType("");
                              } else {
                                setSelectedType(type.id)
                              }
                              
                            }}
                          />
                        );
                      })}
                  </Box>
                </TabPanel>
              );
            })}
          </TabPanels>
        </Tabs>
        <ChooseTypeFooter
          selection={data?.filter((t) => t.id === selectedType)[0]}
          onClose={onSave}
        />
      </VStack>
    </BaseModal>
  );
};

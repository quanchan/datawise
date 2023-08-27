import {
  HStack,
  Tab,
  Tabs,
  TabList,
  TabPanel,
  TabPanels,
  VStack,
  Stack,
  Box,
  InputGroup,
  InputLeftElement,
  Input,
} from "@chakra-ui/react";
import React, { useState, useMemo } from "react";
import data from "../../typeData.json";
import { TypeCard } from "@/components/TypeCard";
import { Type } from "@/types/type";
import { BaseTopBar } from "@/components/BaseTopBar";
import { ChooseTypeFooter } from "@/components/ChooseTypeFooter";
import { BiSearch } from "react-icons/bi";
import { useFormikContext } from "formik";
import { Tables } from "@/types/table";
export type ChooseTypeProps = {
  onClose: () => void;
  tableIndex: number;
  fieldIndex: number;
};

export const ChooseType: React.FC<ChooseTypeProps> = (props) => {
  const { onClose, tableIndex, fieldIndex } = props;
  const [tabIndex, setTabIndex] = useState(0);
  const { setFieldValue, values } = useFormikContext<Tables>();
  const [selectedType, setSelectedType] = useState<string>(
    values.tables[tableIndex].fields[fieldIndex].type
  );
  const [searchTerm, setSearchTerm] = useState("");

  const typeMap = useMemo(() => {
    const standalone = data.filter((type) => type.standalone && !type.custom);
    const custom = data.filter((type) => type.custom);
    const others = data.filter((type) => !type.standalone && !type.custom);
    const typeMap: Record<string, Type[]> = {};
    typeMap["All"] = data;
    typeMap["Standalone"] = standalone;
    typeMap["Custom"] = custom;
    others.forEach((type) => {
      if (typeMap[type.entityDisplayName]) {
        typeMap[type.entityDisplayName].push(type);
      } else {
        typeMap[type.entityDisplayName] = [type];
      }
    });
    return typeMap;
  }, [data]);

  const onSave = () => {
    setFieldValue(
      `tables.${tableIndex}.fields.${fieldIndex}.type`,
      selectedType
    );
    onClose();
  };

  return (
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
          borderBottom={"1px solid"}
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
                  {typeMap[key]
                    .filter((t) =>
                      t.displayName
                        .toLowerCase()
                        .includes(searchTerm.toLowerCase())
                    )
                    .map((type) => {
                      return (
                        <TypeCard
                          key={type.id}
                          type={type}
                          selected={selectedType == type.id}
                          handleClick={() => setSelectedType(type.id)}
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
        selection={data.filter((t) => t.id === selectedType)[0]}
        onClose={onSave}
      />
    </VStack>
  );
};

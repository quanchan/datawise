import { FieldControl } from "@/components/FieldControl";
import { Footer } from "@/components/Footer";
import { TableConstaintsControl } from "@/components/TableConstraintsControl";
import { TopBar } from "@/components/TopBar";
import {
  Box,
  Button,
  Divider,
  HStack,
  Heading,
  Icon,
  Input,
  Stack,
  Tab,
  TabList,
  TabPanel,
  TabPanels,
  Tabs,
  Text,
  VStack,
} from "@chakra-ui/react";
import React from "react";
import { FiPlusCircle } from "react-icons/fi";

export default function Home() {
  const [tabIndex, setTabIndex] = React.useState(0);
  return (
    <VStack width={"100vw"} textAlign={"center"} justifyContent={"center"}>
      <TopBar heading="Create your database schemas" />
      <VStack direction="row" align="center">
        <Tabs
          onChange={(index: number) => setTabIndex(index)}
          variant={"brand"}
          px={12}
          maxWidth={"8xl"}
        >
          <TabList my={4} justifyContent={"space-between"}>
            <HStack>
              <Button
                padding={4}
                size="xs"
                justifyContent={"space-between"}
                variant={"outline"}
                fontWeight={"bold"}
                color={"text.secondary"}
                leftIcon={
                  <Icon
                    as={FiPlusCircle}
                    fontSize={"md"}
                    color={"blue.primary"}
                  />
                }
              >
                Add Table
              </Button>
              <Tab>Person</Tab>
              <Tab>Property</Tab>
              <Tab>Car</Tab>
            </HStack>
            <Button
              minW={"75px"}
              size="sm"
              variant={"solid"}
              background={"blue.primary"}
            >
              <Text fontSize="xs" color="white">
                Visualiser
              </Text>
            </Button>
          </TabList>
          <Divider
            orientation="horizontal"
            color={"border.primary"}
            opacity={1}
            my={4}
            borderWidth={0.5}
            w={"100%"}
          />
          <TabPanels>
            <TabPanel p={0}>
              <Box display={"flex"} flexDirection={"column"}>
                <Text fontSize={"sm"} alignSelf={"flex-start"} mb={4}>
                  Rows Quantity{" "}
                  <Input
                    p={0}
                    fontSize={"sm"}
                    ml={3}
                    w={"75px"}
                    textAlign={"center"}
                    type="number"
                    py={1}
                    h={"auto"}
                  />
                </Text>
                <Stack
                  // overflowX={"scroll"}
                  display={"flex"}
                  spacing={4}
                  border={"1px solid"}
                  borderColor={"border.primary"}
                  p={4}
                  borderRadius={8}
                >
                  <HStack pl={12} fontWeight={"semibold"}>
                    <Text flex={{ base: 2, lg: 3, xl: 4 }}>Field Name</Text>
                    <Text flex={{ base: 2, lg: 3, xl: 4 }}>Type</Text>
                    <Text flex={{ base: 3, lg: 3, xl: 4 }}>Constraints</Text>
                    <Text flex={{ base: 2, lg: 3, xl: 4 }}>Default</Text>
                    <Text flex={2}>Generation Options</Text>
                  </HStack>
                  <Divider
                    orientation="horizontal"
                    color={"border.primary"}
                    opacity={1}
                    my={0}
                    borderWidth={0.5}
                    w={"100%"}
                  />
                  <FieldControl />
                  <FieldControl />
                  <FieldControl />
                  <Box textAlign={"left"}>
                    <Button
                      padding={4}
                      size="xs"
                      justifyContent={"space-between"}
                      variant={"outline"}
                      fontWeight={"bold"}
                      color={"text.secondary"}
                      leftIcon={
                        <Icon
                          as={FiPlusCircle}
                          fontSize={"md"}
                          color={"blue.primary"}
                        />
                      }
                    >
                      Add Field
                    </Button>
                  </Box>
                </Stack>
                <Stack
                  // overflowX={"scroll"}
                  display={"flex"}
                  spacing={4}
                  border={"1px solid"}
                  borderColor={"border.primary"}
                  p={4}
                  mt={4}
                  borderRadius={8}
                >
                  <Heading
                    as="h3"
                    size="sm"
                    noOfLines={1}
                    color={"text.primary"}
                    fontWeight={"normal"}
                    textAlign={"left"}
                  >
                    Table-wide Constraints
                  </Heading>
                  <Divider
                    orientation="horizontal"
                    color={"border.primary"}
                    opacity={1}
                    my={0}
                    borderWidth={0.5}
                    w={"100%"}
                  />
                  <HStack pl={12} fontWeight={"semibold"}>
                    <Text flex={{ base: 2, lg: 2, xl: 2 }}>
                      Constraint Name
                    </Text>
                    <Text flex={{ base: 5, lg: 5, xl: 5 }}>Condition</Text>
                    <Text flex={{ base: 1, lg: 1, xl: 1 }}>Actions</Text>
                  </HStack>
                  <Divider
                    orientation="horizontal"
                    color={"border.primary"}
                    opacity={1}
                    my={0}
                    borderWidth={0.5}
                    w={"100%"}
                  />
                  <TableConstaintsControl />
                  <Box textAlign={"left"}>
                    <Button
                      padding={4}
                      size="xs"
                      justifyContent={"space-between"}
                      variant={"outline"}
                      fontWeight={"bold"}
                      color={"text.secondary"}
                      leftIcon={
                        <Icon
                          as={FiPlusCircle}
                          fontSize={"md"}
                          color={"blue.primary"}
                        />
                      }
                    >
                      Add Field
                    </Button>
                  </Box>
                </Stack>
              </Box>
            </TabPanel>
          </TabPanels>
        </Tabs>
      </VStack>
      <Footer />
    </VStack>
  );
}

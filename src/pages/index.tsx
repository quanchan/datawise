import { NavCardButton } from "@/components/NavCardButton";
import { FileUpload } from "@/components/FileUpload";
import { Heading, HStack, VStack } from "@chakra-ui/react";
import { AiOutlinePlusCircle } from "react-icons/ai";
import { useRouter } from "next/router";

export default function Home() {

  const router = useRouter();  

  const goToCreateNewSchema = () => {
    router.push("/home");
  }

  return (
    <VStack
      width={"100%"}
      height={"100vh"}
      textAlign={"center"}
      justifyContent={"center"}
      background={"surface.02"}
    >
      <Heading as="h2" size="xl" noOfLines={1}>
        What you want to do today ?
      </Heading>
      <HStack spacing={16} mt={20}>
        <NavCardButton header="Create New Schemas" onClick={goToCreateNewSchema}>
          <AiOutlinePlusCircle size={"4em"} color="#0093FA" />
        </NavCardButton>
        <NavCardButton header="Modify Existing Schemas" onClick={goToCreateNewSchema}>
          <FileUpload />
        </NavCardButton>
      </HStack>
    </VStack>
  );
}

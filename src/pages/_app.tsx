import "../styles.css";
import type { AppProps } from "next/app";
import { ChakraProvider } from "@chakra-ui/react";
import theme from "../theme";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import {DefaultSchemaContextProvider} from "@/context/DefaultSchemaContext";

const queryClient = new QueryClient();
// This default export is required in a new `pages/_app.js` file.
export default function MyApp({ Component, pageProps }: AppProps) {
  return (
    <QueryClientProvider client={queryClient}>
      <ChakraProvider theme={theme}>
        <DefaultSchemaContextProvider>
          <Component {...pageProps} />
        </DefaultSchemaContextProvider>
      </ChakraProvider>
    </QueryClientProvider>
  );
}

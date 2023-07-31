import { type ChakraTheme, extendTheme } from "@chakra-ui/react";
const disabledStyles = {
  backgroundColor: "blue.05",
};

const components: ChakraTheme["components"] = {
  Button: {
    baseStyle: {
      fontSize: "sm",
      fontWeight: "medium",
    },
    variants: {
      primary: {
        bg: "button.primary",
        color: "white",
        _disabled: {
          ...disabledStyles,
        },
        _hover: {
          _disabled: {
            ...disabledStyles,
          },
        },
      },
      secondary: {
        bg: "button.secondary",
        color: "blue.primary",
      },
      link: {
        color: "blue.primary",
      },
      danger: {
        color: "white",
        bg: "red.600",
      },
    },
  },
};
const colors: ChakraTheme["colors"] = {
  blue: {
    "01": "#E1F4FF",
    "02": "#0076C8",
    "03": "#F0F9FF",
    primary: "#0093FA",
  },
  gray: {
    "01": "#F9FBFC",
    "02": "#E2E8F0",
    "03": "#CBD5E0",
    "04": "#A0AEC0",
    "05": "#939DAA",
  },
  border: {
    primary: "#E2E8F0",
    input: "#CBD5E0"
  },
  surface: {
    "01": "#FFFFFF",
    "02": "#F9FBFC",
  },
  text: {
    primary: "#000511",
    secondary: "#808287",
    light: "#FFFFFF",
    disable: "#C3C6CB",
  },
  status: {
    error: "#F16063",
    success: "#66CB9F",
    warn: "F7936F",
  },
  button: {
    primary: "#4C6FFF",
    secondary: "#E4ECF7",
  },
  measurement: {
    green: "#04CC88",
    orange: "#FF8C03",
    yellow: "#FFBD02",
    purple: "#8A5AFF",
    blue: "#68DBF2",
  },
};

const fonts: ChakraTheme["fonts"] = {
  body: "Inter, sans-serif",
  heading: "Inter, sans-serif",
};

const fontSizes: ChakraTheme["fontSizes"] = {
  sm: "14px",
  md: "16px",
  lg: "20px",
  xl: "24px",
  "2xl": "28px",
};

const fontWeights: ChakraTheme["fontWeights"] = {
  regular: 400,
  medium: 500,
  semibold: 600,
};
const customTheme = extendTheme({
  components,
  colors,
  fonts,
  fontSizes,
  fontWeights,
});
export default customTheme;
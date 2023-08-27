import { type ChakraTheme, extendTheme } from "@chakra-ui/react";
import { tabsAnatomy } from "@chakra-ui/anatomy";
import { createMultiStyleConfigHelpers } from "@chakra-ui/react";
import { mode } from "@chakra-ui/theme-tools"; // import utility to set light and dark mode props

const { definePartsStyle, defineMultiStyleConfig } =
  createMultiStyleConfigHelpers(tabsAnatomy.keys);

// define a custom variant
const brandTabVariant = definePartsStyle((props) => {
  return {
    tab: {
      border: "1px solid",
      borderColor: "border.input",
      fontWeight: "bold",
      color: "text.secondary",
      fontSize: "xs",
      paddingY: "0.375rem",
      borderRadius: "md",
      _selected: {
        bg: "#fff",
        color: "blue.primary",
        borderColor: "blue.primary",
        backgroundColor: "blue.01",
      },
    },
  };
});

const variants = {
  brand: brandTabVariant,
};

// export the component theme
export const tabsTheme = defineMultiStyleConfig({ variants });

const disabledStyles = {
  backgroundColor: "blue.05",
};

const components: ChakraTheme["components"] = {
  Text: {
    baseStyle: {
      fontSize: "sm",
      color: "text.primary",
    },
  },
  Input: {
    baseStyle: {
      fontSize: "xs",
      backgroundColor: "surface.01",
    },
  },
  Button: {
    variants: {
      basic: {
        fontSize: "xs",
        minW: "75px",
        height: 8,
        paddingInline: 3,
      },
      primary: {
        bg: "blue.primary",
        color: "white",
        minW: "75px",
        height: 8,
        paddingInline: 3,
        fontSize: "xs",
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
  Tabs: tabsTheme,
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
    input: "#CBD5E0",
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

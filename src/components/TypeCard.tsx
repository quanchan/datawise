import { TypeProcessor } from "@/server/TypeProcessor";
import { Type } from "@/types";
import { Card, CardBody, CardHeader } from "@chakra-ui/react";

export type TypeCardProps = {
  type: Type,
  selected: boolean,
  handleClick: (event: React.MouseEvent<HTMLDivElement>) => void,
}

const selectedStyle = {
  borderColor: "blue.primary",
  backgroundColor: "blue.50",
  cursor: "pointer"
}

export const TypeCard: React.FC<TypeCardProps> = (props) => {
  const { type, selected, handleClick } = props;
  const appliedStyle = selected ? selectedStyle : {};
  const typeProcessor = new TypeProcessor(type.data_type);
  return (
    <Card onClick={handleClick} variant={"outline"} width={{base: "100%", md: "47%", lg: "23%"}} _hover={selectedStyle} {...appliedStyle}>
      <CardHeader borderBottom={"1px solid"} borderColor={"border.primary"}>
        {type.display_name}
      </CardHeader>
      <CardBody color="text.secondary">
        {type.description ? <>{type.description}<br/></> : ""}
        Entity: {" " + type.entity_display_name}
        <br />
        Example: {" " + type.example}
        <br />
        SQL Type: {" " + typeProcessor.typeSQL.toUpperCase()}
      </CardBody>
    </Card>
  );
}
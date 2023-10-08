import { DefaultSchemaContext, defaultTables } from '@/types';
import { createContext, useContext, useState } from 'react';

const DefaultSchemaContext = createContext<DefaultSchemaContext>({
  defaultSchema: defaultTables,
  setDefaultSchema: () => {},
});

export const useDefaultSchemaContext = () => useContext(DefaultSchemaContext);

export type DefaultSchemaContextProviderProps = {
  children?: React.ReactNode;
};

export const DefaultSchemaContextProvider: React.FC<DefaultSchemaContextProviderProps> = (props) => {
  const { children } = props;
  const [defaultSchema, setDefaultSchema] = useState(defaultTables);

  return (
    <DefaultSchemaContext.Provider value={{ defaultSchema, setDefaultSchema }}>
      {children}
    </DefaultSchemaContext.Provider>
  );
};


import { useGetTypes } from '@/hooks';
import { Type } from '@/types';
import { createContext, useContext, useEffect, useState } from 'react';

export type TypesContextType = {
  types: Type[];
  setTypes: React.Dispatch<React.SetStateAction<Type[]>>;
};


const TypesContext = createContext<TypesContextType>({
  types: [],
  setTypes: () => {}
});

export const useTypesContext = () => useContext(TypesContext);

export type TypesContextProviderProps = {
  children?: React.ReactNode;
};

export const TypesContextProvider: React.FC<TypesContextProviderProps> = (props) => {
  const { children } = props;
  const [types, setTypes] = useState<Type[]>([]);

  const data = useGetTypes();

  useEffect(() => {
    if (data) setTypes(data);
  }, [data]);

  return (
    <TypesContext.Provider value={{ types, setTypes }}>
      {children}
    </TypesContext.Provider>
  );
};


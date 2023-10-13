import { Type } from '@/types';
import { useQuery } from '@tanstack/react-query';
import axios from 'axios';

export function useGetTypes() {
  const { data } = useQuery<Type[]>({
    queryKey: ["typesData"],
    queryFn: () => axios.get("/api/types").then((res) => res.data),
    staleTime: 300000, // data considered "fresh" for 10 seconds
  });

  return data;
}
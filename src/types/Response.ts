// types.ts
export type Response<T> = {
  transactionSuccess: boolean | null;
  errorOccurred: boolean | null;
  message: string | null;
  records: T | null;
} | null;

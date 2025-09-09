// types.ts
export type Response<T> = {
  transactionSuccess: boolean | null;
  errorOccurred: boolean | null;
  message: string | null;
  records: T | null;
} | null;

export type URL1 = {
  country_code: string | null;
  country_name: string | null;
  city: string | null;
  postal: string | null;
  latitude: number | null;
  longitude: number | null;
  IPv4: string | null;
  state: string | null;
} | null;

export type URL2 = {
  ipAddress: string | null;
  continentCode: string | null;
  continentName: string | null;
  countryCode: string | null;
  countryName: string | null;
  stateProvCode: string | null;
  stateProv: string | null;
  city: string | null;
  error: any;
} | null;

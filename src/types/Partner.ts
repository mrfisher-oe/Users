// types.ts
export type Partner = {
  partnerID: number | null;
  partnerName: string | null;
  partnerAbbreviation?: string | null;
  helpdeskPartnerSite?: string | null;
  helpdeskDepartment?: string | null;
  helpdeskEmail?: string | null;
  helpdeskShortURL?: string | null;
  helpdeskFullURL?: string | null;
  currentPartner: boolean | null;
  active: boolean | null;
  createDate: string | null;
};

export type Partners = Partner[];

export type PartnerSite = {
  partnerID: number | null;
  partnerName: string | null;
  partnerAbbreviation?: string | null;
  helpdeskPartnerSite?: string | null;
  helpdeskDepartment?: string | null;
  helpdeskEmail?: string | null;
  helpdeskShortURL?: string | null;
  helpdeskFullURL?: string | null;
  currentPartner: boolean | null;
  partnersActive: boolean | null;
  // partnersCreateDate: Date | null;
  partnersCreateDate: string | null;

  partnerSiteID: number | null;
  partnerSiteName: string | null;
  partnerSiteAbbreviation?: string | null;
  partnerSitesActive: boolean | null;
  // partnerSitesCreateDate: Date | null;
  partnerSitesCreateDate: string | null;

  partnerSiteAddressID: number | null;
  street?: string | null;
  city?: string | null;
  state: string | null;
  zipCode?: string | null;
  partnerSiteAddressesActive: boolean | null;
  // partnerSiteAddressesCreateDate: Date | null;
  partnerSiteAddressesCreateDate: string | null;
};

export type PartnerSites = PartnerSite[];

-- Table: crp_pac_others

-- DROP TABLE crp_pac_others;

CREATE TABLE crp_pac_others
(
  cycle text NOT NULL, -- Last year (even year) of the federal 2-year election cycle
  fecrecno text NOT NULL, -- A unique record identifier within a given cycle.
  filerid text NOT NULL, -- The committee id number for the PAC making the filing. Refers to donor if Type 2* or recipient if Type=1*.
  donorcmte text, -- The standardized name for the donor based on the name of the PAC’s sponsor.
  contriblendtrans text, -- Reported name of the donor if Type=1* or the recipient if Type=2*.
  city text, -- The donor’s city. This could be based on a home address or an employer’s address.
  state text, -- The donor’s state. This could be based on a home address or an employer’s address.
  zip text, -- The donor’s zip code. This could be based on a home address or an employer’s address.
  fecoccemp text, -- The donor’s disclosed employer and/or occupation.
  primcode text, -- The primary industry/ideological code for the donor PAC’s sponsor.
  date date, -- The reported date of the contribution.
  amount money, -- The amount contributed. This will be negative for refunds.
  recipid text, -- The recipient’s id number. If the contribution is to a candidate this will be the candidate’s unique candidate id number. Otherwise, it will be the FEC committee id number.
  party text, -- The party (if any) of the recipient. “D” for Democratic, “R” for Republican”, “I” for Independent, “L” for Libertarian”, “3” for other third party and “U” for Unknown. This field will be blank or null for PACs other than leadership PACs.
  otherid text, -- Committee id for donor if Type=1* or recipient if Type=2*.
  recipcode text, -- A two character code defining the type of recipient. For candidates, the first character is party (“D” for Democratic, “R” for Republican, “3” for Independent, Libertarian or third party, “U” for Unknown.) The second character is “W” for Winner, “L” for Loser, “I” for incumbent, “C” for Challenger, “O” for “Open Seat”, and “N” for Non-incumbent. “N” is reserved for candidates that are neither in office nor running during the cycle in question. For party committees, the first character is party and the second character is “P.” For PACs, the first character is “P” and for outside spending groups, "O". For both, the second character is “B” for Business, “L” for Labor”, “I” for Ideological, “O” for “Other” and “U” for unknown.
  recipprimcode text, -- The industry/ideological code for the recipient – codes beginning with Z1 are candidate committees, codes beginning with Z5 are party committees and codes beginning with J2 are leadership PACs.
  amend text, -- Whether the record comes from an amended report
  report text, -- The type of report – 1st quarter, year end, etc.
  pg text, -- Whether the contribution is for a Primary (“P”) or General (“G”) election.
  microfilm text, -- The FEC microfilm record for the contribution
  type text, -- The transaction type code for the contribution. 11 is a tribal contribution, 22Z is a contribution refund to a candidate or committee, 24G is a Transfer to an affiliated committee, 24K is a direct contribution, 24R is a election recount disbursement and 24Z is an in kind contribution
  realcode text, -- The standard five character code identifying the donor’s industry or ideology. Usually based on Primcode. Sometimes a PAC sponsor will have secondary interests which may replace the main realcode depending on recipient. For example, Boeing is primarily Air Transport but has Air Defense interests. Thus Boeing contributions to members of the Armed Services committee would have a realcode of Air Defense.
  source text, -- Indicates how the Realcode was determined.
  CONSTRAINT pk_crp_pac_others PRIMARY KEY (cycle, fecrecno, filerid)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_pac_others.cycle IS 'Last year (even year) of the federal 2-year election cycle ';
COMMENT ON COLUMN crp_pac_others.fecrecno IS 'A unique record identifier within a given cycle. 
';
COMMENT ON COLUMN crp_pac_others.filerid IS 'The committee id number for the PAC making the filing. Refers to donor if Type 2* or recipient if Type=1*. ';
COMMENT ON COLUMN crp_pac_others.donorcmte IS 'The standardized name for the donor based on the name of the PAC’s sponsor. ';
COMMENT ON COLUMN crp_pac_others.contriblendtrans IS 'Reported name of the donor if Type=1* or the recipient if Type=2*. ';
COMMENT ON COLUMN crp_pac_others.city IS 'The donor’s city. This could be based on a home address or an employer’s address. ';
COMMENT ON COLUMN crp_pac_others.state IS 'The donor’s state. This could be based on a home address or an employer’s address. ';
COMMENT ON COLUMN crp_pac_others.zip IS 'The donor’s zip code. This could be based on a home address or an employer’s address. ';
COMMENT ON COLUMN crp_pac_others.fecoccemp IS 'The donor’s disclosed employer and/or occupation. ';
COMMENT ON COLUMN crp_pac_others.primcode IS 'The primary industry/ideological code for the donor PAC’s sponsor. ';
COMMENT ON COLUMN crp_pac_others.date IS 'The reported date of the contribution. ';
COMMENT ON COLUMN crp_pac_others.amount IS 'The amount contributed. This will be negative for refunds. ';
COMMENT ON COLUMN crp_pac_others.recipid IS 'The recipient’s id number. If the contribution is to a candidate this will be the candidate’s unique candidate id number. Otherwise, it will be the FEC committee id number. ';
COMMENT ON COLUMN crp_pac_others.party IS 'The party (if any) of the recipient. “D” for Democratic, “R” for Republican”, “I” for Independent, “L” for Libertarian”, “3” for other third party and “U” for Unknown. This field will be blank or null for PACs other than leadership PACs. ';
COMMENT ON COLUMN crp_pac_others.otherid IS 'Committee id for donor if Type=1* or recipient if Type=2*. ';
COMMENT ON COLUMN crp_pac_others.recipcode IS 'A two character code defining the type of recipient. For candidates, the first character is party (“D” for Democratic, “R” for Republican, “3” for Independent, Libertarian or third party, “U” for Unknown.) The second character is “W” for Winner, “L” for Loser, “I” for incumbent, “C” for Challenger, “O” for “Open Seat”, and “N” for Non-incumbent. “N” is reserved for candidates that are neither in office nor running during the cycle in question. For party committees, the first character is party and the second character is “P.” For PACs, the first character is “P” and for outside spending groups, "O". For both, the second character is “B” for Business, “L” for Labor”, “I” for Ideological, “O” for “Other” and “U” for unknown. 
';
COMMENT ON COLUMN crp_pac_others.recipprimcode IS 'The industry/ideological code for the recipient – codes beginning with Z1 are candidate committees, codes beginning with Z5 are party committees and codes beginning with J2 are leadership PACs. ';
COMMENT ON COLUMN crp_pac_others.amend IS 'Whether the record comes from an amended report ';
COMMENT ON COLUMN crp_pac_others.report IS 'The type of report – 1st quarter, year end, etc. ';
COMMENT ON COLUMN crp_pac_others.pg IS 'Whether the contribution is for a Primary (“P”) or General (“G”) election. ';
COMMENT ON COLUMN crp_pac_others.microfilm IS 'The FEC microfilm record for the contribution 
';
COMMENT ON COLUMN crp_pac_others.type IS 'The transaction type code for the contribution. 11 is a tribal contribution, 22Z is a contribution refund to a candidate or committee, 24G is a Transfer to an affiliated committee, 24K is a direct contribution, 24R is a election recount disbursement and 24Z is an in kind contribution ';
COMMENT ON COLUMN crp_pac_others.realcode IS 'The standard five character code identifying the donor’s industry or ideology. Usually based on Primcode. Sometimes a PAC sponsor will have secondary interests which may replace the main realcode depending on recipient. For example, Boeing is primarily Air Transport but has Air Defense interests. Thus Boeing contributions to members of the Armed Services committee would have a realcode of Air Defense. ';
COMMENT ON COLUMN crp_pac_others.source IS 'Indicates how the Realcode was determined. ';


-- Table: crp_individuals

-- DROP TABLE crp_individuals;

CREATE TABLE crp_individuals
(
  cycle text NOT NULL, -- Last year (even year) of the federal 2-year election cycle
  fectransid text NOT NULL, -- A unique record identifier within a given cycle.
  contribid text, -- A unique identifier for individual donors. Family groups match on first 11 chars
  contrib text, -- The name of the contributor, usually in the format Last name, First Name.
  recipid text, -- The recipient’s id number. If the contribution is to a candidate this will be the candidate’s unique candidate id number. Otherwise, it will be the FEC committee id number.
  orgname text, -- The standardized organization name for the contributor. This is usually based on the donor’s employer. The donor may not have an income producing occupation (e.g. homemaker)
  ultorg text, -- The standardized parent organization for the organization listed in the Orgname field. If there is no parent identified, this field will be blank or null.
  realcode text, -- The standard five character code identifying the donor’s industry or ideology. Usually based on Orgname (e.g., the orgname “Microsoft Corp” would normally get realcode C5120 for computer software.)
  date date, -- The reported date of the contribution.
  amount money, -- The amount contributed. This will be negative for refunds.
  street text, -- The donor’s street address. Federal law PROHIBITS use of this information for solicitation, fundraising or other commercial purposes.
  city text, -- The donor’s city. This could be based on a home address or an employer’s address.
  state text, -- The donor’s state. This could be based on a home address or an employer’s address.
  zip text, -- The donor’s zip code. This could be based on a home address or an employer’s address.
  recipcode text, -- A two-character code defining the type of recipient. For candidates, the first character is party (“D” for Democratic, “R” for Republican, “3” for Independent, Libertarian or third party, “U” for Unknown.) The second character is “W” for Winner, “L” for Loser, “I” for incumbent, “C” for Challenger, “O” for “Open Seat”, and “N” for Non- incumbent. “N” is reserved for candidates that are neither in office nor running during the cycle in question. For party committees, the first character is party and the second character is “P.” For PACs, the first character is “P” and for outside spending groups, "O". For bothm the second character is “B” for Business, “L” for Labor”, “I” for Ideological, “O” for “Other” and “U” for unknown.
  type text, -- The transaction type code for the contribution. 15 is a contribution, 15e is an earmarked contribution (made through a group such as Club for Growth or Emily’s List), 15j is a contribution through a joint fund raising committee and 22y is a refund. “10” indicates “soft” or nonfederal money for the 2002 cycle and earlier. For the 2004 cycle and later type “10” indicates Levin funds or outside spending.
  cmteid text, -- The committee id number for the recipient. Note that a candidate can have more than one committee – this field indicates the exact committee receiving the contribution.
  otherid text, -- The committee id number for the intermediary party to earmarked contributions.
  gender text, -- The donor’s gender. Can also be “U” if unknown or “N” if the name is ambiguous.
  microfilm text, -- Refers to specific page of FEC report images on which this transaction appears.
  occupation text, -- The donor’s disclosed occupation from electronic filing.
  employer text, -- The donor’s disclosed employer from electronic filing.
  source text, -- Indicates how the RealCode was determined
  CONSTRAINT pk_crp_individuals PRIMARY KEY (cycle, fectransid)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_individuals.cycle IS 'Last year (even year) of the federal 2-year election cycle';
COMMENT ON COLUMN crp_individuals.fectransid IS 'A unique record identifier within a given cycle. ';
COMMENT ON COLUMN crp_individuals.contribid IS 'A unique identifier for individual donors. Family groups match on first 11 chars 
';
COMMENT ON COLUMN crp_individuals.contrib IS 'The name of the contributor, usually in the format Last name, First Name. ';
COMMENT ON COLUMN crp_individuals.recipid IS 'The recipient’s id number. If the contribution is to a candidate this will be the candidate’s unique candidate id number. Otherwise, it will be the FEC committee id number. ';
COMMENT ON COLUMN crp_individuals.orgname IS 'The standardized organization name for the contributor. This is usually based on the donor’s employer. The donor may not have an income producing occupation (e.g. homemaker) ';
COMMENT ON COLUMN crp_individuals.ultorg IS 'The standardized parent organization for the organization listed in the Orgname field. If there is no parent identified, this field will be blank or null. ';
COMMENT ON COLUMN crp_individuals.realcode IS 'The standard five character code identifying the donor’s industry or ideology. Usually based on Orgname (e.g., the orgname “Microsoft Corp” would normally get realcode C5120 for computer software.) ';
COMMENT ON COLUMN crp_individuals.date IS 'The reported date of the contribution. ';
COMMENT ON COLUMN crp_individuals.amount IS 'The amount contributed. This will be negative for refunds. ';
COMMENT ON COLUMN crp_individuals.street IS 'The donor’s street address. Federal law PROHIBITS use of this information for solicitation, fundraising or other commercial purposes. ';
COMMENT ON COLUMN crp_individuals.city IS 'The donor’s city. This could be based on a home address or an employer’s address. ';
COMMENT ON COLUMN crp_individuals.state IS 'The donor’s state. This could be based on a home address or an employer’s address. ';
COMMENT ON COLUMN crp_individuals.zip IS 'The donor’s zip code. This could be based on a home address or an employer’s address. ';
COMMENT ON COLUMN crp_individuals.recipcode IS 'A two-character code defining the type of recipient. For candidates, the first character is party (“D” for Democratic, “R” for Republican, “3” for Independent, Libertarian or third party, “U” for Unknown.) The second character is “W” for Winner, “L” for Loser, “I” for incumbent, “C” for Challenger, “O” for “Open Seat”, and “N” for Non- incumbent. “N” is reserved for candidates that are neither in office nor running during the cycle in question. For party committees, the first character is party and the second character is “P.” For PACs, the first character is “P” and for outside spending groups, "O". For bothm the second character is “B” for Business, “L” for Labor”, “I” for Ideological, “O” for “Other” and “U” for unknown. 
';
COMMENT ON COLUMN crp_individuals.type IS 'The transaction type code for the contribution. 15 is a contribution, 15e is an earmarked contribution (made through a group such as Club for Growth or Emily’s List), 15j is a contribution through a joint fund raising committee and 22y is a refund. “10” indicates “soft” or nonfederal money for the 2002 cycle and earlier. For the 2004 cycle and later type “10” indicates Levin funds or outside spending. ';
COMMENT ON COLUMN crp_individuals.cmteid IS 'The committee id number for the recipient. Note that a candidate can have more than one committee – this field indicates the exact committee receiving the contribution. ';
COMMENT ON COLUMN crp_individuals.otherid IS 'The committee id number for the intermediary party to earmarked contributions. ';
COMMENT ON COLUMN crp_individuals.gender IS 'The donor’s gender. Can also be “U” if unknown or “N” if the name is ambiguous. ';
COMMENT ON COLUMN crp_individuals.microfilm IS 'Refers to specific page of FEC report images on which this transaction appears.';
COMMENT ON COLUMN crp_individuals.occupation IS 'The donor’s disclosed occupation from electronic filing. ';
COMMENT ON COLUMN crp_individuals.employer IS 'The donor’s disclosed employer from electronic filing. ';
COMMENT ON COLUMN crp_individuals.source IS 'Indicates how the RealCode was determined ';


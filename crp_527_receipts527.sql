-- Table: crp_527_receipts527

-- DROP TABLE crp_527_receipts527;

CREATE TABLE crp_527_receipts527
(
  id integer NOT NULL, -- A unique record identifier. This is added by CRP and is NOT consistent from download to download.
  rpt text, -- The quarter and year in which the contribution was reported. The first two characters indicate the quarter, the last two the year.
  formid text, -- IRS field
  schaid text, -- An id field supplied by the IRS.
  contribid text, -- A unique identifier for individual donors and their immediate families
  contrib text, -- The name of the contributor, usually in the format Last name, First Name.
  amount money, -- The amount contributed. This will be negative for refunds.
  date date, -- The reported date of the contribution.
  orgname text, -- The standardized organization name for the contributor. This is usually based on the donor’s employer if the donor is an individual. Otherwise it is the donor organization itself. The donor may not have an income producing occupation (e.g. homemaker)
  ultorg text, -- The standardized parent organization for the organization listed in the Orgname field. If there is no parent identified, this field will be blank or null.
  realcode text, -- The standard five character code identifying the donor’s industry or ideology. Usually based on Orgname (e.g., the orgname “Microsoft Corp” would normally get realcode C5120 for computer software.)
  recipid text, -- The recipient’s id number. This is the IRS employer identification number.
  recipcode text, -- A two-character code defining the type of recipient. For candidates, the first character is party (“D” for Democratic, “R” for Republican, “3” for Independent, Libertarian or third party, “U” for Unknown.) The second character is “W” for Winner, “L” for Loser, “I” for incumbent, “C” for Challenger, “O” for “Open Seat”, and “N” for Non-incumbent. “N” is reserved for candidates that are neither in office nor running during the cycle in question. For party committees, the first character is party and the second character is “P.” For PACs, the first character is “P" and for outside spending groups, "O". For both, the second character is “B” for Business, “L” for Labor”, “I” for Ideological, “O” for “Other” and “U” for unknown.
  party text, -- The party (if any) of the recipient. “D” for Democratic, “R” for Republican”, “I” for Independent, “L” for Libertarian”, “3” for other third party and “U” for Unknown. In most cases, 527 committees are not formally affiliated with a political party.
  recipient text, -- The standardized name for the recipient.
  city text, -- The donor’s city. This could be based on a home address or an employer’s address.
  state text, -- The donor’s state. This could be based on a home address or an employer’s address.
  zip text, -- The donor’s zip code. This could be based on a home address or an employer’s address.
  zip4 text, -- Donor’s zip4
  pmsa text, -- Metro area code
  employer text, -- The donor’s disclosed employer.
  occupation text, -- The donor’s disclosed occupation.
  ytd text, -- Supplied by filer
  gender text, -- M/F/U/N for male, female, unknown or ambiguous name
  source text, -- The code for the source used for coding Orgname, Ultorg and Realcode.
  CONSTRAINT pk_crp_527_receipts527 PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);


COMMENT ON COLUMN crp_527_receipts527.id IS 'A unique record identifier. This is added by CRP and is NOT consistent from download to download.';
COMMENT ON COLUMN crp_527_receipts527.rpt IS 'The quarter and year in which the contribution was reported. The first two characters indicate the quarter, the last two the year.';
COMMENT ON COLUMN crp_527_receipts527.formid IS 'IRS field';
COMMENT ON COLUMN crp_527_receipts527.schaid IS 'An id field supplied by the IRS.';
COMMENT ON COLUMN crp_527_receipts527.contribid IS 'A unique identifier for individual donors and their immediate families';
COMMENT ON COLUMN crp_527_receipts527.contrib IS 'The name of the contributor, usually in the format Last name, First Name.';
COMMENT ON COLUMN crp_527_receipts527.amount IS 'The amount contributed. This will be negative for refunds.';
COMMENT ON COLUMN crp_527_receipts527.date IS 'The reported date of the contribution.';
COMMENT ON COLUMN crp_527_receipts527.orgname IS 'The standardized organization name for the contributor. This is usually based on the donor’s employer if the donor is an individual. Otherwise it is the donor organization itself. The donor may not have an income producing occupation (e.g. homemaker)';
COMMENT ON COLUMN crp_527_receipts527.ultorg IS 'The standardized parent organization for the organization listed in the Orgname field. If there is no parent identified, this field will be blank or null.';
COMMENT ON COLUMN crp_527_receipts527.realcode IS 'The standard five character code identifying the donor’s industry or ideology. Usually based on Orgname (e.g., the orgname “Microsoft Corp” would normally get realcode C5120 for computer software.)';
COMMENT ON COLUMN crp_527_receipts527.recipid IS 'The recipient’s id number. This is the IRS employer identification number.';
COMMENT ON COLUMN crp_527_receipts527.recipcode IS 'A two-character code defining the type of recipient. For candidates, the first character is party (“D” for Democratic, “R” for Republican, “3” for Independent, Libertarian or third party, “U” for Unknown.) The second character is “W” for Winner, “L” for Loser, “I” for incumbent, “C” for Challenger, “O” for “Open Seat”, and “N” for Non-incumbent. “N” is reserved for candidates that are neither in office nor running during the cycle in question. For party committees, the first character is party and the second character is “P.” For PACs, the first character is “P" and for outside spending groups, "O". For both, the second character is “B” for Business, “L” for Labor”, “I” for Ideological, “O” for “Other” and “U” for unknown.';
COMMENT ON COLUMN crp_527_receipts527.party IS 'The party (if any) of the recipient. “D” for Democratic, “R” for Republican”, “I” for Independent, “L” for Libertarian”, “3” for other third party and “U” for Unknown. In most cases, 527 committees are not formally affiliated with a political party.';
COMMENT ON COLUMN crp_527_receipts527.recipient IS 'The standardized name for the recipient.';
COMMENT ON COLUMN crp_527_receipts527.city IS 'The donor’s city. This could be based on a home address or an employer’s address.';
COMMENT ON COLUMN crp_527_receipts527.state IS 'The donor’s state. This could be based on a home address or an employer’s address.';
COMMENT ON COLUMN crp_527_receipts527.zip IS 'The donor’s zip code. This could be based on a home address or an employer’s address.';
COMMENT ON COLUMN crp_527_receipts527.zip4 IS 'Donor’s zip4';
COMMENT ON COLUMN crp_527_receipts527.pmsa IS 'Metro area code';
COMMENT ON COLUMN crp_527_receipts527.employer IS 'The donor’s disclosed employer.';
COMMENT ON COLUMN crp_527_receipts527.occupation IS 'The donor’s disclosed occupation.';
COMMENT ON COLUMN crp_527_receipts527.ytd IS 'Supplied by filer';
COMMENT ON COLUMN crp_527_receipts527.gender IS 'M/F/U/N for male, female, unknown or ambiguous name';
COMMENT ON COLUMN crp_527_receipts527.source IS 'The code for the source used for coding Orgname, Ultorg and Realcode.';


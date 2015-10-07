-- Table: crp_expenditures

-- DROP TABLE crp_expenditures;

CREATE TABLE crp_expenditures
(
  cycle text NOT NULL, -- Last year (even) of a federal 2-yr election cycle
  id integer, -- An auto ID added when dbo_Expenditures is made- acts as a unique identifier. This field cannot be used to match records from one download to the next.
  transid text, -- A unique record identifier within a given cycle.
  crpfilerid text, -- ID of the filing committee, same as Filerid unless it is a candidate committee, in which case it will be the candidate’s unique id. (Note that a candidate can have more than one committee – this field indicates the exact committee receiving the contribution)
  recipcode text, -- A two character code defining the type of recipient. For candidates, the first character is party (“D” for Democratic, “R” for Republican, “3” for Independent, Libertarian or third party, “U” for Unknown.) The second character is “W” for Winner, “L” for Loser, “I” for incumbent, “C” for Challenger, “O” for “Open Seat”, and “N” for Non-incumbent. “N” is reserved for candidates that are neither in office nor running during the cycle in question. For party committees, the first character is party and the second character is “P.” For PACs, the first character is “P” and for outside spending groups, "O". For both, the second character is “B” for Business, “L” for Labor”, “I” for Ideological, “O” for “Other” and “U” for unknown.
  pacshort text, -- The standardized name of the filing committee
  crprecipname text, -- The recipient of the disbursement. This field is standardized when possible
  expcode text, -- The expenditure code assigned by the researcher, based on the old codes.
  city text, -- City of the recipient.
  state text, -- State of the recipient.
  zip text, -- Zip of the recipient.
  cmteid_ef text, -- Alternate Committee ID
  candid text, -- candidate id
  type text, -- The transaction type code for the contribution. 15 is a contribution, 15e is an earmarked contribution (made through a group such as Club for Growth or Emily’s List), 15j is a contribution through a joint fund raising committee and 22y is a refund. “10” indicates “soft” or nonfederal money for the 2002 cycle and earlier. For the 2004 cycle and later type “10” indicates Levin funds. Mostly empty
  descrip text, -- Description of the expenditure
  pg text, -- Indicates whether expenditure is for the primary or general election, plus the year. Can also be ‘S’ for special elections, ‘R’ for runoff or ‘O’ for other. Not always filled in
  elecother text, -- Explanation if there is anything other than ‘P’ or ‘G’ in previous field
  enttype text, -- A filer-provided code for classifying the recipient. CCM = Candidate Cmte, PTY = Party Cmte, ORG & IND. Since these are applied differently across filing committees, these codes can be helpful in coding but are not reliable
  source text, -- The source researcher used to assign a certain code to a disbursement. A list can be found in the Expenditures methodology
  amount money NOT NULL, -- The amount spent. This will be negative for refunds.
  date date NOT NULL, -- The reported date of the expenditure
  CONSTRAINT pk_crp_expenditures PRIMARY KEY (cycle, amount, date)
)
WITH (
  OIDS=FALSE
);


COMMENT ON COLUMN crp_expenditures.cycle IS 'Last year (even) of a federal 2-yr election cycle ';
COMMENT ON COLUMN crp_expenditures.id IS 'An auto ID added when dbo_Expenditures is made- acts as a unique identifier. This field cannot be used to match records from one download to the next. ';
COMMENT ON COLUMN crp_expenditures.transid IS 'A unique record identifier within a given cycle. ';
COMMENT ON COLUMN crp_expenditures.crpfilerid IS 'ID of the filing committee, same as Filerid unless it is a candidate committee, in which case it will be the candidate’s unique id. (Note that a candidate can have more than one committee – this field indicates the exact committee receiving the contribution) ';
COMMENT ON COLUMN crp_expenditures.recipcode IS 'A two character code defining the type of recipient. For candidates, the first character is party (“D” for Democratic, “R” for Republican, “3” for Independent, Libertarian or third party, “U” for Unknown.) The second character is “W” for Winner, “L” for Loser, “I” for incumbent, “C” for Challenger, “O” for “Open Seat”, and “N” for Non-incumbent. “N” is reserved for candidates that are neither in office nor running during the cycle in question. For party committees, the first character is party and the second character is “P.” For PACs, the first character is “P” and for outside spending groups, "O". For both, the second character is “B” for Business, “L” for Labor”, “I” for Ideological, “O” for “Other” and “U” for unknown. ';
COMMENT ON COLUMN crp_expenditures.pacshort IS 'The standardized name of the filing committee ';
COMMENT ON COLUMN crp_expenditures.crprecipname IS 'The recipient of the disbursement. This field is standardized when possible ';
COMMENT ON COLUMN crp_expenditures.expcode IS 'The expenditure code assigned by the researcher, based on the old codes. ';
COMMENT ON COLUMN crp_expenditures.city IS 'City of the recipient.';
COMMENT ON COLUMN crp_expenditures.state IS 'State of the recipient.';
COMMENT ON COLUMN crp_expenditures.zip IS 'Zip of the recipient.';
COMMENT ON COLUMN crp_expenditures.cmteid_ef IS 'Alternate Committee ID';
COMMENT ON COLUMN crp_expenditures.candid IS 'candidate id';
COMMENT ON COLUMN crp_expenditures.type IS 'The transaction type code for the contribution. 15 is a contribution, 15e is an earmarked contribution (made through a group such as Club for Growth or Emily’s List), 15j is a contribution through a joint fund raising committee and 22y is a refund. “10” indicates “soft” or nonfederal money for the 2002 cycle and earlier. For the 2004 cycle and later type “10” indicates Levin funds. Mostly empty ';
COMMENT ON COLUMN crp_expenditures.descrip IS 'Description of the expenditure ';
COMMENT ON COLUMN crp_expenditures.pg IS 'Indicates whether expenditure is for the primary or general election, plus the year. Can also be ‘S’ for special elections, ‘R’ for runoff or ‘O’ for other. Not always filled in ';
COMMENT ON COLUMN crp_expenditures.elecother IS 'Explanation if there is anything other than ‘P’ or ‘G’ in previous field ';
COMMENT ON COLUMN crp_expenditures.enttype IS 'A filer-provided code for classifying the recipient. CCM = Candidate Cmte, PTY = Party Cmte, ORG & IND. Since these are applied differently across filing committees, these codes can be helpful in coding but are not reliable ';
COMMENT ON COLUMN crp_expenditures.source IS 'The source researcher used to assign a certain code to a disbursement. A list can be found in the Expenditures methodology ';
COMMENT ON COLUMN crp_expenditures.amount IS 'The amount spent. This will be negative for refunds. ';
COMMENT ON COLUMN crp_expenditures.date IS 'The reported date of the expenditure ';


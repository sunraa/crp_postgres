-- Table: crp_527_expenditures527

-- DROP TABLE crp_527_expenditures527;

CREATE TABLE crp_527_expenditures527
(
  rpt text, -- The quarter and year in which the contribution was reported. The first two characters indicate the quarter, the last two the year.
  formid text, -- IRS field
  schbid text, -- An id field supplied by the IRS.
  orgname text, -- Standardized organization name for the 527 making the distribution.
  ein text, -- ID assigned to each 527 committee by IRS
  recipient text, -- The recipient of the disbursement.
  recipientcrp text, -- The recipient of the disbursement. This field is standardized when possible
  amount money, -- Amount of expenditure
  date date, -- Date of expenditure
  expcode text, -- Indicates category of expenditure.
  source text, -- Source used to determine ExpCode or ExpCode_Old.
  purpose text, -- Description of the expenditure
  addr1 text, -- Street address of recipient
  addr2 text, -- Further address information for recipient
  city text, -- City of recipient
  state text, -- State of recipient
  zip text, -- Zip of recipient
  employer text, -- Employer of recipient
  occupation text -- Occupation of recipient
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_527_expenditures527.rpt IS ' The quarter and year in which the contribution was reported. The first two characters indicate the quarter, the last two the year.  ';
COMMENT ON COLUMN crp_527_expenditures527.formid IS ' IRS field   ';
COMMENT ON COLUMN crp_527_expenditures527.schbid IS ' An id field supplied by the IRS.  ';
COMMENT ON COLUMN crp_527_expenditures527.orgname IS ' Standardized organization name for the 527 making the distribution.   ';
COMMENT ON COLUMN crp_527_expenditures527.ein IS ' ID assigned to each 527 committee by IRS  ';
COMMENT ON COLUMN crp_527_expenditures527.recipient IS ' The recipient of the disbursement.  ';
COMMENT ON COLUMN crp_527_expenditures527.recipientcrp IS ' The recipient of the disbursement. This field is standardized when possible   ';
COMMENT ON COLUMN crp_527_expenditures527.amount IS ' Amount of expenditure   ';
COMMENT ON COLUMN crp_527_expenditures527.date IS ' Date of expenditure   ';
COMMENT ON COLUMN crp_527_expenditures527.expcode IS ' Indicates category of expenditure.  ';
COMMENT ON COLUMN crp_527_expenditures527.source IS ' Source used to determine ExpCode or ExpCode_Old.  ';
COMMENT ON COLUMN crp_527_expenditures527.purpose IS ' Description of the expenditure  ';
COMMENT ON COLUMN crp_527_expenditures527.addr1 IS ' Street address of recipient   ';
COMMENT ON COLUMN crp_527_expenditures527.addr2 IS ' Further address information for recipient   ';
COMMENT ON COLUMN crp_527_expenditures527.city IS ' City of recipient   ';
COMMENT ON COLUMN crp_527_expenditures527.state IS ' State of recipient  ';
COMMENT ON COLUMN crp_527_expenditures527.zip IS ' Zip of recipient  ';
COMMENT ON COLUMN crp_527_expenditures527.employer IS ' Employer of recipient   ';
COMMENT ON COLUMN crp_527_expenditures527.occupation IS ' Occupation of recipient   ';


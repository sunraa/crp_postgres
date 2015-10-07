-- Table: crp_pfd_income

-- DROP TABLE crp_pfd_income;

CREATE TABLE crp_pfd_income
(
  id text NOT NULL, -- Unique id within a year.
  chamber text, -- Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch
  cid text, -- Unique id for each filer.
  calendaryear text, -- Calendar year that is covered by report and that this record applies to.
  reporttype text, -- Y for Annual report, A for Amendment, N for nominee or candidate, T for Termination
  incomesource text,
  orgname text, -- Standardized version of IncomeSource
  ultorg text, -- Standardized parent organization of IncomeSource
  realcode text, -- Industry code of IncomeSource
  source text, -- Source used to determine Realcode
  incomelocation text, -- City, State of Income Source
  incomespousedep text, -- Income recipient is filer jointly with spouse, spouse alone, or dependent child. Null or empty presumes filer was recipient.
  incometype text, -- Description of income type. e.g., "salary"
  incomeamt money, -- Value of income. Non-filer items can be reported as "Over $1,000"
  incomeamttext text, -- Value of income. Non-filer items can be reported as "Over $1,000"
  dupe text, -- "D" if record is duplicated in same or subsequent reports and should not be calculated or displayed.
  CONSTRAINT pk_crp_pfd_income PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_pfd_income.id IS 'Unique id within a year.';
COMMENT ON COLUMN crp_pfd_income.chamber IS 'Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch ';
COMMENT ON COLUMN crp_pfd_income.cid IS 'Unique id for each filer.';
COMMENT ON COLUMN crp_pfd_income.calendaryear IS 'Calendar year that is covered by report and that this record applies to.';
COMMENT ON COLUMN crp_pfd_income.reporttype IS 'Y for Annual report, A for Amendment, N for nominee or candidate, T for Termination';
COMMENT ON COLUMN crp_pfd_income.orgname IS 'Standardized version of IncomeSource';
COMMENT ON COLUMN crp_pfd_income.ultorg IS 'Standardized parent organization of IncomeSource';
COMMENT ON COLUMN crp_pfd_income.realcode IS 'Industry code of IncomeSource';
COMMENT ON COLUMN crp_pfd_income.source IS 'Source used to determine Realcode';
COMMENT ON COLUMN crp_pfd_income.incomelocation IS 'City, State of Income Source';
COMMENT ON COLUMN crp_pfd_income.incomespousedep IS 'Income recipient is filer jointly with spouse, spouse alone, or dependent child. Null or empty presumes filer was recipient.';
COMMENT ON COLUMN crp_pfd_income.incometype IS 'Description of income type. e.g., "salary"';
COMMENT ON COLUMN crp_pfd_income.incomeamt IS 'Value of income. Non-filer items can be reported as "Over $1,000"';
COMMENT ON COLUMN crp_pfd_income.incomeamttext IS 'Value of income. Non-filer items can be reported as "Over $1,000"';
COMMENT ON COLUMN crp_pfd_income.dupe IS '"D" if record is duplicated in same or subsequent reports and should not be calculated or displayed. ';


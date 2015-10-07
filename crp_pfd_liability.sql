-- Table: crp_pfd_liability

-- DROP TABLE crp_pfd_liability;

CREATE TABLE crp_pfd_liability
(
  id text NOT NULL, -- Unique id within a year.
  chamber text, -- Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch
  cid text, -- Unique id for each filer.
  calendaryear text, -- Calendar year that is covered by report and that this record applies to.
  reporttype text, -- Y for Annual report, A for Amendment, N for nominee or candidate, T for Termination
  liabilityspousejointdep text, -- Person liable is filer jointly with spouse, spouse alone, or dependent child. Null or empty presumes filer is liable alone.
  creditor text,
  orgname text, -- Standardized Creditor
  ultorg text, -- Standardized parent organization of Creditor
  realcode text, -- Industry code of Creditor
  source text, -- Source used to determine Realcode
  typeofliability text, -- Description of loan type. e.g., "mortgage"
  liabilityloc text, -- City, State of Creditor
  liabilitydate date, -- Date the liability originated
  liabilitydatetext text, -- Date the liability originated
  liabilityterm text, -- Length of loan term
  liabilityinterestrate text, -- Interest rate paid on loan
  liabilityamt text, -- Value of liability
  dupe text, -- "D" if record is duplicated in same or subsequent reports and should not be calculated or displayed.
  CONSTRAINT pk_crp_pfd_liability PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_pfd_liability.id IS 'Unique id within a year.';
COMMENT ON COLUMN crp_pfd_liability.chamber IS 'Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch ';
COMMENT ON COLUMN crp_pfd_liability.cid IS 'Unique id for each filer.';
COMMENT ON COLUMN crp_pfd_liability.calendaryear IS 'Calendar year that is covered by report and that this record applies to.';
COMMENT ON COLUMN crp_pfd_liability.reporttype IS 'Y for Annual report, A for Amendment, N for nominee or candidate, T for Termination';
COMMENT ON COLUMN crp_pfd_liability.liabilityspousejointdep IS 'Person liable is filer jointly with spouse, spouse alone, or dependent child. Null or empty presumes filer is liable alone.';
COMMENT ON COLUMN crp_pfd_liability.orgname IS 'Standardized Creditor';
COMMENT ON COLUMN crp_pfd_liability.ultorg IS 'Standardized parent organization of Creditor';
COMMENT ON COLUMN crp_pfd_liability.realcode IS 'Industry code of Creditor';
COMMENT ON COLUMN crp_pfd_liability.source IS 'Source used to determine Realcode';
COMMENT ON COLUMN crp_pfd_liability.typeofliability IS 'Description of loan type. e.g., "mortgage"';
COMMENT ON COLUMN crp_pfd_liability.liabilityloc IS 'City, State of Creditor';
COMMENT ON COLUMN crp_pfd_liability.liabilitydate IS 'Date the liability originated';
COMMENT ON COLUMN crp_pfd_liability.liabilitydatetext IS 'Date the liability originated';
COMMENT ON COLUMN crp_pfd_liability.liabilityterm IS 'Length of loan term';
COMMENT ON COLUMN crp_pfd_liability.liabilityinterestrate IS 'Interest rate paid on loan';
COMMENT ON COLUMN crp_pfd_liability.liabilityamt IS 'Value of liability';
COMMENT ON COLUMN crp_pfd_liability.dupe IS '"D" if record is duplicated in same or subsequent reports and should not be calculated or displayed. ';


-- Table: crp_pfd_transactions

-- DROP TABLE crp_pfd_transactions;

CREATE TABLE crp_pfd_transactions
(
  id text NOT NULL, -- Unique id within a year.
  chamber text, -- Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch
  cid text, -- Unique id for each filer.
  calendaryear text, -- Calendar year that is covered by report and that this record applies to.
  reporttype text, -- Y for Annual report, A for Amendment, N for nominee or candidate, T for Termination
  asset4sjd text, -- S=Spouse, J=Joint, D=Dependent Child, Null=Filer
  asset4transacted text, -- Raw asset name. If the asset is held within an account, the raw account name.
  orgname text, -- Standardized version of Asset4Transacted. (More reliable than Asset4Transacted. If errors are found in Asset4Descrip, they are corrected here but not in the raw field.)
  ultorg text, -- Standardized parent organization of Orgname
  realcode text,
  source text,
  asset4descrip text, -- If the asset is held within an account, the raw asset name.
  orgname2 text, -- Standardized version of Asset4Descrip. (More reliable than Asset4Descrip. If errors are found in Asset4Descrip, they are corrected here but not in the raw field.)
  ultorg2 text, -- Standardized parent organization of Orgname2
  realcode2 text,
  source2 text,
  asset4purchased text, -- Asset was purchased
  asset4sold text, -- Asset was sold
  asset4exchanged text, -- Asset was exchanged
  asset4date date, -- Date of Transaction
  asset4datetext text, -- Date of Transaction
  asset4transamt text, -- Code indicating amount of transaction
  asset4exactamt money, -- Exact amount of transaction, if given
  cofd text, -- Certificate of Divestiture
  transnotes text, -- Notes including other types than sold, purchased, exchanged.
  dupe text, -- "D" if record is duplicated in same or subsequent reports and should not be calculated or displayed.
  CONSTRAINT pk_crp_pfd_transactions PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_pfd_transactions.id IS 'Unique id within a year.';
COMMENT ON COLUMN crp_pfd_transactions.chamber IS 'Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch ';
COMMENT ON COLUMN crp_pfd_transactions.cid IS 'Unique id for each filer.';
COMMENT ON COLUMN crp_pfd_transactions.calendaryear IS 'Calendar year that is covered by report and that this record applies to.';
COMMENT ON COLUMN crp_pfd_transactions.reporttype IS 'Y for Annual report, A for Amendment, N for nominee or candidate, T for Termination';
COMMENT ON COLUMN crp_pfd_transactions.asset4sjd IS 'S=Spouse, J=Joint, D=Dependent Child, Null=Filer';
COMMENT ON COLUMN crp_pfd_transactions.asset4transacted IS 'Raw asset name. If the asset is held within an account, the raw account name.';
COMMENT ON COLUMN crp_pfd_transactions.orgname IS 'Standardized version of Asset4Transacted. (More reliable than Asset4Transacted. If errors are found in Asset4Descrip, they are corrected here but not in the raw field.)';
COMMENT ON COLUMN crp_pfd_transactions.ultorg IS 'Standardized parent organization of Orgname';
COMMENT ON COLUMN crp_pfd_transactions.asset4descrip IS 'If the asset is held within an account, the raw asset name.';
COMMENT ON COLUMN crp_pfd_transactions.orgname2 IS 'Standardized version of Asset4Descrip. (More reliable than Asset4Descrip. If errors are found in Asset4Descrip, they are corrected here but not in the raw field.)';
COMMENT ON COLUMN crp_pfd_transactions.ultorg2 IS 'Standardized parent organization of Orgname2';
COMMENT ON COLUMN crp_pfd_transactions.asset4purchased IS 'Asset was purchased';
COMMENT ON COLUMN crp_pfd_transactions.asset4sold IS 'Asset was sold';
COMMENT ON COLUMN crp_pfd_transactions.asset4exchanged IS 'Asset was exchanged';
COMMENT ON COLUMN crp_pfd_transactions.asset4date IS 'Date of Transaction';
COMMENT ON COLUMN crp_pfd_transactions.asset4datetext IS 'Date of Transaction';
COMMENT ON COLUMN crp_pfd_transactions.asset4transamt IS 'Code indicating amount of transaction';
COMMENT ON COLUMN crp_pfd_transactions.asset4exactamt IS 'Exact amount of transaction, if given';
COMMENT ON COLUMN crp_pfd_transactions.cofd IS 'Certificate of Divestiture';
COMMENT ON COLUMN crp_pfd_transactions.transnotes IS 'Notes including other types than sold, purchased, exchanged.';
COMMENT ON COLUMN crp_pfd_transactions.dupe IS '"D" if record is duplicated in same or subsequent reports and should not be calculated or displayed. ';


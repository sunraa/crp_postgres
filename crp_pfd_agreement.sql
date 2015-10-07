-- Table: crp_pfd_agreement

-- DROP TABLE crp_pfd_agreement;

CREATE TABLE crp_pfd_agreement
(
  id text NOT NULL, -- Unique id within a year.
  chamber text, -- Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch
  cid text, -- Unique id for each filer.
  calendaryear text, -- Calendar year that is covered by report and that this record applies to.
  reporttype text, -- Y=Annual filing, A=Amendment, T=Termination
  agreementdate1 date, -- Date when agreement was made or began.
  agreementdate1text text, -- Date when agreement was made or began.
  agreementdate2 date, -- Date when agreement was made or began.
  agreementdate2text text, -- Date when agreement was made or began.
  orgname text, -- Standardized version of first party to the agreement. Based on AgreementParty1
  ultorg text, -- Standardized parent organization of first party to the agreement. If none, this field will be null or empty.
  realcode text, -- Industry code for AgreementParty1
  source text, -- Source used to determine Realcode
  agreementparty1loc text, -- Location information for AgreementParty1. City and state for example.
  agreementparty2 text, -- Second party to the agreement. Based on AgreementParty2. Understood to be the filer if null or empty.
  orgname2 text, -- Standardized version of second party to the agreement. Based on AgreementParty2.
  ultorg2 text, -- Standardized parent organization of second party to the agreement. If none, this field will be null or empty.
  realcode2 text, -- Industry code for AgreementParty2
  source2 text, -- Source used to determine Realcode2
  agreementterms text, -- Description of purpose and terms of the agreeement
  dupe text, -- "D" if record is duplicated in same or subsequent reports and should not be calculated or displayed.
  CONSTRAINT pk_agreement PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_pfd_agreement.id IS 'Unique id within a year.';
COMMENT ON COLUMN crp_pfd_agreement.chamber IS 'Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch ';
COMMENT ON COLUMN crp_pfd_agreement.cid IS 'Unique id for each filer.';
COMMENT ON COLUMN crp_pfd_agreement.calendaryear IS 'Calendar year that is covered by report and that this record applies to.';
COMMENT ON COLUMN crp_pfd_agreement.reporttype IS 'Y=Annual filing, A=Amendment, T=Termination';
COMMENT ON COLUMN crp_pfd_agreement.agreementdate1 IS 'Date when agreement was made or began.';
COMMENT ON COLUMN crp_pfd_agreement.agreementdate1text IS 'Date when agreement was made or began.';
COMMENT ON COLUMN crp_pfd_agreement.agreementdate2 IS 'Date when agreement was made or began.';
COMMENT ON COLUMN crp_pfd_agreement.agreementdate2text IS 'Date when agreement was made or began.';
COMMENT ON COLUMN crp_pfd_agreement.orgname IS 'Standardized version of first party to the agreement. Based on AgreementParty1';
COMMENT ON COLUMN crp_pfd_agreement.ultorg IS 'Standardized parent organization of first party to the agreement. If none, this field will be null or empty. ';
COMMENT ON COLUMN crp_pfd_agreement.realcode IS 'Industry code for AgreementParty1';
COMMENT ON COLUMN crp_pfd_agreement.source IS 'Source used to determine Realcode';
COMMENT ON COLUMN crp_pfd_agreement.agreementparty1loc IS 'Location information for AgreementParty1. City and state for example.';
COMMENT ON COLUMN crp_pfd_agreement.agreementparty2 IS 'Second party to the agreement. Based on AgreementParty2. Understood to be the filer if null or empty. ';
COMMENT ON COLUMN crp_pfd_agreement.orgname2 IS 'Standardized version of second party to the agreement. Based on AgreementParty2.';
COMMENT ON COLUMN crp_pfd_agreement.ultorg2 IS 'Standardized parent organization of second party to the agreement. If none, this field will be null or empty.';
COMMENT ON COLUMN crp_pfd_agreement.realcode2 IS 'Industry code for AgreementParty2';
COMMENT ON COLUMN crp_pfd_agreement.source2 IS 'Source used to determine Realcode2';
COMMENT ON COLUMN crp_pfd_agreement.agreementterms IS 'Description of purpose and terms of the agreeement';
COMMENT ON COLUMN crp_pfd_agreement.dupe IS '"D" if record is duplicated in same or subsequent reports and should not be calculated or displayed. ';


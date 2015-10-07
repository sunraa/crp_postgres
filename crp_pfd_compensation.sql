-- Table: crp_pfd_compensation

-- DROP TABLE crp_pfd_compensation;

CREATE TABLE crp_pfd_compensation
(
  id text NOT NULL, -- Unique id within a year.
  chamber text, -- Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch
  cid text, -- Unique id for each filer.
  calendaryear text, -- Calendar year that is covered by report and that this record applies to.
  reporttype text, -- Y for Annual report, A for Amendment, N for nominee or candidate, T for Termination
  compsource text, -- Source of compensation as reported by filer
  orgname text, -- Standardized source of compensation
  ultorg text, -- Standardized parent organization of Orgname
  realcode text, -- Industry code for compsource
  source text, -- Source used to determine Realcode
  compsourcelocation text, -- City, State of CompSource
  compduties text, -- Description of duties performed in return for compensation
  dupe text, -- "D" if record is duplicated in same or subsequent reports and should not be calculated or displayed.
  CONSTRAINT pk_pfd_compensation PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_pfd_compensation.id IS 'Unique id within a year.';
COMMENT ON COLUMN crp_pfd_compensation.chamber IS 'Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch ';
COMMENT ON COLUMN crp_pfd_compensation.cid IS 'Unique id for each filer.';
COMMENT ON COLUMN crp_pfd_compensation.calendaryear IS 'Calendar year that is covered by report and that this record applies to.';
COMMENT ON COLUMN crp_pfd_compensation.reporttype IS 'Y for Annual report, A for Amendment, N for nominee or candidate, T for Termination';
COMMENT ON COLUMN crp_pfd_compensation.compsource IS 'Source of compensation as reported by filer';
COMMENT ON COLUMN crp_pfd_compensation.orgname IS 'Standardized source of compensation';
COMMENT ON COLUMN crp_pfd_compensation.ultorg IS 'Standardized parent organization of Orgname';
COMMENT ON COLUMN crp_pfd_compensation.realcode IS 'Industry code for compsource';
COMMENT ON COLUMN crp_pfd_compensation.source IS 'Source used to determine Realcode';
COMMENT ON COLUMN crp_pfd_compensation.compsourcelocation IS 'City, State of CompSource';
COMMENT ON COLUMN crp_pfd_compensation.compduties IS 'Description of duties performed in return for compensation';
COMMENT ON COLUMN crp_pfd_compensation.dupe IS '"D" if record is duplicated in same or subsequent reports and should not be calculated or displayed. ';


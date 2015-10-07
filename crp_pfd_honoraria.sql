-- Table: crp_pfd_honoraria

-- DROP TABLE crp_pfd_honoraria;

CREATE TABLE crp_pfd_honoraria
(
  id text NOT NULL, -- Unique id within a year.
  chamber text, -- Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch
  cid text, -- Unique id for each filer.
  calendaryear text, -- Calendar year that is covered by report and that this record applies to.
  reporttype text, -- Y for Annual report, A for Amendment, N for nominee or candidate, T for Termination
  honorariasource text, -- Organization that paid honoraria, as reported by filer
  orgname text, -- Standardized version of HonorariaSource
  ultorg text, -- Standardized parent organization of HonorariaSource
  realcode text, -- Industry code for HonorariaSource
  source text, -- Source used to determine Realcode
  honorariasourceloc text, -- City, State of Honoraria Source
  honorariaactivity text, -- Description of activities that earned the honoraria
  honorariadate date, -- Date the activity was performed
  honorariadatetext text, -- Date the actvity was performed
  honorariaamt money, -- value of honoraria paid
  honorariaamttext text, -- value of honoraria paid
  dupe text, -- "D" if record is duplicated in same or subsequent reports and should not be calculated or displayed.
  CONSTRAINT pk_crp_pfd_honoraria PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_pfd_honoraria.id IS 'Unique id within a year.';
COMMENT ON COLUMN crp_pfd_honoraria.chamber IS 'Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch ';
COMMENT ON COLUMN crp_pfd_honoraria.cid IS 'Unique id for each filer.';
COMMENT ON COLUMN crp_pfd_honoraria.calendaryear IS 'Calendar year that is covered by report and that this record applies to.';
COMMENT ON COLUMN crp_pfd_honoraria.reporttype IS 'Y for Annual report, A for Amendment, N for nominee or candidate, T for Termination';
COMMENT ON COLUMN crp_pfd_honoraria.honorariasource IS 'Organization that paid honoraria, as reported by filer';
COMMENT ON COLUMN crp_pfd_honoraria.orgname IS 'Standardized version of HonorariaSource';
COMMENT ON COLUMN crp_pfd_honoraria.ultorg IS 'Standardized parent organization of HonorariaSource';
COMMENT ON COLUMN crp_pfd_honoraria.realcode IS 'Industry code for HonorariaSource';
COMMENT ON COLUMN crp_pfd_honoraria.source IS 'Source used to determine Realcode';
COMMENT ON COLUMN crp_pfd_honoraria.honorariasourceloc IS 'City, State of Honoraria Source';
COMMENT ON COLUMN crp_pfd_honoraria.honorariaactivity IS 'Description of activities that earned the honoraria';
COMMENT ON COLUMN crp_pfd_honoraria.honorariadate IS 'Date the activity was performed';
COMMENT ON COLUMN crp_pfd_honoraria.honorariadatetext IS 'Date the actvity was performed';
COMMENT ON COLUMN crp_pfd_honoraria.honorariaamt IS 'value of honoraria paid';
COMMENT ON COLUMN crp_pfd_honoraria.honorariaamttext IS 'value of honoraria paid';
COMMENT ON COLUMN crp_pfd_honoraria.dupe IS '"D" if record is duplicated in same or subsequent reports and should not be calculated or displayed. ';


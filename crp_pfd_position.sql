-- Table: crp_pfd_position

-- DROP TABLE crp_pfd_position;

CREATE TABLE crp_pfd_position
(
  id text NOT NULL, -- Unique id within a year.
  chamber text, -- Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch
  cid text, -- Unique id for each filer.
  calendaryear text, -- Calendar year that is covered by report and that this record applies to.
  reporttype text, -- Y for Annual report, A for Amendment, N for nominee or candidate, T for Termination
  previouspositions text, -- No description given and doesnt appear in p45 of userguide
  positionheld text, -- Position held with organization listed in PositionOrg
  positionorg text, -- Organization with which position is held
  orgname text, -- Standardized version of PositionOrg
  ultorg text, -- Standardized parent organization of PositionOrg
  realcode text, -- Industry code of PositionOrg
  source text, -- Source used to determine Realcode
  positionorgloc text, -- City, State of PositionOrg
  positionorgtype text, -- Description of organization
  positionfromdate date, -- Date filer began holding this position
  positionfromdatetext text, -- Date filer began holding this position
  positiontodate date, -- Date filer stopped holding this position
  positiontodatetext text, -- Date filer stopped holding this position
  dupe text, -- "D" if record is duplicated in same or subsequent reports and should not be calculated or displayed.
  CONSTRAINT pk_crp_pfd_position PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_pfd_position.id IS 'Unique id within a year.';
COMMENT ON COLUMN crp_pfd_position.chamber IS 'Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch ';
COMMENT ON COLUMN crp_pfd_position.cid IS 'Unique id for each filer.';
COMMENT ON COLUMN crp_pfd_position.calendaryear IS 'Calendar year that is covered by report and that this record applies to.';
COMMENT ON COLUMN crp_pfd_position.reporttype IS 'Y for Annual report, A for Amendment, N for nominee or candidate, T for Termination';
COMMENT ON COLUMN crp_pfd_position.previouspositions IS 'No description given and doesnt appear in p45 of userguide';
COMMENT ON COLUMN crp_pfd_position.positionheld IS 'Position held with organization listed in PositionOrg';
COMMENT ON COLUMN crp_pfd_position.positionorg IS 'Organization with which position is held';
COMMENT ON COLUMN crp_pfd_position.orgname IS 'Standardized version of PositionOrg';
COMMENT ON COLUMN crp_pfd_position.ultorg IS 'Standardized parent organization of PositionOrg';
COMMENT ON COLUMN crp_pfd_position.realcode IS 'Industry code of PositionOrg';
COMMENT ON COLUMN crp_pfd_position.source IS 'Source used to determine Realcode';
COMMENT ON COLUMN crp_pfd_position.positionorgloc IS 'City, State of PositionOrg';
COMMENT ON COLUMN crp_pfd_position.positionorgtype IS 'Description of organization';
COMMENT ON COLUMN crp_pfd_position.positionfromdate IS 'Date filer began holding this position';
COMMENT ON COLUMN crp_pfd_position.positionfromdatetext IS 'Date filer began holding this position';
COMMENT ON COLUMN crp_pfd_position.positiontodate IS 'Date filer stopped holding this position';
COMMENT ON COLUMN crp_pfd_position.positiontodatetext IS 'Date filer stopped holding this position';
COMMENT ON COLUMN crp_pfd_position.dupe IS '"D" if record is duplicated in same or subsequent reports and should not be calculated or displayed. ';


-- Table: crp_lobby_agency

-- DROP TABLE crp_lobby_agency;

CREATE TABLE crp_lobby_agency
(
  uniqid text NOT NULL, -- Corresponds to a particular report from SOPR
  "agencyID" text NOT NULL, -- An agency unique identifier
  agency text, -- The government agency lobbied
  CONSTRAINT pk_crplobby_agency PRIMARY KEY (uniqid, "agencyID")
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_lobby_agency.uniqid IS 'Corresponds to a particular report from SOPR';
COMMENT ON COLUMN crp_lobby_agency."agencyID" IS 'An agency unique identifier';
COMMENT ON COLUMN crp_lobby_agency.agency IS 'The government agency lobbied';


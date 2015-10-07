-- Table: crp_lobbyists

-- DROP TABLE crp_lobbyists;

CREATE TABLE crp_lobbyists
(
  uniqid text NOT NULL, -- Corresponds to a particular report from SOPR
  lobbyist_raw text, -- Raw value of lobbyists name
  lobbyist text, -- Standardized lobbyist
  lobbyist_id text, -- An ID assigned to each unique lobbyist
  year text, -- The year
  officialposition text, -- Any previous government official position the individual lobbyist had
  cid text, -- An ID assigned to members of congress and federal candidates. It will have a value if the lobbyist is a former member of congress
  formercongmem text, -- Notes whether the lobbyist is a former member.
  CONSTRAINT pk_crp_lobbyists PRIMARY KEY (uniqid)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_lobbyists.uniqid IS 'Corresponds to a particular report from SOPR ';
COMMENT ON COLUMN crp_lobbyists.lobbyist_raw IS 'Raw value of lobbyists name';
COMMENT ON COLUMN crp_lobbyists.lobbyist IS 'Standardized lobbyist';
COMMENT ON COLUMN crp_lobbyists.lobbyist_id IS 'An ID assigned to each unique lobbyist';
COMMENT ON COLUMN crp_lobbyists.year IS 'The year';
COMMENT ON COLUMN crp_lobbyists.officialposition IS 'Any previous government official position the individual lobbyist had ';
COMMENT ON COLUMN crp_lobbyists.cid IS 'An ID assigned to members of congress and federal candidates. It will have a value if the lobbyist is a former member of congress ';
COMMENT ON COLUMN crp_lobbyists.formercongmem IS 'Notes whether the lobbyist is a former member. ';


-- Table: crp_lobbyissue

-- DROP TABLE crp_lobbyissue;

CREATE TABLE crp_lobbyissue
(
  si_id bigint NOT NULL, -- Unique identifier for this table
  uniqid text NOT NULL, -- Corresponds to a particular report from SOPR
  issueid text NOT NULL, -- A three-letter code corresponding to the general issue area.
  issue text, -- The long version of the three letter general issue.
  specificissue text, -- The specific issue.
  year text, -- The year
  CONSTRAINT pk_crp_lobbyissue PRIMARY KEY (si_id)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_lobbyissue.si_id IS 'Unique identifier for this table ';
COMMENT ON COLUMN crp_lobbyissue.uniqid IS 'Corresponds to a particular report from SOPR ';
COMMENT ON COLUMN crp_lobbyissue.issueid IS 'A three-letter code corresponding to the general issue area. ';
COMMENT ON COLUMN crp_lobbyissue.issue IS 'The long version of the three letter general issue. 
';
COMMENT ON COLUMN crp_lobbyissue.specificissue IS 'The specific issue.';
COMMENT ON COLUMN crp_lobbyissue.year IS 'The year';


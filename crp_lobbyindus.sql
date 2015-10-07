-- Table: crp_lobbyindus

-- DROP TABLE crp_lobbyindus;

CREATE TABLE crp_lobbyindus
(
  client text, -- Standardized client company.
  sub text, -- Standardized subsidiary
  total money, -- Total amount by catcode
  year text, -- The year.
  catcode text -- The standard five character code identifying the donor’s industry or ideology.
)
WITH (
  OIDS=FALSE
);


COMMENT ON COLUMN crp_lobbyindus.client IS 'Standardized client company.';
COMMENT ON COLUMN crp_lobbyindus.sub IS 'Standardized subsidiary';
COMMENT ON COLUMN crp_lobbyindus.total IS 'Total amount by catcode';
COMMENT ON COLUMN crp_lobbyindus.year IS 'The year.';
COMMENT ON COLUMN crp_lobbyindus.catcode IS 'The standard five character code identifying the donor’s industry or ideology. ';


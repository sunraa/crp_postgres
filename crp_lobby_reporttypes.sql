-- Table: crp_lobby_reporttypes

-- DROP TABLE crp_lobby_reporttypes;

CREATE TABLE crp_lobby_reporttypes
(
  typelong text NOT NULL,
  typecode text NOT NULL,
  CONSTRAINT pk_crp_lobby_reporttypes PRIMARY KEY (typecode, typelong)
)
WITH (
  OIDS=FALSE
);

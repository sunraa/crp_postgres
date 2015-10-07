-- Table: crp_lobby_bills

-- DROP TABLE crp_lobby_bills;

CREATE TABLE crp_lobby_bills
(
  b_id bigint, -- A bill unique identifier
  si_id bigint, -- It is the specific issue unique identifier. It is a foreign key on this table
  congno text, -- Congress number
  bill_name text NOT NULL, -- The bill name
  CONSTRAINT pk_crp_lobby_bills PRIMARY KEY (bill_name)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_lobby_bills.b_id IS 'A bill unique identifier';
COMMENT ON COLUMN crp_lobby_bills.si_id IS 'It is the specific issue unique identifier. It is a foreign key on this table';
COMMENT ON COLUMN crp_lobby_bills.congno IS 'Congress number';
COMMENT ON COLUMN crp_lobby_bills.bill_name IS 'The bill name';


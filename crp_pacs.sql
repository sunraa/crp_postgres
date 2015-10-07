-- Table: crp_pacs

-- DROP TABLE crp_pacs;

CREATE TABLE crp_pacs
(
  cycle text NOT NULL, -- Last year (even year) of the federal 2-year election cycle
  fecrecno text NOT NULL, -- The committee id number for the PAC making the contribution.
  pacid text NOT NULL, -- The committee id number for the PAC making the contribution.
  cid text, -- A unique identifier for candidates that is constant throughout cycles.
  amount money, -- The amount contributed. This will be negative for refunds.
  date date, -- The reported date of the contribution.
  realcode text, -- The standard five character code identifying the donor’s industry or ideology. Usually based on Primcode. Sometimes a PAC sponsor will have secondary interests which may replace the main realcode depending on recipient. For example, Boeing is primarily Air Transport but has Air Defense interests. Thus Boeing contributions to members of the Armed Services committee would have a realcode of Air Defense.
  type text, -- The transaction type code for the contribution. 24A is an Independent Expenditure against the candidate, 24C is a coordinated expenditure, 24E is an independent expenditure for the candidate, 24F is a communication cost for the candidate, 24K is a direct contribution, 24N is a communication cost against the candidate and 24Z is an in kind contribution
  "DI" text, -- Whether the contribution is direct (“D”) or indirect (“I.”). Indirect contributions include independent expenditures and communications costs, are not subject to contribution limits and must be made completely independently of the candidate. Indirect contributions can also be against the candidate.
  feccandid text, -- FECCandID of candidate
  CONSTRAINT pk_pacs PRIMARY KEY (cycle, fecrecno, pacid)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_pacs.cycle IS 'Last year (even year) of the federal 2-year election cycle ';
COMMENT ON COLUMN crp_pacs.fecrecno IS 'The committee id number for the PAC making the contribution. ';
COMMENT ON COLUMN crp_pacs.pacid IS 'The committee id number for the PAC making the contribution. ';
COMMENT ON COLUMN crp_pacs.cid IS 'A unique identifier for candidates that is constant throughout cycles. 
';
COMMENT ON COLUMN crp_pacs.amount IS 'The amount contributed. This will be negative for refunds. ';
COMMENT ON COLUMN crp_pacs.date IS 'The reported date of the contribution. 
';
COMMENT ON COLUMN crp_pacs.realcode IS 'The standard five character code identifying the donor’s industry or ideology. Usually based on Primcode. Sometimes a PAC sponsor will have secondary interests which may replace the main realcode depending on recipient. For example, Boeing is primarily Air Transport but has Air Defense interests. Thus Boeing contributions to members of the Armed Services committee would have a realcode of Air Defense. ';
COMMENT ON COLUMN crp_pacs.type IS 'The transaction type code for the contribution. 24A is an Independent Expenditure against the candidate, 24C is a coordinated expenditure, 24E is an independent expenditure for the candidate, 24F is a communication cost for the candidate, 24K is a direct contribution, 24N is a communication cost against the candidate and 24Z is an in kind contribution ';
COMMENT ON COLUMN crp_pacs."DI" IS 'Whether the contribution is direct (“D”) or indirect (“I.”). Indirect contributions include independent expenditures and communications costs, are not subject to contribution limits and must be made completely independently of the candidate. Indirect contributions can also be against the candidate. ';
COMMENT ON COLUMN crp_pacs.feccandid IS 'FECCandID of candidate';


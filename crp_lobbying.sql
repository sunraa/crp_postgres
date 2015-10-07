-- Table: crp_lobbying

-- DROP TABLE crp_lobbying;

CREATE TABLE crp_lobbying
(
  uniqid text NOT NULL, -- Corresponds to a particular report from SOPR
  registrant_raw text, -- Raw registrant
  registrant text, -- Standardized registrant
  isfirm text, -- Notes whether or not the firm is a lobbying firm.
  client_raw text, -- Raw client
  client text, -- Standardized client.
  ultorg text, -- Parent company to the client
  amount money, -- Lobbying income/expenses
  catcode text, -- The standard five character code identifying the donor’s industry or ideology.
  source text, -- source of catcode
  self text, -- Indicate type of filing: n means a non self filer parent. m means a non self filer subsidiary for a non self filer parent. x means self filer subsidiary for a non self filer parent p means a self filer parent i means a non self filer for a self filer parent that has same catorder as the parent s means a self filer subsidiary for a self filer parent e means a non self filer subsidiary for a self file subsidiary. Don't count this unless the e is bigger than the s c means a non self filer subsidiary for a self filer parent with same catorder. Count it in both total and industry when IncludeNSFS is null. Don't count it in total or industry when IncludeNSFS=y b means a non self filer subsidiary for a self filer parent that has different catorder. Count it in both total and industry when IncludeNSFS is null. Exclude from total and include in indus but mines it from the total of the parent when IncludeNSFS=y
  includensfs text, -- To indicate if the filer included its non self filers affiliates activities
  use text, -- To indicate if this report should be used or ignored. The general method is to use the latest report.
  ind text, -- To indicate if the amount on this report should be included to calculate industry totals.
  year text, -- The year
  type text, -- A CRP short version of reports’ types. Look at the reference table “ReportTypes” for possible values
  typelong text, -- The long version of reports’ types. Look at the reference table “ReportTypes” for possible values
  affiliate text, -- To indicate if the major political contributor is an affiliate or not
  CONSTRAINT pk_crp_lobbying PRIMARY KEY (uniqid)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_lobbying.uniqid IS 'Corresponds to a particular report from SOPR ';
COMMENT ON COLUMN crp_lobbying.registrant_raw IS 'Raw registrant';
COMMENT ON COLUMN crp_lobbying.registrant IS 'Standardized registrant';
COMMENT ON COLUMN crp_lobbying.isfirm IS 'Notes whether or not the firm is a lobbying firm.';
COMMENT ON COLUMN crp_lobbying.client_raw IS 'Raw client';
COMMENT ON COLUMN crp_lobbying.client IS 'Standardized client.';
COMMENT ON COLUMN crp_lobbying.ultorg IS 'Parent company to the client';
COMMENT ON COLUMN crp_lobbying.amount IS 'Lobbying income/expenses';
COMMENT ON COLUMN crp_lobbying.catcode IS 'The standard five character code identifying the donor’s industry or ideology. ';
COMMENT ON COLUMN crp_lobbying.source IS 'source of catcode';
COMMENT ON COLUMN crp_lobbying.self IS 'Indicate type of filing: n means a non self filer parent. m means a non self filer subsidiary for a non self filer parent. x means self filer subsidiary for a non self filer parent p means a self filer parent i means a non self filer for a self filer parent that has same catorder as the parent s means a self filer subsidiary for a self filer parent e means a non self filer subsidiary for a self file subsidiary. Don''t count this unless the e is bigger than the s c means a non self filer subsidiary for a self filer parent with same catorder. Count it in both total and industry when IncludeNSFS is null. Don''t count it in total or industry when IncludeNSFS=y b means a non self filer subsidiary for a self filer parent that has different catorder. Count it in both total and industry when IncludeNSFS is null. Exclude from total and include in indus but mines it from the total of the parent when IncludeNSFS=y ';
COMMENT ON COLUMN crp_lobbying.includensfs IS 'To indicate if the filer included its non self filers affiliates activities ';
COMMENT ON COLUMN crp_lobbying.use IS 'To indicate if this report should be used or ignored. The general method is to use the latest report. ';
COMMENT ON COLUMN crp_lobbying.ind IS 'To indicate if the amount on this report should be included to calculate industry totals. ';
COMMENT ON COLUMN crp_lobbying.year IS 'The year';
COMMENT ON COLUMN crp_lobbying.type IS 'A CRP short version of reports’ types. Look at the reference table “ReportTypes” for possible values ';
COMMENT ON COLUMN crp_lobbying.typelong IS 'The long version of reports’ types. Look at the reference table “ReportTypes” for possible values ';
COMMENT ON COLUMN crp_lobbying.affiliate IS 'To indicate if the major political contributor is an affiliate or not ';


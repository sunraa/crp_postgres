-- Table: crp_527_cmtes527

-- DROP TABLE crp_527_cmtes527;

CREATE TABLE crp_527_cmtes527
(
  cycle text, -- Last year (even year) of the federal 2-year election cycle
  rpt text, -- Indicates reporting period. First two characters indicate the quarter (e.g., Q3) and last two characters indicate year (e.g., 03)
  ein text NOT NULL, -- ID assigned to each 527 committee by IRS
  crp527name text, -- Standardized committee name based on 527’s sponsor.
  affiliate text, -- Usually blank. For leadpacs, shows the sponsoring member.
  ultorg text, -- The standardized parent organization for the organization listed in the CRP527Name field. If there is no parent identified, this field will be equal to CRP527Name.
  recipcode text, -- A two-character code defining the type of recipient. For candidates, the first character is party (“D” for Democratic, “R” for Republican, “3” for Independent, Libertarian or third party, “U” for Unknown.) The second character is “W” for Winner, “L” for Loser, “I” for incumbent, “C” for Challenger, “O” for “Open Seat”, and “N” for Non-incumbent. “N” is reserved for candidates that are neither in office nor running during the cycle in question. For party committees, the first character is party and the second character is “P.” For PACs, the first character is “P” and for outside spending groups, "O". For both, the second character is “B” for Business, “L” for Labor”, “I” for Ideological, “O” for “Other” and “U” for unknown.
  cmteid text, -- FEC id for PAC if the same organization also has a PAC.
  cid text,
  eccmteid text, -- FEC id for electioneering communications PAC if the same organization also has one.
  party text, -- (D,R,3,I,L, U) Will be null or empty if committee is not a party, joint fundraising, leadership or candidate committee.
  primcode text, -- The standard five character code identifying the committee’s industry or ideology.
  source text, -- Indicates how the PrimCode was determined.
  ffreq text, -- "Q" if the 527 files quarterly, "M" if it files monthly.
  ctype text, -- Committee type indicates whether the 527 is focused on state level politics ("S") or federal level ("F"). "U" is unknown.
  csource text, -- Source used to determine Ctype.
  viewpt text, -- "L" for liberal, "C" for conservative, "N" for none, "U" for unknown
  comments text, -- Additional information about the 527, including web addresses, sources of information, and other notes about the organization.
  state text, -- State where organization is based.
  CONSTRAINT pk_crp_527_cmtes527 PRIMARY KEY (ein)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_527_cmtes527.cycle IS 'Last year (even year) of the federal 2-year election cycle ';
COMMENT ON COLUMN crp_527_cmtes527.rpt IS 'Indicates reporting period. First two characters indicate the quarter (e.g., Q3) and last two characters indicate year (e.g., 03) ';
COMMENT ON COLUMN crp_527_cmtes527.ein IS 'ID assigned to each 527 committee by IRS ';
COMMENT ON COLUMN crp_527_cmtes527.crp527name IS 'Standardized committee name based on 527’s sponsor. ';
COMMENT ON COLUMN crp_527_cmtes527.affiliate IS 'Usually blank. For leadpacs, shows the sponsoring member. ';
COMMENT ON COLUMN crp_527_cmtes527.ultorg IS 'The standardized parent organization for the organization listed in the CRP527Name field. If there is no parent identified, this field will be equal to CRP527Name. ';
COMMENT ON COLUMN crp_527_cmtes527.recipcode IS 'A two-character code defining the type of recipient. For candidates, the first character is party (“D” for Democratic, “R” for Republican, “3” for Independent, Libertarian or third party, “U” for Unknown.) The second character is “W” for Winner, “L” for Loser, “I” for incumbent, “C” for Challenger, “O” for “Open Seat”, and “N” for Non-incumbent. “N” is reserved for candidates that are neither in office nor running during the cycle in question. For party committees, the first character is party and the second character is “P.” For PACs, the first character is “P” and for outside spending groups, "O". For both, the second character is “B” for Business, “L” for Labor”, “I” for Ideological, “O” for “Other” and “U” for unknown. ';
COMMENT ON COLUMN crp_527_cmtes527.cmteid IS 'FEC id for PAC if the same organization also has a PAC. ';
COMMENT ON COLUMN crp_527_cmtes527.eccmteid IS 'FEC id for electioneering communications PAC if the same organization also has one. ';
COMMENT ON COLUMN crp_527_cmtes527.party IS '(D,R,3,I,L, U) Will be null or empty if committee is not a party, joint fundraising, leadership or candidate committee. ';
COMMENT ON COLUMN crp_527_cmtes527.primcode IS 'The standard five character code identifying the committee’s industry or ideology. ';
COMMENT ON COLUMN crp_527_cmtes527.source IS 'Indicates how the PrimCode was determined. ';
COMMENT ON COLUMN crp_527_cmtes527.ffreq IS '"Q" if the 527 files quarterly, "M" if it files monthly. ';
COMMENT ON COLUMN crp_527_cmtes527.ctype IS 'Committee type indicates whether the 527 is focused on state level politics ("S") or federal level ("F"). "U" is unknown. ';
COMMENT ON COLUMN crp_527_cmtes527.csource IS 'Source used to determine Ctype. ';
COMMENT ON COLUMN crp_527_cmtes527.viewpt IS '"L" for liberal, "C" for conservative, "N" for none, "U" for unknown ';
COMMENT ON COLUMN crp_527_cmtes527.comments IS 'Additional information about the 527, including web addresses, sources of information, and other notes about the organization. ';
COMMENT ON COLUMN crp_527_cmtes527.state IS 'State where organization is based. ';


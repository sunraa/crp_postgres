-- Table: crp_candidates

-- DROP TABLE crp_candidates;

CREATE TABLE crp_candidates
(
  cycle text NOT NULL, -- Last year (even year) of the federal two year election cycle.
  feccandid text NOT NULL, -- Assigned by FEC and selected by CRP as the active, should multiples exist.
  cid text, -- Unique identifier for each candidate. Every candidate should have one and only one CID throughout all cycles. Recipid for candidates is based on CID.
  firstlastp text, -- Candidate name in format of firstname lastname and party in parens, like Steve Kagen (D).
  party text, -- The party of the candidate. “D” for Democratic, “R” for Republican”, “I” for Independent, “L” for Libertarian”, “3” for other third party and “U” for Unknown.
  distidrunfor text, -- Four character identifier of the office sought by the candidate. For congressional races, the first two characters are the state and the next two are the district for House candidates and “S1” or “S2” for Senate candidates. “PRES” indicates a presidential candidate.
  distidcurr text, -- Four character identifier of the office currently held (if any) by the candidate. For House members, the first two characters are the state and the next two are the district. For Senators the first two characters are the state and the last two characters are “S1” or “S2”. “PRES” indicates a presidential candidate. For non-incumbents, this field is blank. If a member of Congress dies or leaves office, this field should become blank. This field is frozen on election day. For cycles prior to the current cycle, DistidCurr reflects office held on Election Day of the Cycle.
  currcand text, -- This field indicates whether the candidate is currently running for federal office – “Y” means yes, otherwise this field is blank. If a candidate loses a primary or drops out of the race, this field becomes blank. This field is frozen on Election Day, and thus for previous cycles can be used to show the candidate who ran in the general election.
  cyclecand text, -- This field indicates whether the candidate ever ran for federal office during the cycle in question. Like CurrCand, “Y” means yes and blank means no. This field should be “Y” for any candidate who filed to run for office or otherwise formally declared intention to run. This does NOT change if the candidate drops out or loses a primary. Be aware that we’ve tightened the definition in recent cycles – for older data, CycleCand is likely to cast a broader net. Also note that incumbents are usually assumed to be running for re-election and get a “Y” in CycleCand unless there is evidence to the contrary.
  crpico text, -- Identifies type of candidate – “I” is incumbent, “C” is challenger, “O” is open seat. This may be blank if the candidate is neither a member of Congress nor running this cycle. Note this is based on the office sought. A House incumbent running for the Senate would have a CRPICO of “C” or “O”, not “I.”
  recipcode text, -- A two-character code defining the type of candidate. The first character is party (“D” for Democratic, “R” for Republican, “3” for Independent, Libertarian or third party, “U” for Unknown.) The second character is “W” for Winner, “L” for Loser, “I” for incumbent, “C” for Challenger, “O” for “Open Seat”, and “N” for Non-incumbent. Incumbent, Challenger and Open Seat are based on CRPICO. “N” is reserved for candidates that are neither in office nor running during the cycle in question. This lives in dbo_CandsCRP.
  nopacs text, -- Indicates whether candidate has publicly committed to forego contributions from PACs
  CONSTRAINT pk_crp_candidates PRIMARY KEY (cycle, feccandid)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_candidates.cycle IS 'Last year (even year) of the federal two year election cycle.';
COMMENT ON COLUMN crp_candidates.feccandid IS 'Assigned by FEC and selected by CRP as the active, should multiples exist. ';
COMMENT ON COLUMN crp_candidates.cid IS 'Unique identifier for each candidate. Every candidate should have one and only one CID throughout all cycles. Recipid for candidates is based on CID. ';
COMMENT ON COLUMN crp_candidates.firstlastp IS 'Candidate name in format of firstname lastname and party in parens, like Steve Kagen (D).';
COMMENT ON COLUMN crp_candidates.party IS 'The party of the candidate. “D” for Democratic, “R” for Republican”, “I” for Independent, “L” for Libertarian”, “3” for other third party and “U” for Unknown. ';
COMMENT ON COLUMN crp_candidates.distidrunfor IS 'Four character identifier of the office sought by the candidate. For congressional races, the first two characters are the state and the next two are the district for House candidates and “S1” or “S2” for Senate candidates. “PRES” indicates a presidential candidate. ';
COMMENT ON COLUMN crp_candidates.distidcurr IS 'Four character identifier of the office currently held (if any) by the candidate. For House members, the first two characters are the state and the next two are the district. For Senators the first two characters are the state and the last two characters are “S1” or “S2”. “PRES” indicates a presidential candidate. For non-incumbents, this field is blank. If a member of Congress dies or leaves office, this field should become blank. This field is frozen on election day. For cycles prior to the current cycle, DistidCurr reflects office held on Election Day of the Cycle. ';
COMMENT ON COLUMN crp_candidates.currcand IS 'This field indicates whether the candidate is currently running for federal office – “Y” means yes, otherwise this field is blank. If a candidate loses a primary or drops out of the race, this field becomes blank. This field is frozen on Election Day, and thus for previous cycles can be used to show the candidate who ran in the general election. ';
COMMENT ON COLUMN crp_candidates.cyclecand IS 'This field indicates whether the candidate ever ran for federal office during the cycle in question. Like CurrCand, “Y” means yes and blank means no. This field should be “Y” for any candidate who filed to run for office or otherwise formally declared intention to run. This does NOT change if the candidate drops out or loses a primary. Be aware that we’ve tightened the definition in recent cycles – for older data, CycleCand is likely to cast a broader net. Also note that incumbents are usually assumed to be running for re-election and get a “Y” in CycleCand unless there is evidence to the contrary. ';
COMMENT ON COLUMN crp_candidates.crpico IS 'Identifies type of candidate – “I” is incumbent, “C” is challenger, “O” is open seat. This may be blank if the candidate is neither a member of Congress nor running this cycle. Note this is based on the office sought. A House incumbent running for the Senate would have a CRPICO of “C” or “O”, not “I.” ';
COMMENT ON COLUMN crp_candidates.recipcode IS 'A two-character code defining the type of candidate. The first character is party (“D” for Democratic, “R” for Republican, “3” for Independent, Libertarian or third party, “U” for Unknown.) The second character is “W” for Winner, “L” for Loser, “I” for incumbent, “C” for Challenger, “O” for “Open Seat”, and “N” for Non-incumbent. Incumbent, Challenger and Open Seat are based on CRPICO. “N” is reserved for candidates that are neither in office nor running during the cycle in question. This lives in dbo_CandsCRP. ';
COMMENT ON COLUMN crp_candidates.nopacs IS 'Indicates whether candidate has publicly committed to forego contributions from PACs ';


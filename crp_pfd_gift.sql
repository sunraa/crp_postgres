-- Table: crp_pfd_gift

-- DROP TABLE crp_pfd_gift;

CREATE TABLE crp_pfd_gift
(
  id text NOT NULL, -- Unique id within a year.
  chamber text, -- Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch
  cid text, -- Unique id for each filer.
  calendaryear text, -- Calendar year that is covered by report and that this record applies to.
  reporttype text, -- Y for Annual report, A for Amendment, N for nominee or candidate, T for Termination
  giftspousejointdep text, -- Gift recipient is filer jointly with spouse, spouse alone, or dependent child or empty presumes filer was recipient.
  giftsource text, -- Organization or individual who made the gift as reported by filer
  orgname text, -- Standardized GiftSource
  ultorg text, -- Standardized parent organization of GiftSource
  realcode text, -- Industry code for GiftSource
  source text, -- Source used to determine Realcode
  giftlocation text, -- City, State of Giftsource
  giftdate date, -- Date the gift was given
  giftdatetext text, -- Date the gift was given
  giftdescrip text, -- Description of gift
  giftinfo text, -- Additional info about gift
  giftvalue money, -- value of gift
  giftvaluetext text, -- value of gift
  dupe text, -- "D" if record is duplicated in same or subsequent reports and should not be calculated or displayed.
  CONSTRAINT pk_crp_pfd_gift PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_pfd_gift.id IS 'Unique id within a year.';
COMMENT ON COLUMN crp_pfd_gift.chamber IS 'Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch ';
COMMENT ON COLUMN crp_pfd_gift.cid IS 'Unique id for each filer.';
COMMENT ON COLUMN crp_pfd_gift.calendaryear IS 'Calendar year that is covered by report and that this record applies to.';
COMMENT ON COLUMN crp_pfd_gift.reporttype IS 'Y for Annual report, A for Amendment, N for nominee or candidate, T for Termination';
COMMENT ON COLUMN crp_pfd_gift.giftspousejointdep IS 'Gift recipient is filer jointly with spouse, spouse alone, or dependent child or empty presumes filer was recipient.';
COMMENT ON COLUMN crp_pfd_gift.giftsource IS 'Organization or individual who made the gift as reported by filer';
COMMENT ON COLUMN crp_pfd_gift.orgname IS 'Standardized GiftSource';
COMMENT ON COLUMN crp_pfd_gift.ultorg IS 'Standardized parent organization of GiftSource';
COMMENT ON COLUMN crp_pfd_gift.realcode IS 'Industry code for GiftSource';
COMMENT ON COLUMN crp_pfd_gift.source IS 'Source used to determine Realcode';
COMMENT ON COLUMN crp_pfd_gift.giftlocation IS 'City, State of Giftsource';
COMMENT ON COLUMN crp_pfd_gift.giftdate IS 'Date the gift was given';
COMMENT ON COLUMN crp_pfd_gift.giftdatetext IS 'Date the gift was given';
COMMENT ON COLUMN crp_pfd_gift.giftdescrip IS 'Description of gift';
COMMENT ON COLUMN crp_pfd_gift.giftinfo IS 'Additional info about gift';
COMMENT ON COLUMN crp_pfd_gift.giftvalue IS 'value of gift';
COMMENT ON COLUMN crp_pfd_gift.giftvaluetext IS 'value of gift';
COMMENT ON COLUMN crp_pfd_gift.dupe IS '"D" if record is duplicated in same or subsequent reports and should not be calculated or displayed. ';


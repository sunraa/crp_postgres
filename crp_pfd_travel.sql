-- Table: crp_pfd_travel

-- DROP TABLE crp_pfd_travel;

CREATE TABLE crp_pfd_travel
(
  id text NOT NULL, -- unique id within a year
  chamber text, -- Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch
  cid text, -- Unique id for each filer.
  calenderyear text, -- Year covered by report
  reporttype text, -- "Y" for annual report, "A" for amendment, "N" for nominee or candidate, "T" for termination
  travelsource text, -- Travel sponsor as reported by filer
  orgname text, -- standardized version of TravelSource
  ultorg text, -- Standardized parent organization of TravelSource
  realcode text, -- Industry code for TravelSource
  source text, -- Source used to determine Realcode
  sourcecity text, -- City where TravelSource is located
  sourcestate text, -- State where TravelSource is located
  begindate date, -- Date that trip began
  begindatetext text, -- Date that trip began
  enddate date, -- Date that trip ended
  enddatetext text, -- Date that trip ended
  departcity text, -- City from which filer traveled to start trip
  departstate text, -- State from which filer traveled to start trip
  destcity text, -- Destination city where trip took place
  deststate text, -- Destination state where trip took place
  pofrcity text, -- City that filer returned to at end of trip (point of return)
  pofrstate text, -- City that filer returned to at end of trip (point of return)
  descrip text, -- Description of trip and purpose
  lodging text, -- Was lodging provided by TravelSource during the trip
  food text, -- Was food provided by TravelSource during the trip
  familyincl text, -- Was travel for family members also provided by TravelSource
  timeatownexpense text, -- Description of portions of trip that were paid for at filers expense
  dupe text, -- "D" if record is duplicated in same or subsequent reports and should not be calculated or displayed.
  CONSTRAINT pk_crp_pfd_travel PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_pfd_travel.id IS 'unique id within a year';
COMMENT ON COLUMN crp_pfd_travel.chamber IS 'Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch ';
COMMENT ON COLUMN crp_pfd_travel.cid IS 'Unique id for each filer.';
COMMENT ON COLUMN crp_pfd_travel.calenderyear IS 'Year covered by report';
COMMENT ON COLUMN crp_pfd_travel.reporttype IS '"Y" for annual report, "A" for amendment, "N" for nominee or candidate, "T" for termination';
COMMENT ON COLUMN crp_pfd_travel.travelsource IS 'Travel sponsor as reported by filer';
COMMENT ON COLUMN crp_pfd_travel.orgname IS 'standardized version of TravelSource';
COMMENT ON COLUMN crp_pfd_travel.ultorg IS 'Standardized parent organization of TravelSource';
COMMENT ON COLUMN crp_pfd_travel.realcode IS 'Industry code for TravelSource';
COMMENT ON COLUMN crp_pfd_travel.source IS 'Source used to determine Realcode';
COMMENT ON COLUMN crp_pfd_travel.sourcecity IS 'City where TravelSource is located';
COMMENT ON COLUMN crp_pfd_travel.sourcestate IS 'State where TravelSource is located';
COMMENT ON COLUMN crp_pfd_travel.begindate IS 'Date that trip began';
COMMENT ON COLUMN crp_pfd_travel.begindatetext IS 'Date that trip began';
COMMENT ON COLUMN crp_pfd_travel.enddate IS 'Date that trip ended';
COMMENT ON COLUMN crp_pfd_travel.enddatetext IS 'Date that trip ended';
COMMENT ON COLUMN crp_pfd_travel.departcity IS 'City from which filer traveled to start trip';
COMMENT ON COLUMN crp_pfd_travel.departstate IS 'State from which filer traveled to start trip';
COMMENT ON COLUMN crp_pfd_travel.destcity IS 'Destination city where trip took place';
COMMENT ON COLUMN crp_pfd_travel.deststate IS 'Destination state where trip took place';
COMMENT ON COLUMN crp_pfd_travel.pofrcity IS 'City that filer returned to at end of trip (point of return)';
COMMENT ON COLUMN crp_pfd_travel.pofrstate IS 'City that filer returned to at end of trip (point of return)';
COMMENT ON COLUMN crp_pfd_travel.descrip IS 'Description of trip and purpose';
COMMENT ON COLUMN crp_pfd_travel.lodging IS 'Was lodging provided by TravelSource during the trip';
COMMENT ON COLUMN crp_pfd_travel.food IS 'Was food provided by TravelSource during the trip';
COMMENT ON COLUMN crp_pfd_travel.familyincl IS 'Was travel for family members also provided by TravelSource';
COMMENT ON COLUMN crp_pfd_travel.timeatownexpense IS 'Description of portions of trip that were paid for at filers expense ';
COMMENT ON COLUMN crp_pfd_travel.dupe IS '"D" if record is duplicated in same or subsequent reports and should not be calculated or displayed. ';


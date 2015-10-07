-- Table: crp_pfd_asset

-- DROP TABLE crp_pfd_asset;

CREATE TABLE crp_pfd_asset
(
  id text NOT NULL, -- In combination with CalendarYear, the primary key. Starting with a letter, followed by two digits indicating the year, and then a 7 digit ID number. With the addition of the year in the ID, these should be unique by themselves but as of now cannot be assumed to be so.
  chamber text, -- Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch
  cid text, -- Unique CRP identifier for each candidate or executive branch member
  calendaryear text NOT NULL, -- Year covered by report
  reporttype text, -- Indicates if the report is an Annual Filing (Y), an Amendment (A), or a Termination (T)
  senab text, -- Senate forms separate publicly traded assets (A) and non-publicly traded assets (B)
  assetspousejointdep text, -- Indicates whether an asset belongs to the filers spouse (S), a dependent child (D), or is held jointly (J). If null we assume it is held by the filer.
  assetsource text, -- Name of asset or account as reported by filer. If assets are held within an account, the name of the account appears here. If not, the asset itself will appear here.
  orgname text, -- Standardized version of AssetSource
  ultorg text, -- Standardized parent organization of AssetSource. If none, this field will be null or empty.
  realcode text, -- Industry code for AssetSource
  source text, -- Source used to determine Realcode
  assetdescrip text, -- Name of asset as reported by filer. Actual assets, when they are held in an account.
  orgname2 text, -- Standardized version of AssetDescrip
  ultorg2 text, -- Standardized parent organization of AssetDescrip. If none, this field will be null or empty.
  realcode2 text, -- Industry code for AssetDescrip
  source2 text, -- source used to determine realcode2
  assetsourcelocation text, -- Combines City, State info into one field
  assetvalue text, -- Value range of asset as reported by filer
  assetexactvalue money, -- Exact value of asset when provided.
  assetdividends text, -- Asset produced Dividend income
  assetrent text, -- Asset produced Rental income.
  assetinterest text, -- Asset produced Interest income
  assetcapitalgains text, -- Asset produced Capital Gains income
  assetexemptedfund text, -- Income from an exempted fund. (“mutual fund, common trust fund of a bank, pension or deferred compensation plan, or any other investment fund, which is: 1)widely held...2)publicly traded...or widely diversified; and 3)held under circumstances where you neither exercise control over nor have the ability to exercise control over the financial interests held by the fund.”) Applies to Senate & Exec forms only
  assetexemptedtrust text, -- Income from an exempted trust
  assetqualifiedblindtrust text, -- Income from a qualified blind trust
  assettypecrp text, -- Type of investment. Stock, real estate, etc. Used to determine which to count in industry totals.
  othertypeincome text, -- Other than Div, Rent, Interest, CG
  assetincomeamtrange text, -- Indicates how much income was produced by asset.
  assetincomeamounttext text, -- Description of income amount or raw version of Text 50 Report precise amount in AssetIncomeAmt
  assetincomeamt money, -- Precise numbers when available
  assetpurchased text, -- Asset was purchased during reporting period
  assetsold text, -- Asset was sold during reporting period
  assetexchanged text, -- Asset was exchanged during reporting period
  date date, -- Date provided by filer
  datetext text, -- Alternate date value
  assetnotes text, -- Comments or further information
  dupe text, -- "D" if record is duplicated in same or subsequent reports and should not be calculated or displayed
  CONSTRAINT pd_crp_pfd_asset PRIMARY KEY (id, calendaryear)
)
WITH (
  OIDS=FALSE
);



COMMENT ON COLUMN crp_pfd_asset.id IS 'In combination with CalendarYear, the primary key. Starting with a letter, followed by two digits indicating the year, and then a 7 digit ID number. With the addition of the year in the ID, these should be unique by themselves but as of now cannot be assumed to be so. ';
COMMENT ON COLUMN crp_pfd_asset.chamber IS 'Refers to chamber the report was filed with. "H" for House, "S" for Senate, "E" for executive branch ';
COMMENT ON COLUMN crp_pfd_asset.cid IS 'Unique CRP identifier for each candidate or executive branch member ';
COMMENT ON COLUMN crp_pfd_asset.calendaryear IS 'Year covered by report ';
COMMENT ON COLUMN crp_pfd_asset.reporttype IS 'Indicates if the report is an Annual Filing (Y), an Amendment (A), or a Termination (T) ';
COMMENT ON COLUMN crp_pfd_asset.senab IS 'Senate forms separate publicly traded assets (A) and non-publicly traded assets (B) ';
COMMENT ON COLUMN crp_pfd_asset.assetspousejointdep IS 'Indicates whether an asset belongs to the filers spouse (S), a dependent child (D), or is held jointly (J). If null we assume it is held by the filer. ';
COMMENT ON COLUMN crp_pfd_asset.assetsource IS 'Name of asset or account as reported by filer. If assets are held within an account, the name of the account appears here. If not, the asset itself will appear here. ';
COMMENT ON COLUMN crp_pfd_asset.orgname IS 'Standardized version of AssetSource ';
COMMENT ON COLUMN crp_pfd_asset.ultorg IS 'Standardized parent organization of AssetSource. If none, this field will be null or empty. ';
COMMENT ON COLUMN crp_pfd_asset.realcode IS 'Industry code for AssetSource ';
COMMENT ON COLUMN crp_pfd_asset.source IS 'Source used to determine Realcode ';
COMMENT ON COLUMN crp_pfd_asset.assetdescrip IS 'Name of asset as reported by filer. Actual assets, when they are held in an account. ';
COMMENT ON COLUMN crp_pfd_asset.orgname2 IS 'Standardized version of AssetDescrip ';
COMMENT ON COLUMN crp_pfd_asset.ultorg2 IS 'Standardized parent organization of AssetDescrip. If none, this field will be null or empty. ';
COMMENT ON COLUMN crp_pfd_asset.realcode2 IS 'Industry code for AssetDescrip';
COMMENT ON COLUMN crp_pfd_asset.source2 IS 'source used to determine realcode2';
COMMENT ON COLUMN crp_pfd_asset.assetsourcelocation IS 'Combines City, State info into one field ';
COMMENT ON COLUMN crp_pfd_asset.assetvalue IS 'Value range of asset as reported by filer ';
COMMENT ON COLUMN crp_pfd_asset.assetexactvalue IS 'Exact value of asset when provided. ';
COMMENT ON COLUMN crp_pfd_asset.assetdividends IS 'Asset produced Dividend income ';
COMMENT ON COLUMN crp_pfd_asset.assetrent IS 'Asset produced Rental income.';
COMMENT ON COLUMN crp_pfd_asset.assetinterest IS 'Asset produced Interest income ';
COMMENT ON COLUMN crp_pfd_asset.assetcapitalgains IS 'Asset produced Capital Gains income ';
COMMENT ON COLUMN crp_pfd_asset.assetexemptedfund IS 'Income from an exempted fund. (“mutual fund, common trust fund of a bank, pension or deferred compensation plan, or any other investment fund, which is: 1)widely held...2)publicly traded...or widely diversified; and 3)held under circumstances where you neither exercise control over nor have the ability to exercise control over the financial interests held by the fund.”) Applies to Senate & Exec forms only';
COMMENT ON COLUMN crp_pfd_asset.assetexemptedtrust IS 'Income from an exempted trust ';
COMMENT ON COLUMN crp_pfd_asset.assetqualifiedblindtrust IS 'Income from a qualified blind trust ';
COMMENT ON COLUMN crp_pfd_asset.assettypecrp IS 'Type of investment. Stock, real estate, etc. Used to determine which to count in industry totals. ';
COMMENT ON COLUMN crp_pfd_asset.othertypeincome IS 'Other than Div, Rent, Interest, CG ';
COMMENT ON COLUMN crp_pfd_asset.assetincomeamtrange IS 'Indicates how much income was produced by asset. ';
COMMENT ON COLUMN crp_pfd_asset.assetincomeamounttext IS 'Description of income amount or raw version of Text 50 Report precise amount in AssetIncomeAmt ';
COMMENT ON COLUMN crp_pfd_asset.assetincomeamt IS 'Precise numbers when available ';
COMMENT ON COLUMN crp_pfd_asset.assetpurchased IS 'Asset was purchased during reporting period ';
COMMENT ON COLUMN crp_pfd_asset.assetsold IS 'Asset was sold during reporting period ';
COMMENT ON COLUMN crp_pfd_asset.assetexchanged IS 'Asset was exchanged during reporting period 
';
COMMENT ON COLUMN crp_pfd_asset.date IS 'Date provided by filer';
COMMENT ON COLUMN crp_pfd_asset.datetext IS 'Alternate date value';
COMMENT ON COLUMN crp_pfd_asset.assetnotes IS 'Comments or further information';
COMMENT ON COLUMN crp_pfd_asset.dupe IS '"D" if record is duplicated in same or subsequent reports and should not be calculated or displayed';


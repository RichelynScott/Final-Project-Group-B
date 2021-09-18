-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE "Fair Market Rent"

DROP TABLE "Graduation_Rates"

CREATE TABLE "Fair Market Rent" (
    "Year" INT NOT NULL,
    "State" VARCHAR NOT NULL,
    "Studio" float   NOT NULL,
    "One Bedroom" float   NOT NULL,
    "Two Bedroom" float   NOT NULL,
    "Three Bedroom" float   NOT NULL,
    "Four Bedroom" float   NOT NULL,
	"Population" float	NOT NULL,
	"Percent Change" float NOT NULL
);

CREATE TABLE "Graduation_Rates" (
    "State" Varchar   NOT NULL,
    "Value" float   NOT NULL,
    "School_Year" int   NOT NULL,
    "Denominator" int   NOT NULL
);

ALTER TABLE "Fair Market Rent"ADD CONSTRAINT "fk_Fair_Market_Rent_State" FOREIGN KEY("State")
REFERENCES "Graduation_Rates" ("State");

COPY "CFMR_df" ("Year", "State", "Studio", "One Bedroom", "Two Bedroom", "Three Bedroom", "Four Bedroom", "Population","Percent Change")
FROM 'Resources/CFMR_df.csv'
DELIMITER ','
CSV HEADER;


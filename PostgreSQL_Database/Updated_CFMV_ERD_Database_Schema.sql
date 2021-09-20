-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "FMV" (
    "Unique_Number" Int   NOT NULL,
    "State" varchar   NOT NULL,
    "Year" Int   NOT NULL,
    "Studio" Int   NOT NULL,
    "TwoBedRoom" Int   NOT NULL,
    "ThreeBedRoom" Int   NOT NULL,
    "FourBedRoom" Int   NOT NULL,
    "Population" Int   NOT NULL,
    "PercentageChange" Int   NOT NULL,
    CONSTRAINT "pk_FMV" PRIMARY KEY (
        "Unique_Number"
     )
);

CREATE TABLE "2018FMV" (
    "Unique_Number" Int   NOT NULL,
    "State" varchar   NOT NULL,
    "Year" Int   NOT NULL,
    "Studio" int   NOT NULL,
    "TwoBedroom" int   NOT NULL,
    "ThreeBedroom" int   NOT NULL,
    "FourBedroom" int   NOT NULL,
    "Population" int   NOT NULL,
    "PercentageChange" int   NOT NULL,
    CONSTRAINT "pk_2018FMV" PRIMARY KEY (
        "Unique_Number"
     )
);

CREATE TABLE "2019FMV" (
    "Unique_Number" Int   NOT NULL,
    "State" varchar   NOT NULL,
    "Year" Int   NOT NULL,
    "Studio" Int   NOT NULL,
    "TwoBedRoom" Int   NOT NULL,
    "ThreeBedRoom" Int   NOT NULL,
    "FourBedRoom" Int   NOT NULL,
    "Population" Int   NOT NULL,
    "PercentageChange" Int   NOT NULL,
    CONSTRAINT "pk_2019FMV" PRIMARY KEY (
        "Unique_Number"
     )
);

CREATE TABLE "2020FMV" (
    "Unique_Number" Int   NOT NULL,
    "State" varchar   NOT NULL,
    "Year" Int   NOT NULL,
    "Studio" Int   NOT NULL,
    "TwoBedRoom" Int   NOT NULL,
    "ThreeBedRoom" Int   NOT NULL,
    "FourBedRoom" Int   NOT NULL,
    "Population" Int   NOT NULL,
    "PercentageChange" Int   NOT NULL,
    CONSTRAINT "pk_2020FMV" PRIMARY KEY (
        "Unique_Number"
     )
);

CREATE TABLE "2021FMV" (
    "Unique_Number" Int   NOT NULL,
    "State" varchar   NOT NULL,
    "Year" Int   NOT NULL,
    "Studio" Int   NOT NULL,
    "TwoBedRoom" Int   NOT NULL,
    "ThreeBedRoom" Int   NOT NULL,
    "FourBedRoom" Int   NOT NULL,
    "Population" Int   NOT NULL,
    "PercentageChange" Int   NOT NULL,
    CONSTRAINT "pk_2021FMV" PRIMARY KEY (
        "Unique_Number"
     )
);

CREATE TABLE "2022FMV" (
    "Unique_Number" Int   NOT NULL,
    "State" varchar   NOT NULL,
    "Year" Int   NOT NULL,
    "Studio" Int   NOT NULL,
    "TwoBedRoom" Int   NOT NULL,
    "ThreeBedRoom" Int   NOT NULL,
    "FourBedRoom" Int   NOT NULL,
    "Population" Int   NOT NULL,
    "PercentageChange" Int   NOT NULL,
    CONSTRAINT "pk_2022FMV" PRIMARY KEY (
        "Unique_Number"
     )
);


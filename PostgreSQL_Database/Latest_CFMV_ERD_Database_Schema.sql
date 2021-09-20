-- Database SQL Scheme for Fair Market Value Analysis
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "CFMR_df" (
    "State" varchar   NOT NULL,
    "Year" Float   NOT NULL,
    "Studio" Float   NOT NULL,
    "One Bedroom" Float   NOT NULL,
    "Two Bedroom" Float   NOT NULL,
    "Three Bedroom" Float   NOT NULL,
	"Four Bedroom" Float   NOT NULL,
    "Population" Float   NOT NULL,
	"Percent Change" Float
);

CREATE TABLE "CFMR18_df" (
    "State" varchar   NOT NULL,
    "Year" Float   NOT NULL,
    "Studio" Float   NOT NULL,
    "One Bedroom" Float   NOT NULL,
    "Two Bedroom" Float   NOT NULL,
    "Three Bedroom" Float   NOT NULL,
	"Four Bedroom" Float   NOT NULL,
    "Population" Float   NOT NULL,
    CONSTRAINT "pk_CFMR18_df" PRIMARY KEY (
        "State"
     )
);

CREATE TABLE "CFMR19_df" (
    "State" varchar   NOT NULL,
    "Year" Float   NOT NULL,
    "Studio" Float   NOT NULL,
    "One Bedroom" Float   NOT NULL,
    "Two Bedroom" Float   NOT NULL,
    "Three Bedroom" Float   NOT NULL,
	"Four Bedroom" Float   NOT NULL,
    "Population" Float   NOT NULL,
    CONSTRAINT "pk_CFMR19_df" PRIMARY KEY (
        "State"
     )
);

CREATE TABLE "CFMR20_df" (
    "State" varchar   NOT NULL,
    "Year" Float   NOT NULL,
    "Studio" Float   NOT NULL,
    "One Bedroom" Float   NOT NULL,
    "Two Bedroom" Float   NOT NULL,
    "Three Bedroom" Float   NOT NULL,
	"Four Bedroom" Float   NOT NULL,
    "Population" Float   NOT NULL,
    CONSTRAINT "pk_CFMR20_df" PRIMARY KEY (
        "State"
     )
);

CREATE TABLE "CFMR21_df" (
    "State" varchar   NOT NULL,
    "Year" Float   NOT NULL,
    "Studio" Float   NOT NULL,
    "One Bedroom" Float   NOT NULL,
    "Two Bedroom" Float   NOT NULL,
    "Three Bedroom" Float   NOT NULL,
	"Four Bedroom" Float   NOT NULL,
    "Population" Float   NOT NULL,
    CONSTRAINT "pk_CFMR21_df" PRIMARY KEY (
        "State"
     )
);

CREATE TABLE "CFMR22_df" (
    "State" varchar   NOT NULL,
    "Year" Float   NOT NULL,
    "Studio" Float   NOT NULL,
    "One Bedroom" Float   NOT NULL,
    "Two Bedroom" Float   NOT NULL,
    "Three Bedroom" Float   NOT NULL,
	"Four Bedroom" Float   NOT NULL,
    "Population" Float   NOT NULL,
    CONSTRAINT "pk_CFMR22_df" PRIMARY KEY (
        "State"
     )
);



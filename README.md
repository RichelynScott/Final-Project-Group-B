# Final Project Group B

[Link to Google Sheets Presentation](https://docs.google.com/presentation/d/1fltjRtZX1BJr0tq8ZaeOzK9XdhFQc2pVGuA4H81irGU/edit?usp=sharing)</br>
[Link to Tableau Public Dashboard] (https://public.tableau.com/app/profile/ly.agger/viz/RentalPricePrediction/FairMarketRentPricing?publish=yes)

# Topic

We have chosen to analyze historic rent prices across the U.S. based on year, state, population, and number of bedrooms. We will use this data to create a machine learning model to predict future rent prices. We chose this topic because the information is of interest to us, and we think the resulting predictions will be helpful to others. Our data set gives fair market rent data from The Department of Housing and Urban Development, which contains rental information from 2018 to 2022 and is broken down by county and year. HUD provides this data annually as a flat csv file.

### With this project we hope to answer several questions:

* What features have the greatest influence on rental prices?
* What affect does change in features like location or population have on rental prices?
* What will rent prices be in 2022 and beyond?
* Which markets will show the most dramatic increase in rent in the future?
* Which markets are predicted to have the smallest increased in rent prices?

## Data Source

Data Sets: U.S. Department of Housing and Urban Development Annual Fair Market Rent (2018-2022)

Source: https://www.huduser.gov/portal/datasets/fmr.html#2022 </br>

We will be using fair market rent datasets from the U.S. Department of Housing and Urban Development (HUD). This is an annual report, so our data will be pulled from 5 different csv files that contain information on fair market rent prices broken down by number of bedrooms, county, state, population, and other information about the location.

The location data does include some classifiers around size and town or county areas and description as well as some columns that provide no insight to our model, so those will be removed as well as formatting some of the existing information to make it easier to read and process. We also decided to group the information by state, so the rental prices by number of bedrooms as well as population will be averaged out based on number of counties within each state. Additionally, areas like Washington, D.C., Guam, and the Virgin Islands have been grouped and counted as states.

# Tools: 

* Excel
* Python
* Jupyter Notebook
* PostgresSQL
* Tableau Public
* huduser.gov


# Database Explanation

* Outcome: Design the data warehouse for historical data by using a data modeling concepts. 
* Purpose: Find useful insight for decision making for rental property owners and investors as well as potential renters. 

This analysis creates a schema consisting of six tables. Each table contains one year and is an intuitive way of dividing information for people who may use the data in the future. Additionally, the combined historical data is contained within one table, predictive data could also be added in as one table or annually for future use. Those tables can be joined to allow the dashboard to pull both past and future prices.

* Data Module Design is 3NF.(Third normal form (3NF) is a database schema design approach for relational databases which uses normalizing principles to reduce the duplication of data, avoid data anomalies, ensure referential integrity, and simplify data management.)
* 3NF helps reduce data duplication, it leads to queries requiring multiple joins to retrieve answer.
* Every Table has a Primary Key that can not be NULL
* Referential integrity is maintained with the help of FOREIGN Key
* The table (example pictured below) shows the one to many and many to one relationships; as needed

![Alt Text](https://github.com/RichelynScott/Final-Project-Group-B/blob/main/PostgreSQL_Database/QuickDBD ERD SCHEMA.png "Database Schema")</br>


# Team Communication Protocols

Our team has allowed for communication in the following paths:
1. Slack 
    * Group B Channel
    * Private Group Channel
2. Group Contact list with individual phone numbers

Additionally, we've established dates and times we will be unavailable due to work and other obligations, as well as establishing additional times to meet throughout the weekend outside of class meetings, such as Sunday before segment deliverable deadlines.

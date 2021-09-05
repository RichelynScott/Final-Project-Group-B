# Final-Project-Group-B

# Topic

We've chosen to review historic rent prices across the US and to create a machine learning model to predict rent prices in the future. The reason we've chosen this topic is the information contained in the data is of interest to us and we think the resulting predictions will be helpful to others. We will be using rental data from Zillow.com which contains rental averages over the period of 2014-2020 and is broken down by zip code and month. Zillow provides this data as a flat csv file. 

## With this project we hope to answer a few questions:

* What will rent prices be in 2022 and beyond?
* Which markets will show the most dramatic increase in rent in the future?
* Which markets are predicted to have the smallest increased in rent prices? 

## COMMUNICATION 

We have allowed for communication in the following paths:   
1. SLACK 
    * Group B Channel
    * Private Group Channel
2. Group Contact list with individual phone numbers
  
## DATA SOURCE

Data Set: Zip_ZORI_AllHomesPlusMultifamily_Smoothed.csv 

Number of rows : 2234 rows
Number of COlumns: 95 colums 

Locations: Metro/US National Data Set

Source: Zillow.com/data (please see Resources/Images/Zillow_DataBase_Arch)
*(Source Explaination: Zillow calculates using thier propatery argurithem called Zillow Observed Rent Index(ZORI) Zillow Observed Rent Index (ZORI): A smoothed measure of the typical observed market rate rent across a given region. ZORI is a repeat-rent index that is weighted to the rental housing stock to ensure representativeness across the entire market, not just those homes currently listed for-rent. The index is dollar-denominated by computing the mean of listed rents that fall into the 40th to 60th percentile range for all homes and apartments in a given region, which is once again weighted to reflect the rental housing stock. Details available in ZORI methodology.f
Zillow Data Architecture: See RESOURCES/IMAGES/ZillowArchitecture)*

## Tools: 

* Excel 
* PostgresSQL
* Zillow.com/data

## DATABASE EXPLANSION (See Resources/Images/DB_Prototype)

* Outcome: Design the data warehouse for Zillow data by using a data modeling concepts. 
* Purpose: Find useful insight for decision making for rental property owners and investors. 

* Data Module Design is 3NF.(Third normal form (3NF) is a database schema design approach for relational databases which uses normalizing principles to reduce the duplication of    data, avoid data anomalies, ensure referential integrity, and simplify data management.)
* 3NF helps reduce data duplication, it leads to queries requiring multiple joins to retrieve answer.
* Every Table has a Primary Key that can not be NULL
* Referential integrity is maintained with the help of FOREIGN Key
* The table (see resource/image/DataModule) shows the one to many and many to one relationships; as needed

This analysis creates a schema consisting of four tables. We think this is the best way to divide the data because each table has its own unique focus, each table cannot really be divided into smaller tables (i.e. tables that are equally distinct and have fewer rows than before), and it is an intuitive way of dividing information for people who may use the data in the future.
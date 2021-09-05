# Final Project Group B

# Topic

We have chosen to analyze historic rent prices across the U.S. and create a machine learning model to predict rent prices in the future. We chose this topic because the information is of interest to us, and we think the resulting predictions will be helpful to others. We will be using rental data from Zillow.com which contains rental averages over the period of 2014-2020 and is broken down by zip code and month. Zillow provides this data as a flat csv file.

### With this project we hope to answer several questions:

* What will rent prices be in 2022 and beyond?
* Which markets will show the most dramatic increase in rent in the future?
* Which markets are predicted to have the smallest increased in rent prices? 

## Data Source

Data Set: Zip_ZORI_AllHomesPlusMultifamily_Smoothed.csv 

Number of rows : 2234 rows</br>
Number of columns: 95 colums 

Source: https://www.zillow.com/research/data </br>

The dataset is a calculated, weighted average of rental prices throughout the 100 largest metropolitan areas across the United States and is split up within cities by zip code. Zillow calculates using their propietary algorithm called Zillow Observed Rent Index(ZORI). ZORI is a smoothed measure of the typical observed market rate rent across a given region. ZORI is a repeat-rent index that is weighted to the rental housing stock to ensure representativeness across the entire market, not just those homes currently listed for rent. The index is dollar-denominated by computing the mean of listed rents that fall into the 40th to 60th percentile range for all homes and apartments in a given region, which is once again weighted to reflect the rental housing stock.</br>
Details available on https://www.zillow.com/research/methodology-zori-repeat-rent-27092

![Alt Text](https://github.com/RichelynScott/Final-Project-Group-B/blob/lyannebr/Resources/Images/Zillow_DataBase_Arch.png "Zillow DataBase Arch"){height=50px}</br>

# Tools: 

* Excel
* Python
* Jupyter Notebook
* PostgresSQL
* Zillow.com/data


# Database Explanation

* Outcome: Design the data warehouse for Zillow data by using a data modeling concepts. 
* Purpose: Find useful insight for decision making for rental property owners and investors as well as potential renters. 

This analysis creates a schema consisting of four tables. We think this is the best way to divide the data because each table has its own unique focus, each table cannot really be divided into smaller tables (i.e. tables that are equally distinct and have fewer rows than before), and it is an intuitive way of dividing information for people who may use the data in the future.

* Data Module Design is 3NF.(Third normal form (3NF) is a database schema design approach for relational databases which uses normalizing principles to reduce the duplication of data, avoid data anomalies, ensure referential integrity, and simplify data management.)
* 3NF helps reduce data duplication, it leads to queries requiring multiple joins to retrieve answer.
* Every Table has a Primary Key that can not be NULL
* Referential integrity is maintained with the help of FOREIGN Key
* The table (example pictured below) shows the one to many and many to one relationships; as needed

![Alt Text](https://github.com/RichelynScott/Final-Project-Group-B/blob/lyannebr/Resources/Images/db_prototype.png "general database prototype")</br>



# Team Communication Protocols

Our team has allowed for communication in the following paths:
1. Slack 
    * Group B Channel
    * Private Group Channel
2. Group Contact list with individual phone numbers

Additionally, we've established dates and times we will be unavailable due to work and other obligations, as well as establishing additional times to meet throughout the week outside of class meetings, such as Sunday before segment deliverable deadlines.




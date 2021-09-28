# Final Project Group B

[Link to Google Sheets Presentation](https://docs.google.com/presentation/d/1fltjRtZX1BJr0tq8ZaeOzK9XdhFQc2pVGuA4H81irGU/edit?usp=sharing)</br>
[Link to Tableau Public Dashboard](https://public.tableau.com/app/profile/ly.agger/viz/RentalPricePrediction/FairMarketRent?publish=yes)


# Topic

We have chosen to analyze historic rent prices across the U.S. based on year, state, population, and number of bedrooms. We will use this data to create a machine learning model to predict future rent prices. We chose this topic because the information is of interest to us, and we think the resulting predictions will be helpful to others. Our data set gives fair market rent data from The Department of Housing and Urban Development, which contains rental information from 2018 to 2022 and is broken down by county and year. HUD provides this data annually as a flat csv file.

#### With this project we hope to answer several questions:

* Which of these features have the greatest influence on rental prices?
* What affect does change in features like location or population have on rental prices?
* What will rent prices be in 2022 and beyond?
* Which markets will show the most dramatic increase in rent in the future?
* Which markets are predicted to have the smallest increased in rent prices?

#### Tools: 

* Excel
* Python
* Jupyter Notebook
* PostgresSQL
* Tableau Public
* huduser.gov

# Data Source

Data Sets: U.S. Department of Housing and Urban Development Annual Fair Market Rent (2018-2022)

Source: https://www.huduser.gov/portal/datasets/fmr.html#2022 </br>

We will be using fair market rent datasets from the U.S. Department of Housing and Urban Development (HUD). This is an annual report, so our data will be pulled from 5 different csv files that contain information on fair market rent prices broken down by number of bedrooms, county, state, population, and other information about the location. The report is given as a .csv file each year for the next year's fair market rent prices. The web site provides the 5 most recent years of data.


# Initial Exploratory Data Analysis

### Cleaning the Data Sets

Each file provides information and classifiers around size, county area names and description as well as some columns that provide no insight to our model, so those will be removed as well as formatting some of the existing information to make it easier to read and process. Several columns were removed: fips2010, a state number, metro_code, areaname, countyname, county_town_name, and a metro number. </br>
<img src="https://github.com/RichelynScott/Final-Project-Group-B/blob/main/Resources/Images/initial_df.png" alt="Raw Data Frame"></br>

We renamed several columns for ease of identification (state, population, and number of bedrooms) and decided to group the information by state, rather than county. So the rental prices by number of bedrooms as well as population will be averaged based on number of counties within each state. Additionally, areas like Washington, D.C., Guam, and the Virgin Islands have been listed on their own. </br>
<img src="https://github.com/RichelynScott/Final-Project-Group-B/blob/main/Resources/Images/clean_df.png" alt="Clean Data Frame"></br>

Finally, we added a year column to allow for each dataframe to be combined into one. This was done to simplify pulling in data to our machine learning models and to help identify trends thoughout the years, helping determine if specific years had an impact on changing rent prices.</br>
<img src="https://github.com/RichelynScott/Final-Project-Group-B/blob/main/Resources/Images/combined_df.png" alt="Combined Data Frame"></br>

### Data Analysis

Once our data was cleaned and combined into one csv, we were able to begin creating plots to analyze the initial data set. We first wanted to identify if there were any obvious influences on rent prices (time, location, population, etc.) so we began by plotting some of the data in different ways.  We created box plots and distribution plots for each rental size. 

<p float="left">
    <img src="https://github.com/RichelynScott/Final-Project-Group-B/blob/main/Resources/Images/BoxPlots:%20Studios.png" width="350">
    <img src="https://github.com/RichelynScott/Final-Project-Group-B/blob/main/Resources/Images/BoxPlots:%201-Beds.png" width="350">
    <img src="https://github.com/RichelynScott/Final-Project-Group-B/blob/main/Resources/Images/BoxPlots:%202-Beds.png" width="350">
    <img src="https://github.com/RichelynScott/Final-Project-Group-B/blob/main/Resources/Images/BoxPlots:%203-Beds.png" width="350">
    <img src="https://github.com/RichelynScott/Final-Project-Group-B/blob/main/Resources/Images/BoxPlots:%204-Beds.png" width="350">
</p>

Ultimately, box plots, distribution plots, and scatter plots showed us that the price was going up as expected, with each additional bedroom. Therefore, bedroom size wouldn't be a great predictor of change in future pricing. However, the scatter plot of population vs. price showed a stronger relationship to price change than location.

<img src="https://github.com/RichelynScott/Final-Project-Group-B/blob/main/Resources/Images/ScatterPlot:%20Population%20Vs%20Price%20(BEST%20CORRELATION).png">

# Database

* Outcome: Design the data warehouse for historical data by using a data modeling concepts. 
* Purpose: Find useful insight for decision making for rental property owners and investors as well as potential renters. 

This analysis creates a schema consisting of six tables. Each table contains one year and is an intuitive way of dividing information for people who may use the data in the future. Additionally, the combined historical data is contained within one table, predictive data could also be added in as one table or annually for future use. Those tables can be joined to allow the dashboard to pull both past and future prices.

<img src="https://github.com/RichelynScott/Final-Project-Group-B/blob/main/PostgreSQL_Database/QuickDBD%20ERD%20SCHEMA.png"></br>

* Data Module Design is 3NF.(Third normal form (3NF) is a database schema design approach for relational databases which uses normalizing principles to reduce the duplication of data, avoid data anomalies, ensure referential integrity, and simplify data management.)
* 3NF helps reduce data duplication, it leads to queries requiring multiple joins to retrieve answer.
* Every Table has a Primary Key that can not be NULL
* Referential integrity is maintained with the help of FOREIGN Key

# Machine Learning Model

Several Machine Learning Models were applied to the combined data set to identify the relationship between each of these features and overall rent prices. Simple Linear Regression Analysis was used to identify the relationship between state populations and their corresponding rental prices for Studios, 1-Beds, 2-Beds, 3-Beds, & 4-Beds. Because of the limited amount of data we had (2018-2022), the averaged linear regression model gave us an R-Squared value of 0.26466134182163. This tells us the strength of population to predict price based on our data, it a relatively weak prediction.

We can see that for these weak predictions the models predictive ability was drastically increased with use of a Gradient Boosted Regressor Model (GBR), which increased the R-Squared value to an average of 0.95802951291603. This is either a great fit or, more likely, overfitting to our model/data.

Quadratic Regression Model would be similar to Simple Linear Analysis, except that the model allowed polynomial (e.g: x squared) and would produce curves as opposed to a straight line and gave us an average R-Squared value of 0.31056686487748. This did demonstrate a stronger predictive ability than the standard Linear Regression Model, but only a minimal improvement, though not overfitting to the data like the GBR Model.

The K-Nearest Neighbors (KNN) Regression Model provided a higher confidence level than any of the linear regression analysis (with the exception of the Gradient Boosted Regression).  The KNN Regression model yielded the second highest confidence value of 0.89559359322488, almost as strong as the Gradient Boosted Linear Regression from earlier, but less likely than the GBR to overfit our model.

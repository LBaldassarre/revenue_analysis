# Revenue Analysis


## About
Hi to everyone, this is my first project using dbt after a couple of hours learning it.
I will be using two csv files for this analysis, "Products.csv'' and "Sales_Data.csv". I am also going to try to simulate different departments from where to extract the process data, as I think this will help me to practice my skills.


## Data


### Products.csv
- ProductID [int] : Product unique code
- Product [varchar] : Product_description|subcategory
- Category [varchar] : Product category


### Sales_Data.csv
- OrderDate [date] : Date where the product was ordered
- ShippingDate [date] : Date where the product was shipped
- ProductID [int] : Product unique code
- Zip [int] : Zip code
- Units [int] : Amount of units purchased
- Revenue [float] : Price paid
- Currency [varchar] : Currency used for the transaction


### Allocation
I will be using snowflake to store, manipulate and later connect the data.


## Departments


### RA_WAREHOUSE
This department would be in charge of processing the Sales_Data.csv and creating a periods table for the analysis (query saved on periods_query.txt)


### RA_REFERENCE
This department would be in charge of maintaining the company specific master files, in this case that file would be Products.csv


### RA_ANALYTICS
This department would be in charge of gathering the specific data needed from the previous departments for the analysis.


## Analysis
In the spirit of completion I am ending the project with a small revenue analysis made on power bi (Revenue_Analysis.pbix).


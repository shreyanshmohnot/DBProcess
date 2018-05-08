# Mutual Funds ETL Process

###### Implementation of ETL for extracting funds information from online website and email.
#### PHP Scripts and MySQL database

## STEPS
1. Get files from selected email address
2. Extract database/csv/dbf files from those .zip formats.
3. Preprocess the data files to remove unwanted rows and items which should not be loaded in the database.
4. Load the data into sql query.
5. Perform execution of queries. Using MySQL and single query optimization, able to load 20k records in 0.1 seconds
6. Finally display the results into browser.
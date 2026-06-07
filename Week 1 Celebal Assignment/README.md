# Basic Data Exploration and Cleaning using Pandas

## Objective
Learn Python basics and perform basic data exploration and cleaning using Pandas.


## Problem Statement
Perform data analysis and cleaning on a shopping dataset using Python Pandas. The workflow includes loading data, exploring structure, handling missing values, removing duplicates, creating new features, and saving the cleaned dataset.


## Dataset
- Source: Kaggle Shopping Dataset  
- Link: https://www.kaggle.com/datasets/anvitkumar/shopping-dataset  
- File used: `jeans.csv`


## Tools Used
- Python 
- Pandas 
- Jupyter Notebook 


## Steps Performed

### 1. Load Dataset
Loaded CSV file using pandas.

### 2. Data Exploration
- Displayed first 5 rows
- Displayed last 5 rows
- Checked shape of dataset
- Viewed column names
- Checked data types

### 3. Data Cleaning
- Removed ₹ symbol and commas from `final_price`
- Converted `final_price` to numeric format

### 4. Handling Missing Values
- Filled missing values in:
  - `rating` → median value
  - `discount` → 0
    
### 5. Data Analysis
- Filtered products with rating > 4
- Selected important columns for analysis

### 6. Remove Duplicates
Removed duplicate rows using `drop_duplicates()`.

### 7. Feature Engineering
Created new column:total_amount = final_price × quantity

### 8. Insights
- Average rating calculated
- Maximum price found
- Minimum price found

### 9. Save Cleaned Dataset
Saved final dataset as: cleaned_shopping_data.csv


## Output
- Clean dataset generated successfully
- Data exploration completed
- Missing values handled
- Feature engineering done


## Key Learnings
- Importance of data cleaning before analysis
- Handling missing values using Pandas
- Converting data types correctly
- Creating derived features for analysis
- Saving processed datasets

# Week 6 Assignment - Apache Spark

## Overview

This assignment focuses on understanding Apache Spark architecture and performing efficient data processing using PySpark. It covers Spark execution concepts, DataFrame transformations, schema handling, filtering, optimized file formats, and performance optimization techniques.


## Objectives

* Understand Spark Architecture (Driver, Cluster Manager, Executors)
* Learn Lazy Evaluation and DAG (Lineage Graph)
* Read data from CSV and Parquet files
* Perform filtering and column selection
* Rename columns and cast data types
* Add new columns using DataFrame operations
* Understand Transformations and Actions
* Learn Wide Transformations and Shuffle
* Compare CSV and Parquet file formats
* Understand Predicate Pushdown
* Handle null values
* Build a complete data processing pipeline
* Save processed data as CSV and Parquet
* Follow Spark best practices for large datasets


## Technologies Used

* Apache Spark
* PySpark
* Python 3
* Google Colab / Jupyter Notebook


## Assignment Tasks Completed

### Spark Architecture

* Driver
* Cluster Manager
* Executors
* Client Mode vs Cluster Mode

### Spark Execution

* Lazy Evaluation
* Directed Acyclic Graph (DAG)
* Lineage Graph
* Fault Tolerance

### Data Processing

* Read CSV files
* Read Parquet files
* Filter rows
* Select required columns
* Rename columns
* Cast data types
* Add new columns
* Apply conditional columns

### Data Cleaning

* Check null values
* Remove null values
* Fill null values

### Transformations

* filter()
* select()
* withColumn()
* withColumnRenamed()
* groupBy()

### Actions

* show()
* count()
* write()

### Performance Concepts

* Narrow vs Wide Transformations
* Shuffle
* Predicate Pushdown
* CSV vs Parquet comparison
* Execution Plan using `explain()`

### Output

* Saved processed data as CSV
* Saved processed data as Parquet
* Created a complete Spark data pipeline


## Project Workflow

1. Read CSV dataset
2. Infer schema
3. Rename columns
4. Cast data types
5. Filter required records
6. Add calculated columns
7. Handle missing values
8. Perform aggregations
9. Save processed data
10. Read Parquet file
11. Analyze execution plan


## Performance Insights

* Spark uses Lazy Evaluation to optimize execution.
* DAG optimization minimizes unnecessary computations.
* Wide transformations involve Shuffle and are more expensive than narrow transformations.
* Parquet provides better performance than CSV because it is a columnar storage format.
* Predicate Pushdown reduces disk I/O by reading only the required data.
* Using `show()` is safer than `collect()` for large datasets because it avoids loading the entire dataset into driver memory.


## Learning Outcomes

After completing this assignment, I learned to:

* Understand Spark architecture and execution flow.
* Process structured data using PySpark DataFrames.
* Apply transformations and actions efficiently.
* Handle missing values and data type conversions.
* Optimize Spark jobs using Lazy Evaluation and Predicate Pushdown.
* Work with CSV and Parquet file formats.
* Build an end-to-end Spark data processing pipeline.


## Conclusion

This assignment provided practical experience with Apache Spark's distributed computing model and DataFrame API. It demonstrated efficient data processing techniques, Spark optimizations, and best practices for handling large-scale datasets using PySpark.

# Week 5 Assignment – Spark Questions

## Objective

Understand Spark fundamentals and perform data cleaning, transformation, and aggregation using DataFrames.


## Assignment Tasks

### Spark Fundamentals

* Understand the limitations of MapReduce.
* Learn the advantages of Spark, including:

  * In-memory processing
  * Faster execution
  * Support for iterative workloads
  * Rich ecosystem and APIs

### Spark DataFrames

* Learn Spark DataFrame concepts.
* Understand DataFrame immutability and lazy evaluation.

### Data Cleaning

* Remove duplicate records.
* Handle null values using `.na.drop()` and `.na.fill()`.
* Identify and clean inconsistent data.

### Data Filtering

* Apply filtering conditions based on:

  * Age range
  * Category
  * Region
  * Subscription type

### Data Transformation

* Rename columns.
* Cast columns to appropriate data types.
* Modify schema when required.

### Aggregation

* Use aggregation functions such as:

  * `count()`
  * `sum()`
  * `avg()`
  * `min()`
  * `max()`

### Grouping Operations

* Group data using `groupBy()`.
* Apply aggregate functions on grouped data.
* Filter aggregated results based on conditions.

### Advanced Concepts

* Understand wide transformations.
* Learn how shuffle operations occur during grouping and aggregation.

### Complete Processing Pipeline

Build a complete Spark workflow that:

1. Loads data.
2. Cleans the dataset.
3. Handles missing values.
4. Applies filtering conditions.
5. Performs transformations.
6. Aggregates data.
7. Generates meaningful results.


## Technologies Used

* Apache Spark
* PySpark
* Python
* Google Colab


## Repository Structure

```text
Week 5 Celebal Assignment/
│
├── Dataset/
│   └── sales_dataset.csv
│
├── Notebook/
│   └── Week_5_Assignment.ipynb
│
├── Output/
│   └── results.csv
│
├── Week 5 Assignment QuesAns.pdf
│
└── README.md
```


## Output

The repository contains:

* PySpark code implementations
* Query results and output screenshots
* Assignment report (PDF)
* Documentation and explanations


## Brief Insights

* Spark performs significantly faster than MapReduce because it stores intermediate data in memory instead of repeatedly reading and writing to disk.
* DataFrames provide a structured and optimized way to process large datasets.
* Removing duplicates and handling null values improves data quality and analysis accuracy.
* Filtering operations help focus analysis on relevant records.
* Aggregation functions generate useful business insights from large volumes of data.
* GroupBy operations often trigger shuffle processes, which involve data movement across partitions and can affect performance.
* Schema modifications and data type conversions ensure consistency and correctness during processing.
* Spark's immutable DataFrame architecture improves fault tolerance and execution optimization.

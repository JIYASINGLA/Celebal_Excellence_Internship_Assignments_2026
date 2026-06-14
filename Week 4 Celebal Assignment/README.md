# Azure Cloud Fundamentals and Data Pipeline Implementation using ADF

## Objective

The objective of this project is to understand Azure cloud concepts and build an end-to-end data pipeline using Azure Storage Account and Azure Data Factory (ADF).

## Technologies Used

* Microsoft Azure
* Azure Resource Group
* Azure Storage Account
* Azure Blob Storage
* Azure Data Factory (ADF)

## Project Workflow

1. Created a Resource Group in Azure.
2. Created a Storage Account and Blob Containers.
3. Uploaded the Superstore CSV dataset to Blob Storage.
4. Created an Azure Data Factory instance.
5. Configured Linked Services and Datasets.
6. Used the **Get Metadata** activity to validate file information.
7. Built a pipeline using **Copy Data** activity.
8. Executed and monitored the pipeline using Debug/Trigger.
9. Assigned IAM roles (Reader and Contributor) to provide secure access.
10. Successfully copied data from the source container to the destination container.

## Pipeline Architecture

Blob Storage (Source CSV) → Get Metadata → Copy Data → Blob Storage (Destination)

## Expected Output

* Successful pipeline execution
* Data copied to destination container
* Metadata validation completed successfully

## Repository Structure

```text
Week4_Azure_ADF_Assignment/
│
├── Screenshots/
├── Assignment_Report.pdf
├── README.md
```

## Conclusion

This project successfully demonstrated the implementation of an end-to-end data pipeline using Azure Blob Storage and Azure Data Factory. It provided practical experience in cloud storage, data integration, pipeline orchestration, and access management using Azure services.

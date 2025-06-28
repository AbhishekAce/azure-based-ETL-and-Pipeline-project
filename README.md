# Azure-based ETL Pipeline

This project demonstrates a basic ETL (Extract, Transform, Load) pipeline using Azure services.

## Components

- **Azure Blob Storage:** For raw data storage.
- **Azure Data Factory:** Orchestrates the ETL process.
- **Azure Databricks or Python Scripts:** For data transformation.
- **Azure SQL Database:** Stores the final results.
- **Bicep:** For infrastructure as code.

## Steps

1. Deploy resources using the Bicep template in `infra/`.
2. Upload sample input data to Blob Storage (`data/sample-input/`).
3. Define and deploy the ADF pipeline (`pipelines/pipeline_definition.json`).
4. Use Databricks or Python scripts (`src/`) for data transformation.
5. Monitor the pipeline and validate data in Azure SQL Database.

## Requirements

- Python 3.x
- Azure CLI
- Required Python packages (`pip install -r requirements.txt`)

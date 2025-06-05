![poster](docs/data_architecture.png)
# Developing a Data Warehouse using PostgreSQL: An End-to-End Retail Sales Data Pipeline

## Project Overview
This project demonstrates the development of a modern data warehouse using PostgreSQL, encompassing the ETL process, Medallion Architecture (Bronze, Silver, Gold layers), dimensional data modeling, and preparation of clean, analytics-ready datasets. It focuses on transforming raw retail sales data into a structured format to support business insights and data-driven decision-making.

## Objectives
Develop a modern and organized data warehouse using PostgreSQL to bring together sales data from different sources into a single, unified system. This structured approach allows for better data management, improved accuracy, and easier access to meaningful information. By turning raw data into well-prepared datasets, the project aims to support clear, reliable reporting and help businesses make informed, data-driven decisions.

## Tech Stack
- **Database**: PostgreSQL
- **Tool**: pgAdmin 4
- **ETL Workflow**: Manual SQL scripting
- **Architecture**: Medallion Architecture (Bronze → Silver → Gold)
- **Modeling**: Star Schema (Fact and Dimension tables)
- **Data Sources**: CRM & ERP datasets (CSV files)
- **Diagrams & Flows**: Draw.io

## ETL Workflow Overview
1. **Data Ingestion**  
   Import raw data from `crm_data.csv` and `erp_data.csv` into Bronze layer (staging tables).
2. **Data Transformation**  
   Clean and standardize data in Silver layer, merge sources, apply business logic.
3. **Data Modeling**  
   Design and implement a star schema in the Gold layer:
   - `fact_sales`
   - `dim_customers`
   - `dim_products`
4. **Data Loading**  
   Populate the Gold layer tables with fully transformed data.
5. **Analysis & Reporting**  
   Run analytical SQL queries to uncover trends and support decision-making.(Not part of this project)

## Data Architecture
This project follows the **Medallion Architecture** approach.
A high-level architectural overview showing the flow of data across layers and components from source ingestion to analytics-ready output.
![data_architecture](docs/data_architecture.png)
![data_layers](docs/data_architecture.png)
1. **Bronze Layer (Raw Stage)**
   - Loads raw CRM and ERP data into staging tables.
   - No transformations applied yet.
   - Represents the "source of truth" from external systems.
2. **Silver Layer (Cleansed Stage)**
   - Cleans and transforms data from the Bronze layer.
   - Handles nulls, formats, deduplication, and joins CRM/ERP data.
   - Stores the refined and validated data for downstream use.
3. **Gold Layer (Business Layer)**
   - Builds analytical fact and dimension tables using a star schema.
   - Used directly for reporting, dashboards, and business decision-making.

## Data Flow
Data lineage in the Medallion Architecture, showing how raw data from CRM and ERP sources flows through Bronze (raw), Silver (cleaned), and Gold (business-ready) layers. Each layer progressively transforms and integrates the data into structured tables used for analytics and reporting.
![data_flow](docs/data_architecture.png)

## Data Integration
This project integrates raw data from two different business domains:
- **CRM**: Customer relationship data like customers info, transactional records about sales & orders, and product info
- **ERP**: Sales transactions, customer's extra info, product info etc.
![data_integration](docs/data_architecture.png)

## Data Modeling — Star Schema
A **star schema** was designed consisting of:
- One central **Fact Table**:  
  - `fact_sales`
- Supporting two **Dimension Tables**:  
  - `dim_customers`  
  - `dim_products`  
![data_model](docs/data_architecture.png)

## Gold Layer Table Snapshots
The Gold Layer is the business-level data representation, well-suited for analytical and reporting use cases. It consists of **dimension tables** and **fact tables** for specific business metrics.
### `gold.dim_customers`  
Contains enriched customer information including unique customer IDs, names, regions, and customer types, used for customer-based analysis.  
![gold.dim_customers](docs/data_architecture.png)

### `gold.dim_products`  
Holds detailed product data such as product names, categories, and prices to support product-level performance reporting.  
![gold.dim_products](docs/data_architecture.png)

### `gold.fact_sales`  
Captures transactional sales records linked to customers and products, with measures like quantity sold, total sales value, and sales dates.  
![gold.fact_sales](docs/data_architecture.png)

## Features
- **End-to-End Data Pipeline**: Covers the complete lifecycle from raw data ingestion to creating structured, analysis-ready data.
- **Data Warehouse Development**: Built using PostgreSQL with a strong focus on performance, scalability, and clarity.
- **ETL Process Implementation**: Manual SQL scripting to extract, transform, and load data from CRM and ERP sources.
- **Medallion Architecture**: Structured using Bronze (raw), Silver (cleaned), and Gold (business-ready) data layers.
- **Star Schema Design**: Incorporates dimension and fact tables to support fast, analytical queries.
- **Business-Ready Tables**: Gold layer includes tables like `dim_customers`, `dim_products`, and `fact_sales` for analysis, reporting and decision-making.
- **Source System Integration**: Combines datasets from multiple systems (CRM and ERP) into a unified model.
- **Clear Naming Conventions**: Consistent and meaningful table and column names for easier understanding and maintenance.
- **Visual Documentation**: Includes diagrams for data flow, data architecture, data integration, and data model.

## License
This project is licensed under the [MIT License](LICENSE).

## Acknowledgements
This project is inspired by the excellent guided tutorial created by [Baraa Khatib Salkini](https://www.linkedin.com/in/baraa-khatib-salkini/).  
Special thanks to him for sharing his knowledge and providing a comprehensive walkthrough of building a data warehouse from scratch.

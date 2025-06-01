/*Create Database and Schemas*/

-- First of all, create a database called 'DataWarehouse' in postgres
CREATE DATABASE DataWarehouse;

-- In DataWarehouse database, create schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;

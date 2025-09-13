# Regions-Sales-ETL
ETL pipeline built in SQL Server Integration Services (SSIS) that extracts sales data from a SQL Server table, applies transformations, and loads it into region-based backup tables.

📊 SSIS ETL Project – Regional Sales Data Backup
🚀 Project Overview

This project demonstrates an ETL pipeline built in SQL Server Integration Services (SSIS) that extracts sales data from a SQL Server table, applies transformations, and loads it into region-based backup tables.

The goal is to show data duplication, transformation, and routing using SSIS features such as Multicast and Conditional Split.

🗂 Dataset

The main source table is SalesData, which stores sales transactions from multiple U.S. regions.

Schema
CREATE TABLE SalesData (
    Sale_Date DATE,
    Receipt_no VARCHAR(50),
    Ordertype_name VARCHAR(50),
    Product_name VARCHAR(50),
    Quantity INT,
    Sales_Amount INT,
    Location VARCHAR(50)
);

Sample Data
INSERT INTO SalesData (Sale_Date, Receipt_no, Ordertype_name, Product_name, Quantity, Sales_Amount, Location)
VALUES
('2025-01-05', 'R1001', 'Dine-In', 'Cheeseburger', 2, 20, 'New York'),
('2025-01-09', 'R1005', 'Delivery', 'Sushi', 4, 50, 'San Francisco'),
('2025-01-11', 'R1007', 'Dine-In', 'Hotdog', 5, 25, 'Chicago'),
('2025-01-14', 'R1010', 'Dine-In', 'Fried Chicken', 3, 27, 'Dallas');

⚙️ ETL Pipeline Design

Source

Extract data from the SalesData table using an OLE DB Source.

Multicast Transformation

Duplicate the data stream.

One path can be archived; another is sent to the Conditional Split.

Conditional Split Transformation

Route rows into four categories based on the Location column:

East → (New York, Boston, Miami)

West → (Los Angeles, San Francisco, Seattle)

Midwest → (Chicago, Detroit, Minneapolis)

South → (Dallas, Houston, Atlanta)

Destinations

Load the filtered rows into four backup tables:

SalesData_East

SalesData_West

SalesData_Midwest

SalesData_South

🛠 Technologies Used

SQL Server (for source & destination tables)

SQL Server Integration Services (SSIS)

T-SQL (for schema and data preparation)

📂 Project Structure
📦 SSIS-Regional-Sales-ETL
 ┣ 📜 README.md          # Project documentation
 ┣ 📜 SalesData.sql      # Script for main SalesData table and dummy data
 ┣ 📜 RegionTables.sql   # Script for region-based destination tables
 ┗ 📂 SSIS_Package       # SSIS package files (.dtsx)

🎯 Learning Outcomes

✔ Hands-on practice with Multicast in SSIS
✔ Hands-on practice with Conditional Split in SSIS
✔ Building a full ETL pipeline from source to multiple destinations
✔ Understanding how to handle regional backups in a real-world scenario

🚀 How to Run

Run SalesData.sql in SQL Server to create and populate the SalesData table.

Run RegionTables.sql to create region-based destination tables.

Open the SSIS project in SQL Server Data Tools (SSDT).

Execute the ETL package.

Query the region tables to verify the data has been split correctly:

SELECT * FROM SalesData_East;
SELECT * FROM SalesData_West;
SELECT * FROM SalesData_Midwest;
SELECT * FROM SalesData_South;

📌 Portfolio Highlight

This project is a great portfolio piece to showcase:

ETL pipeline design using SSIS

Data duplication and routing

Real-world business scenario (regional sales backups)

✨ Author: Joshua Oxner
📧 Contact: Joshox6@gmail.com

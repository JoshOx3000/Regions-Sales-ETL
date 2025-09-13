-- Creation of Regional_SalesDB
CREATE DATABASE Regional_SalesDB;

use Regional_SalesDB;

-- Creation of the main SalesData Table
CREATE TABLE SalesData (
    Sale_Date DATE,
    Receipt_no VARCHAR(50),
    Ordertype_name VARCHAR(50),
    Product_name VARCHAR(50),
    Quantity INT,
    Sales_Amount INT,
    Location VARCHAR(50)
);

INSERT INTO SalesData (Sale_Date, Receipt_no, Ordertype_name, Product_name, Quantity, Sales_Amount, Location)
VALUES
-- East
('2025-01-05', 'R1001', 'Dine-In', 'Cheeseburger', 2, 20, 'New York'),
('2025-01-06', 'R1002', 'Takeout', 'Pizza', 1, 15, 'Boston'),
('2025-01-07', 'R1003', 'Delivery', 'Pasta', 3, 30, 'Miami'),

-- West
('2025-01-08', 'R1004', 'Dine-In', 'Burrito', 2, 18, 'Los Angeles'),
('2025-01-09', 'R1005', 'Delivery', 'Sushi', 4, 50, 'San Francisco'),
('2025-01-10', 'R1006', 'Takeout', 'Salad', 1, 12, 'Seattle'),

-- Midwest
('2025-01-11', 'R1007', 'Dine-In', 'Hotdog', 5, 25, 'Chicago'),
('2025-01-12', 'R1008', 'Delivery', 'BBQ Ribs', 2, 28, 'Detroit'),
('2025-01-13', 'R1009', 'Takeout', 'Steak', 1, 22, 'Minneapolis'),

-- South
('2025-01-14', 'R1010', 'Dine-In', 'Fried Chicken', 3, 27, 'Dallas'),
('2025-01-15', 'R1011', 'Takeout', 'Tacos', 2, 16, 'Houston'),
('2025-01-16', 'R1012', 'Delivery', 'Shrimp Po Boy', 2, 24, 'Atlanta');



-- Creation of the SalesData Table by region
CREATE TABLE SalesData_East(
	Sale_Date DATE,
	Receipt_no VARCHAR(50),
	OrderType_name VARCHAR(50),
	Product_name VARCHAR(50),
	Quantity INT,
	Sales_Amount INT,
	Location VARCHAR(50)
);

CREATE TABLE SalesData_West (
    Sale_Date DATE,
    Receipt_no VARCHAR(50),
    Ordertype_name VARCHAR(50),
    Product_name VARCHAR(50),
    Quantity INT,
    Sales_Amount INT,
    Location VARCHAR(50)
);

CREATE TABLE SalesData_Midwest (
    Sale_Date DATE,
    Receipt_no VARCHAR(50),
    Ordertype_name VARCHAR(50),
    Product_name VARCHAR(50),
    Quantity INT,
    Sales_Amount INT,
    Location VARCHAR(50)
);

CREATE TABLE SalesData_South (
    Sale_Date DATE,
    Receipt_no VARCHAR(50),
    Ordertype_name VARCHAR(50),
    Product_name VARCHAR(50),
    Quantity INT,
    Sales_Amount INT,
    Location VARCHAR(50)
);

--To verified table are created properly

select *
from SalesData_East;

select *
from SalesData_Midwest
;

select *
from SalesData_South;

select *
from SalesData_West
;




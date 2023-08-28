--                                                     Travego Travellers

-- Lets create a schema named TRAVEGO. 
CREATE DATABASE Travego;
-- Calling the schema to create tables and perform required task.
USE Travego;
-- Creating a passenger table structure 
CREATE TABLE Passenger
( Passenger_id INT PRIMARY KEY,
Passenger_name VARCHAR(20),
Category VARCHAR(20),
Gender VARCHAR(20),
Boarding_city VARCHAR(20),
Destination_city VARCHAR(20),
Distance INT,
Bus_Type VARCHAR(20)
);
-- Creating the structure of the table price
CREATE TABLE Price(
id INT AUTO_INCREMENT PRIMARY KEY,
Bus_Type VARCHAR(20),
Distance int,
Price INT);
# I have tried AUTO_INCREMENT method to enter the id in price table automatically.

-- Inserting values or data into the table passenger
INSERT INTO Passenger VALUES
(1,'Sejal','AC','F','Bengaluru','Chennai','350','Sleeper');
INSERT INTO Passenger VALUES
(2,'Anmol','Non-AC','M','Mumbai','Hyderabad','700','Sitting');
INSERT INTO Passenger VALUES
(3,'Pallavi','AC','F','Panaji','Bengaluru','600','Sleeper');
INSERT INTO Passenger VALUES
(4,'Khusboo','AC','F','Chennai','Mumbai','1500','Sleeper');
INSERT INTO Passenger VALUES
(5,'Udit','Non-AC','M','Trivandrum','Panaji','1000','Sleeper');
INSERT INTO Passenger VALUES
(6,'Ankur','AC','M','Nagpur','Hyderabad','500','Sitting');
INSERT INTO Passenger VALUES
(7,'Hemant','Non-AC','M','Panaji','Mumbai','700','Sleeper');
INSERT INTO Passenger VALUES
(8,'Manish','Non-AC','M','Hyderabad','Bengaluru','500','Sitting');
INSERT INTO Passenger VALUES
(9,'Piyush','AC','M','Pune','Nagpur','700','Sitting');

-- Displaying the created table with all its entries								
SELECT*FROM Passenger;	

-- Inserting the values or data into the table price		
INSERT INTO Price(Bus_Type,Distance,Price)
VALUES('Sleeper',350,770);
INSERT INTO Price(Bus_Type,Distance,Price)
VALUES('Sleeper',500,1100);
INSERT INTO Price(Bus_Type,Distance,Price)
VALUES('Sleeper',600,1320);
INSERT INTO Price(Bus_Type,Distance,Price)
VALUES('Sleeper',700,1540);
INSERT INTO Price(Bus_Type,Distance,Price)
VALUES('Sleeper',1000,2200);
INSERT INTO Price(Bus_Type,Distance,Price)
VALUES('Sleeper',1200,2640);
INSERT INTO Price(Bus_Type,Distance,Price)
VALUES('Sleeper',1500,2700);
INSERT INTO Price(Bus_Type,Distance,Price)
VALUES('Sitting',500,620);
INSERT INTO Price(Bus_Type,Distance,Price)
VALUES('Sitting',600,744);
INSERT INTO Price(Bus_Type,Distance,Price)
VALUES('Sitting',700,868);
INSERT INTO Price(Bus_Type,Distance,Price)
VALUES('Sitting',1000,1240);
INSERT INTO Price(Bus_Type,Distance,Price)
VALUES('Sitting',1200,1488);
INSERT INTO Price(Bus_Type,Distance,Price)
VALUES('Sitting',1500,1860);
-- Displaying the created table with all its entries
SELECT*FROM Price;

# Now we have 2 tables in the travego schema. 
-- Project is continued in task-2 file using this database.  





# To retrieve the data from the tables (created in task 1) based on the requirements mentioned in task-2, we shall use the travego schema we created.
USE Travego;

-- question a. How many female passengers traveled a minimum distance of 600 KMs? 
SELECT COUNT(Gender = 'F') AS no_of_Female FROM passenger WHERE Distance >= 600;
# There are 6 female passengers travelled a minimum distance of 600kms.
-- ------------------------------------------------------------------------------------------------------------------------------------------------------

-- question b. Write a query to display the passenger details whose travel distance is greater than 500 and who are traveling in a sleeper bus. 
SELECT*FROM Price;
SELECT*FROM passenger;

SELECT * FROM passenger WHERE distance > 500 AND bus_type = 'sleeper';
# There are 4 passengers whose travel distance is greater than 500 and in a sleeper bus.
-- -------------------------------------------------------------------------------------------------------------------------------------------------------

-- question c. Select passenger names whose names start with the character 'S'.

SELECT passenger_name
FROM passenger
WHERE passenger_name LIKE 'S%';

# There is only one passenger (sejal) whose name starts with the character 's'. 
-- -----------------------------------------------------------------------------------------------------------------------------------------------------

-- question d. Calculate the price charged for each passenger, displaying the Passenger name, Boarding City, destination City, Bus type, and Price in the output.

select * from passenger;
select * from price;

select p.passenger_name,p.boarding_city,p.destination_city,p.bus_type,price.price from passenger p,price 
where p.distance = price.distance and p.bus_type = price.bus_type;

# calculated price for all the passengers by matching distance and bus_type in both passenger and price tables. 
-- ------------------------------------------------------------------------------------------------------------------------------------------------------

-- question e. What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus? 

select p.passenger_name,price.price from passenger p,price
 where p.distance = price.distance and p.bus_type = price.bus_type and 
 p.distance>=1000 and p.bus_type = 'sitting';
 
 # The query returns no entries which means there are no such passenger who travelled 1000 kms sitting in a bus.
-- --------------------------------------------------------------------------------------------------------------------------------------------------------

-- question f. What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?
select p.passenger_name,p.boarding_city,p.destination_city,p.distance,price.bus_type,price.price 
from passenger p,price
where p.distance = price.distance and p.passenger_name = 'pallavi';

# I have calculated bus charges for pallavi by matching distance in both passenger and price table and also by applying filter for passenger name as pallavi.
# The sitting bus charge for pallavi to travel from bangalore to panaji is 744. 
# The sleeper bus charge for pallavi to travel from bangalore to panaji is 1320.
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------

-- question g. Alter the column category with the value "Non-AC" where the Bus_Type is sleeper
select * from passenger;
update passenger set category = 'NON-AC' where bus_type = 'Sleeper';

# To alter the values in the column category we can use UPDATE clause and SET the condition to be applied in the table.
# Now all the bustype sleeper has category as 'non-AC'( 5 rows have been altered in the table from the above query). 
-- -------------------------------------------------------------------------------------------------------------------------------------------------------------

-- question h. Delete an entry from the table where the passenger name is Piyush and commit this change in the database.
delete from passenger where passenger_name = 'Piyush';
select * from passenger;
commit;

# After deleting the entry with passenger name as piyush in the passenger table, there are only 8 rows in the table now. 
# To make this update permanent on the database let us use COMMIT. 
-- --------------------------------------------------------------------------------------------------------------------------------------------------------------

-- question i. Truncate the table passenger and comment on the number of rows in the table (explain if required).
truncate table passenger;
select * from passenger;

# After turncating the table passenger, all the rows which was existing got deleted, so there are zero rows int he table
# but the table structure remained intact in the database.
-- --------------------------------------------------------------------------------------------------------------------------------------------------------------

-- question j. Delete the table passenger from the database
drop table passenger;
# Finally the table passenger is deleted from the travego schema using DROP. Now we have only the price table in the schema. 

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------
--                                                                THANK YOU !
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------



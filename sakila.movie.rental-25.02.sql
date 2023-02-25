USE sakila; 

ALTER TABLE staff 
DROP COLUMN picture;

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

INSERT INTO Persons (PersonID,LastName,FirstName,Address,City)
VALUES (1, 'Sanders', 'Tammy', 'Jeffersonian Av. 8150', 'Wichita');

#3 stuck 

#4 b) and c) unable to do 

SELECT customer_id FROM customer
WHERE active = 0;

CREATE TABLE deleted_users (
customer_id smallint,
email varchar(50),
date datetime
);


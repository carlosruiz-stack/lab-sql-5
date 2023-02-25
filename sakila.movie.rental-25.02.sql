USE sakila; 

#1 Drop column picture from staff

ALTER TABLE staff 
DROP COLUMN picture;

#2 A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

INSERT INTO staff 
VALUES (1,'tammy','sanders',2,'tammy.sanders@blockbuster.us',3,1,'tammysanders','123456',timestamp);

INSERT INTO staff  VALUES (1,'tammy','sanders',2,'tammy.sanders@blockbuster.us',3,1,'tammysanders','123456',timestamp)	Error Code: 1054. Unknown column 'timestamp' in 'field list'	0,000 sec


#3 stuck 

#4 

a) Check if where are non-active users

SELECT customer_id FROM customer
WHERE active = 0;

b) Create backup table, deleted_users

CREATE TABLE deleted_users (
customer_id smallint,
email varchar(50),
date datetime
);

c) Insert the non active users in the table backup table

d) Delete the non active users from the table customer


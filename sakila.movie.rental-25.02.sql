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

CREATE TABLE deleted_users (
customer_id smallint(5),
email varchar(175),
date datetime
); 

INSERT INTO deleted_users 
VALUES(16, 'SANDRA.MARTIN@sakilacustomer.org', NOW()),
(64, 'JUDITH.COX@sakilacustomer.org', NOW()),
(124, 'SHEILA.WELLS@sakilacustomer.org', NOW()),
(169, 'ERICA.MATTHEWS@sakilacustomer.org', NOW()),
(241, 'HEIDI.LARSON@sakilacustomer.org', NOW()),
(271, 'PENNY.NEAL@sakilacustomer.org', NOW()),
(315, 'KENNETH.GOODEN@sakilacustomer.org', NOW()),
(368, 'HARRY.ARCE@sakilacustomer.org', NOW()),
(406, 'NATHAN.RUNYON@sakilacustomer.org', NOW()),
(446, 'THEODORE.CULP@sakilacustomer.org', NOW()),
(482, 'MAURICE.CRAWLEY@sakilacustomer.org', NOW()),
(510, 'BEN.EASTER@sakilacustomer.org', NOW()),
(534, 'CHRISTIAN.JUNG@sakilacustomer.org', NOW()),
(558, 'JIMMIE.EGGLESTON@sakilacustomer.org', NOW()),
(592, 'TERRANCE.ROUSH@sakilacustomer.org', NOW());

SELECT * FROM deleted_users;

# we run this query to ensure that we implemented the two previous queries correctly (create table and insert intp)

d) Delete the non active users from the table customer

DELETE FROM customer WHERE active = 0; 


USE sakila; 

ALTER TABLE staff 
DROP COLUMN picture;


INSERT INTO staff 
VALUES (1,'tammy','sanders',2,'tammy.sanders@blockbuster.us',3,1,'tammysanders','123456',timestamp);

#16:22:14	INSERT INTO staff  VALUES (1,'tammy','sanders',2,'tammy.sanders@blockbuster.us',3,1,'tammysanders','123456',timestamp)	Error Code: 1054. Unknown column 'timestamp' in 'field list'	0,000 sec


#3 stuck 

#4 b) and c) unable to do 

SELECT customer_id FROM customer
WHERE active = 0;

CREATE TABLE deleted_users (
customer_id smallint,
email varchar(50),
date datetime
);


README

To properly initialize the database the following must be done in this order!

1. Launch MYSQL Workbench
2. Setup a local or public server
3. Create a new schema named whatever is easiest
4. Open a new SQL Query tab
5. Copy and paste the code provided in final product.sql
6. Run the code
7. Verify the creation of the tables and data. Verify the tables contain data with SELECT * FROM TABLENAME

COMMON COMMANDS

FOR INSERTING DUE TO PARTIAL DEPENDENCIES THE FOLLOWING MUST BE INSTERTED IN THIS ORDER

INSERTING
table order for inserting a new car
1. car
2. trim
3. model
4. manufacturer

table order for inserting a newsale
1. Customer
2. Employee
3. Car

SAMPLE INSERT COMMANDS

INSERT INTO CAR VALUES(CAR_ID, 'COLOR', STARING PRICE, CAR ON LOT (BOOLEAN), CAR BEING SERVICED (BOOLEAN), 'CAR YEAR', CAR HP, CAR MPG)
INSERT INTO CAR VALUES(10, 'GREEN', 26000, 1, 0, '2021', 200, 16);
INSERT INTO TRIM VALUES(10, 'XXL', 10);
INSERT INTO MODEL VALUES(11, 'ESCAPE', 10, 10);
INSERT INTO MANUFACTURER VALUES (11, 'FORD', 11, 11);

INSERT INTO SALE VALUES (SALE ID, 'YYYY-MM-DD', EMPLOYEE ID, CUSTOMER ID, SALE AMOUNT, SALE CLOSED (BOOLEAN), SALE CAR ID)



DELETING IS DONE IN THE REVERSE DIRECTION AS INSERT REFER TO THE ORDER LISTED ABOVE AND DELETE IN REVERSE

DELETE FROM SALE WHERE SALE_CAR_ID= CAR_ID TO DELETE;
DELETE FROM CAR WHERE CAR_ID = CAR_ID TO DELETE;

DELETE FROM MANUFACTURER WHERE MAN_MAKE_ID = 11;
DELETE FROM MODEL WHERE MODEL_MODEL_ID = 11;
DELETE FROM TRIM WHERE TRIM_TRIM_ID = 10;
DELETE FROM CAR WHERE CAR_ID = 10;

UPDATE SAMPLE CODE

UPDATE SALE SET SALE_SALE_AMOUNT = $ WHERE SALE_ID = SALE_ID;
UPDATE SALE SET SALE_CLOSED = BOOLEAN WHERE SALE_ID = SALE_ID;

READ SAMPLE CODE

SELECT * FROM SALE;
SELECT * FROM CAR;
SELECT CAR_ID, CAR_COLOR, CAR_STARTING_PRICE, CAR_HORSEPOWER, CAR_MPG, MODEL_NAME, TRIM_NAME, MAN_MAKE_NAME
FROM CAR NATURAL JOIN MODEL NATURAL JOIN TRIM NATURAL JOIN MANUFACTURER



SEARCH SAMPLE CODE

SELECT DISTINCT EMPLOYEE_LNAME, SALE_SALE_AMOUNT-CAR_STARTING_PRICE AS NETPROFIT
FROM EMPLOYEE JOIN SALE ON SALE_EMPLOYEE_ID = EMPLOYEE_ID JOIN CAR ON SALE_CAR_ID = CAR_ID
WHERE EMPLOYEE_ID=1;

SELECT DISTINCT EMPLOYEE_LNAME, SUM(SALE_SALE_AMOUNT-CAR_STARTING_PRICE)
FROM EMPLOYEE JOIN SALE ON SALE_EMPLOYEE_ID = EMPLOYEE_ID JOIN CAR ON SALE_CAR_ID = CAR_ID
WHERE EMPLOYEE_ID=1;




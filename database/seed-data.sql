USE Project_Stationary_Store
SELECT * FROM UserAccount

SELECT * FROM Employee

INSERT INTO Employee (Employee_ID, Employee_Name, Phone, Email, Address, City, Hire_Date, Salary)
VALUES (1001, 'admin1', '03901234567', 'admin@store.com', 'DHA Phase 2', 'Bahawalpur', '2019-04-18', 100000);

INSERT INTO Employee (Employee_ID, Employee_Name, Phone, Email, Address, City, Hire_Date, Salary)
VALUES (1002, 'shopkeeper1', '03963432747', 'shopkeeper@store.com', 'Street 9, Phase 6 DHA', 'Islamabad', '2019-04-18', 60000);

INSERT INTO Customer (Customer_Name, Phone, Address)
VALUES ('customer1', '03018889944', 'Phase 4, DHA, Quetta');

INSERT INTO Order_Item (Order_ID, Product_ID, Quantity)
VALUES (111, 417, 3);

INSERT INTO Order_T (Order_ID, Order_Date, Customer_ID)
VALUES (111, '2025-5-11', 21);

UPDATE Customer SET Customer_ID=1003 WHERE Customer_ID=21

SELECT * FROM Order_T
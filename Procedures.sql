
/*This code drops the procedure "cust_add" if it exists in the database. */
DROP PROCEDURE IF EXISTS cust_add;
/*Creates the cust_add procedure to insert a new row into the CUSTOMER table 
with the specified customer information as input parameters.*/
DELIMITER $$

CREATE PROCEDURE cust_add (IN Customer_ID INT(10), IN Customer_FName VARCHAR(15), IN Customer_LName VARCHAR(15),
IN Customer_Initial VARCHAR(2),IN Customer_Phone VARCHAR (20), IN Customer_Email VARCHAR(50),
IN Customer_Address VARCHAR(200),IN Customer_SignUpDate DATE)

BEGIN 
INSERT INTO CUSTOMER VALUES (Customer_ID, Customer_FName, Customer_LName, Customer_Initial, Customer_Phone, Customer_Email,
Customer_Address, Customer_SignUpDate);
END$$

DELIMITER ;

/*"Executes the cust_add procedure with the specified input parameters to insert a new row into the CUSTOMER table.*/
CALL cust_add ('50026','Jeff','Hardy','JH','725-344-4632','hardyj@mef.edu.tr','1802 Wilson Lane McLean VA 22102','2022-12-16'); 
SELECT * FROM CUSTOMER; 

/*This code drops the trigger "emp_initial_upper" if it exists in the database. */
DROP TRIGGER IF EXISTS emp_initial_upper; 
/*Creates the emp_initial_upper trigger to set the value of the Emp_Initial column in the new row being 
 inserted into the EMPLOYEE table to the uppercase version of the value provided for the Emp_Initial column.*/
CREATE TRIGGER emp_initial_upper
 BEFORE INSERT ON EMPLOYEE FOR EACH ROW
  set new.Emp_Initial = upper(new.Emp_Initial);


/*This code drops the procedure "emp_add" if it exists in the database. */
DROP PROCEDURE IF EXISTS emp_add;
/*Creates the emp_add procedure to insert a new row into the EMPLOYEE table 
with the specified employee information as input parameters.*/
DELIMITER $$

CREATE PROCEDURE emp_add (IN Emp_ID INT(10), IN Emp_FName VARCHAR(15), IN Emp_LName VARCHAR(15),
IN Emp_Initial VARCHAR(2),IN Emp_Phone BIGINT, IN Emp_HireDate DATE,
Emp_BirthDate DATE,  Order_ID  INT(10))

BEGIN 
INSERT INTO EMPLOYEE VALUES (Emp_ID, Emp_FName, Emp_LName, Emp_Initial, Emp_Phone, Emp_HireDate,
Emp_BirthDate, Order_ID);
END$$

DELIMITER ;
/*"Executes the emp_add procedure with the specified input parameters to insert a new row into the EMPLOYEE table.*/
CALL emp_add ('50051','Matt','Hardy','mh','7453344342','2022-12-18','1990-11-21','44719'); 

/*This code drops the procedure "most_valuable_product" if it exists in the database. */
DROP PROCEDURE IF EXISTS most_valuable_product;
/*Creates the most_valuable_product procedure to select the product with the highest price from the PRODUCT table.*/
DELIMITER $$

CREATE PROCEDURE most_valuable_product()
BEGIN
  SELECT PRODUCT_ID, PRODUCT_PRICE FROM PRODUCT WHERE PRODUCT_PRICE = (SELECT MAX(PRODUCT_PRICE) FROM PRODUCT) ;
END$$
DELIMITER ;

/*Executes the most_valuable_product procedure to select the product with the highest price from the PRODUCT table.*/
CALL most_valuable_product ();

/*This code drops the procedure "Order_Value" if it exists in the database. */
DROP PROCEDURE IF EXISTS Order_Value;

/*Creates the Order_Value procedure to select the values of the customers'orders (calculated as the multiplication 
of Order_Quantity and PRODUCT_PRICE) for each order from the ORDER_DETAILS and PRODUCT tables using a JOIN statement.*/
DELIMITER $$

CREATE PROCEDURE Order_Value ()
BEGIN
   SELECT ORDER_DETAILS.Order_ID,ROUND(ORDER_DETAILS.Order_Quantity * PRODUCT.PRODUCT_PRICE,2) AS Order_Value
   FROM ORDER_DETAILS
   JOIN PRODUCT ON ORDER_DETAILS.Product_ID = PRODUCT.PRODUCT_ID; 
END$$

DELIMITER ;

/*Executes the Order_Value procedure to show the values of the customers'orders*/
CALL Order_Value() ;


/*This code drops the procedure "Update_Stock" if it exists in the database. */
DROP TRIGGER IF EXISTS Update_Stock;
/* This code creates a trigger that updates the remaining stock in the "SHELF" table every time a new row is inserted into the "ORDER_DETAILS" table. */
DELIMITER $$

CREATE TRIGGER Update_Stock
AFTER INSERT ON ORDER_DETAILS
FOR EACH ROW
BEGIN
   UPDATE SHELF
   SET Shelf_Remaining_Stock = Shelf_Remaining_Stock - NEW.Order_Quantity
   WHERE Shelf_ID = (SELECT Shelf_ID FROM PRODUCT WHERE Product_ID = NEW.Product_ID);
END$$

DELIMITER ;




/*This code drops the procedure "order_add" if it exists in the database. */
DROP PROCEDURE IF EXISTS order_add;
/*This code creates a procedure named "order_add" that inserts a new row into the "ORDERS" table and a corresponding row into the "ORDER_DETAILS" table with the specified input values. */
DELIMITER $$

CREATE PROCEDURE order_add (IN Order_ID INT(10), IN Order_Date DATETIME, IN Order_BillNo INT (15),
IN Customer_ID INT(15), Product_ID  INT(10),Order_Quantity INT(5))

BEGIN 
INSERT INTO ORDERS VALUES (Order_ID, Order_Date, Order_BillNo, Customer_ID);
INSERT INTO ORDER_DETAILS VALUES (Order_ID, Product_ID, Order_Quantity);
END$$

DELIMITER ;
/*This code calls the "order_add" procedure. */
CALL order_add ('99888','2022-12-20','88888','50020','100002','2');


/*This code drops the procedure "Get_Full_Shelves" if it exists in the database. */
DROP PROCEDURE IF EXISTS Get_Full_Shelves;
/*This code creates a procedure called "Get_Full_Shelves" to retrieve the names and IDs of shelves that has the remaining stock of 10% of the capacity. */
DELIMITER $$

CREATE PROCEDURE Get_Full_Shelves()
BEGIN
  SELECT Shelf_ID, Shelf_Capacity, Shelf_Remaining_Stock
  FROM SHELF
  WHERE  Shelf_Remaining_Stock <=  0.10 * Shelf_Capacity;
END$$

DELIMITER ;
/*This code calls the procedure "Get_Full_Shelves". */
CALL Get_Full_Shelves();



/*This code drops the procedure "High_Value_Customers" if it exists in the database. */
DROP PROCEDURE IF EXISTS High_Value_Customers;

/*This code creates a procedure called "High_Value_Customers" that selects customer information and the total order value for orders over $50,000.*/
DELIMITER $$

CREATE PROCEDURE High_Value_Customers()
BEGIN
  SELECT c.Customer_ID, c.Customer_FName, c.Customer_LName
  FROM CUSTOMER c
  JOIN ORDERS o ON c.Customer_ID = o.Customer_ID JOIN ORDER_DETAILS d ON o.Order_ID = d.Order_ID JOIN PRODUCT p ON d.PRODUCT_ID = p.PRODUCT_ID
  WHERE (d.Order_Quantity * p.PRODUCT_PRICE)  > 50000 ;
END$$

DELIMITER ;
/*This code calls the procedure "High_Value_Customers". */
CALL High_Value_Customers(); 


/* This code drops the "delete_customer_orders" trigger if it exists in the database. */ 
DROP TRIGGER IF EXISTS delete_customer_orders; 
/*This code creates a trigger that deletes all orders for a customer when the customer is deleted from the CUSTOMER table.*/
DELIMITER $$

CREATE TRIGGER delete_customer_orders AFTER DELETE ON CUSTOMER
FOR EACH ROW
BEGIN
  DELETE FROM ORDERS WHERE Customer_ID = OLD.Customer_ID;
END $$

DELIMITER ;

/*This code disables foreign key checks, deletes a customer with the ID 50002 from the CUSTOMER table, and re-enables foreign key checks. */
SET FOREIGN_KEY_CHECKS = 0;
DELETE FROM CUSTOMER WHERE Customer_ID = 50002;
SET FOREIGN_KEY_CHECKS = 1;





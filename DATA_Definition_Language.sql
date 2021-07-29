-- Create the relational model
CREATE TABLE PRODUCT (
    Product_id VARCHAR(20)CONSTRAINT pk_product PRIMARY KEY
    Product_name VARCHAR(20)CONSTRAINT nn_product NOT NULL
    Price NUMBER CONSTRAINT c_product CHECK (price > 0)

)
CREATE TABLE CUSTOMER (
    Customer_id VARCHAR(20)CONSTRAINT pk_customer PRIMARY KEY
    Customer_Name VARCHAR(20)CONSTRAINT nn_customer NOT NULL
    Customer_Tel NUMBER 

)

CREATE TABLE ORDERS (
    Customer_id VARCHAR(20)
    Product_id VARCHAR(20)
    Quantity NUMBER 
    Total_amount NUMBER,

    CONSTRAINT fk_orders FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id)
    CONSTRAINT fk_orders FOREIGN KEY (Product_id) REFERENCES Product (Product_id)

)

-- Add the columns

ALTER TABLE PRODUCT ADD Category VARCHAR2(20)
ALTER TABLE ORDERS ADD OrderDate Date CONSTRAINT df_Date
DEFAULT SYSDATE()
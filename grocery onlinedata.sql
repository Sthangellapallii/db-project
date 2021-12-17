-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-12-17 11:23:31.564

-- tables
-- Table: customer
CREATE TABLE customer (
    CustID int NOT NULL,
    CustName varchar(50) NOT NULL,
    CustPhone int NOT NULL,
    CustLocation int NOT NULL,
    CONSTRAINT customer_pk PRIMARY KEY (CustID)
);

-- Table: employee
CREATE TABLE employee (
    EmpID int NOT NULL,
    EmpName varchar(50) NOT NULL,
    EmpPhn int NOT NULL,
    EmpType varchar(50) NOT NULL,
    CONSTRAINT employee_pk PRIMARY KEY (EmpID)
);

-- Table: order
CREATE TABLE `order` (
    OrdID int NOT NULL,
    OrdDate date NOT NULL,
    OrdLoc int NOT NULL,
    OrdTotal int NOT NULL,
    CustID int NOT NULL,
    EmpID int NOT NULL,
    storeID  int NOT NULL,
    productID int NOT NULL,
    CONSTRAINT order_pk PRIMARY KEY (OrdID)
);

-- Table: product
CREATE TABLE product (
    productID int NOT NULL,
    ProdPrice varchar(50) NOT NULL,
    ProdName varchar(50) NOT NULL,
    QtyAvailable int NOT NULL,
    ProdBrand varchar(50) NOT NULL,
    StoreID  int NOT NULL,
    CONSTRAINT product_pk PRIMARY KEY ( productID)
);

-- Table: store
CREATE TABLE store (
    storeID  int NOT NULL,
    StoreName varchar(50) NOT NULL,
    StoreLocation varchar(50) NOT NULL,
    BrandAvailable varchar(50) NOT NULL,
    CustID int NOT NULL,
    CONSTRAINT store_pk PRIMARY KEY (storeID )
);

-- foreign keys
-- Reference: order_customer (table: order)
ALTER TABLE `order` ADD CONSTRAINT order_customer FOREIGN KEY order_customer (CustID)
    REFERENCES customer (CustID);

-- Reference: order_employee (table: order)
ALTER TABLE `order` ADD CONSTRAINT order_employee FOREIGN KEY order_employee (EmpID)
    REFERENCES employee (EmpID);

-- Reference: order_product (table: order)
ALTER TABLE `order` ADD CONSTRAINT order_product FOREIGN KEY order_product (productID)
    REFERENCES product ( productID);

-- Reference: order_store (table: order)
ALTER TABLE `order` ADD CONSTRAINT order_store FOREIGN KEY order_store (storeID )
    REFERENCES store (storeID );

-- Reference: product_store (table: product)
ALTER TABLE product ADD CONSTRAINT product_store FOREIGN KEY product_store (StoreID )
    REFERENCES store (storeID );

-- Reference: store_customer (table: store)
ALTER TABLE store ADD CONSTRAINT store_customer FOREIGN KEY store_customer (CustID)
    REFERENCES customer (CustID);

-- End of file.


-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-03 10:49:43.511

-- tables
-- Table: Accessories
CREATE TABLE Accessories (
    Acc_ID int NOT NULL,
    Acc_Name varchar(25) NOT NULL,
    Acc_In_Units int NOT NULL,
    Acc_BuyRate float NOT NULL,
    Acc_Out_Units int NOT NULL,
    Dev_ID int NOT NULL,
    Stf_ID int NOT NULL,
    CONSTRAINT Accessories_pk PRIMARY KEY (Acc_ID)
);

-- Table: Bills
CREATE TABLE Bills (
    B_ID int NOT NULL,
    B_Date date NOT NULL,
    B_Name varchar(25) NOT NULL,
    B_Services varchar(25) NOT NULL,
    B_Accessories varchar(25) NOT NULL,
    B_Price float NOT NULL,
    B_Units int NOT NULL,
    B_Amount float NOT NULL,
    Cust_ID int NOT NULL,
    CONSTRAINT Bills_pk PRIMARY KEY (B_ID)
);

-- Table: Customers
CREATE TABLE Customers (
    Cust_ID int NOT NULL,
    Cust_Name Varchar(25) NOT NULL,
    Cust_Contact int NOT NULL,
    Cust_Device Varchar(25) NOT NULL,
    Cust_Dev_Units int NOT NULL,
    CONSTRAINT Customers_pk PRIMARY KEY (Cust_ID)
);

-- Table: Devices
CREATE TABLE Devices (
    Dev_ID int NOT NULL,
    Dev_Make varchar(25) NOT NULL,
    Dev_Model varchar(25) NOT NULL,
    Dev_Version varchar(25) NOT NULL,
    Dev_Accessories varchar(25) NOT NULL,
    Cust_ID int NOT NULL,
    Stf_ID int NOT NULL,
    Acc_ID int NOT NULL,
    B_ID int NOT NULL,
    CONSTRAINT Devices_pk PRIMARY KEY (Dev_ID)
);

-- Table: Staffs
CREATE TABLE Staffs (
    Stf_ID int NOT NULL,
    Stf_Name varchar(25) NOT NULL,
    Stf_Role varchar(25) NOT NULL,
    Stf_Serv_Units int NOT NULL,
    CONSTRAINT Staffs_pk PRIMARY KEY (Stf_ID)
);

-- foreign keys
-- Reference: Accessories_Devices (table: Accessories)
ALTER TABLE Accessories ADD CONSTRAINT Accessories_Devices FOREIGN KEY Accessories_Devices (Dev_ID)
    REFERENCES Devices (Dev_ID);

-- Reference: Accessories_Staffs (table: Accessories)
ALTER TABLE Accessories ADD CONSTRAINT Accessories_Staffs FOREIGN KEY Accessories_Staffs (Stf_ID)
    REFERENCES Staffs (Stf_ID);

-- Reference: Bills_Customers (table: Bills)
ALTER TABLE Bills ADD CONSTRAINT Bills_Customers FOREIGN KEY Bills_Customers (Cust_ID)
    REFERENCES Customers (Cust_ID);

-- Reference: Devices_Accessories (table: Devices)
ALTER TABLE Devices ADD CONSTRAINT Devices_Accessories FOREIGN KEY Devices_Accessories (Acc_ID)
    REFERENCES Accessories (Acc_ID);

-- Reference: Devices_Bills (table: Devices)
ALTER TABLE Devices ADD CONSTRAINT Devices_Bills FOREIGN KEY Devices_Bills (B_ID)
    REFERENCES Bills (B_ID);

-- Reference: Devices_Customers (table: Devices)
ALTER TABLE Devices ADD CONSTRAINT Devices_Customers FOREIGN KEY Devices_Customers (Cust_ID)
    REFERENCES Customers (Cust_ID);

-- Reference: Devices_Staffs (table: Devices)
ALTER TABLE Devices ADD CONSTRAINT Devices_Staffs FOREIGN KEY Devices_Staffs (Stf_ID)
    REFERENCES Staffs (Stf_ID);

-- End of file.


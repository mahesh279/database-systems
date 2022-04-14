-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-11 16:59:47.532

-- tables
-- Table: Accessories
CREATE TABLE Accessories (
    Acc_ID int  NOT NULL,
    Acc_Name varchar(25)  NOT NULL,
    Acc_In_Units int  NOT NULL,
    Acc_BuyRate float  NOT NULL,
    Acc_Out_Units int  NOT NULL,
    CONSTRAINT Accessories_pk PRIMARY KEY (Acc_ID)
);

-- Table: Bills
CREATE TABLE Bills (
    B_ID int  NOT NULL,
    B_Date date  NOT NULL,
    B_Name varchar(25)  NOT NULL,
    B_Services varchar(25)  NOT NULL,
    B_Accessories varchar(25)  NOT NULL,
    B_Price float  NOT NULL,
    B_Units int  NOT NULL,
    B_Amount float  NOT NULL,
    Customers_Cust_ID int  NOT NULL,
    CONSTRAINT Bills_pk PRIMARY KEY (B_ID)
);

-- Table: Customers
CREATE TABLE Customers (
    Cust_ID int  NOT NULL,
    Cust_Name varchar(25)  NOT NULL,
    Cust_Contact int  NOT NULL,
    Cust_Device varchar(25)  NOT NULL,
    Cust_Dev_Units int  NOT NULL,
    CONSTRAINT Customers_pk PRIMARY KEY (Cust_ID)
);

-- Table: Devices
CREATE TABLE Devices (
    Dev_ID int  NOT NULL,
    Dev_Make varchar(25)  NOT NULL,
    Dev_Model varchar(25)  NOT NULL,
    Dev_Version varchar(25)  NOT NULL,
    Dev_Accessories varchar(25)  NOT NULL,
    Bills_B_ID int  NOT NULL,
    Staff_Stf_ID int  NOT NULL,
    Accessories_Acc_ID int  NOT NULL,
    CONSTRAINT Devices_pk PRIMARY KEY (Dev_ID)
);

-- Table: Staff
CREATE TABLE Staff (
    Stf_ID int  NOT NULL,
    Stf_Name varchar(25)  NOT NULL,
    Stf_Role varchar(25)  NOT NULL,
    Stf_Serv_Units int  NOT NULL,
    Accessories_Acc_ID int  NOT NULL,
    CONSTRAINT Staff_pk PRIMARY KEY (Stf_ID)
);

-- foreign keys
-- Reference: Bills_Customers (table: Bills)
ALTER TABLE Bills ADD CONSTRAINT Bills_Customers
    FOREIGN KEY (Customers_Cust_ID)
    REFERENCES Customers (Cust_ID)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Devices_Accessories (table: Devices)
ALTER TABLE Devices ADD CONSTRAINT Devices_Accessories
    FOREIGN KEY (Accessories_Acc_ID)
    REFERENCES Accessories (Acc_ID)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Devices_Bills (table: Devices)
ALTER TABLE Devices ADD CONSTRAINT Devices_Bills
    FOREIGN KEY (Bills_B_ID)
    REFERENCES Bills (B_ID)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Devices_Staff (table: Devices)
ALTER TABLE Devices ADD CONSTRAINT Devices_Staff
    FOREIGN KEY (Staff_Stf_ID)
    REFERENCES Staff (Stf_ID)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Staff_Accessories (table: Staff)
ALTER TABLE Staff ADD CONSTRAINT Staff_Accessories
    FOREIGN KEY (Accessories_Acc_ID)
    REFERENCES Accessories (Acc_ID)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.


DROP DATABASE IF EXISTS ap;
CREATE DATABASE ap;
USE ap;

CREATE TABLE vendors (
    vendorID        INT             NOT NULL    AUTO_INCREMENT,
    vendorName      VARCHAR(45)     NOT NULL,
    vendorAddress   VARCHAR(45)     NOT NULL,
    vendorCity      VARCHAR(45)     NOT NULL,
    vendorState     VARCHAR(45)     NOT NULL,
    vendorZipCode   VARCHAR(10)     NOT NULL,
    vendorPhone     VARCHAR(20)     NOT NULL,

    PRIMARY KEY (vendorID)
);

CREATE TABLE invoices (
    invoiceID       INT             NOT NULL    AUTO_INCREMENT,
    vendorID        INT             NOT NULL,
    invoiceNumber   VARCHAR(45)     NOT NULL,
    invoiceDate     DATETIME        NOT NULL,
    invoiceTotal    DECIMAL         NOT NULL,
    paymentTotal    DECIMAL         NOT NULL,

    PRIMARY KEY (invoiceID),
    FOREIGN KEY (vendorID) REFERENCES vendors (vendorID),
    
    INDEX vendorID (vendorID)
);

CREATE INDEX invoiceNumber ON invoices (invoiceNumber);

CREATE TABLE lineItems (
    lineItemID      INT             NOT NULL    AUTO_INCREMENT,
    invoiceID       INT             NOT NULL,
    description     VARCHAR(45)                 DEFAULT NULL,
    quantity        INT             NOT NULL,
    price           INT             NOT NULL,
    lineItemTotal   DECIMAL         NOT NULL,

    PRIMARY KEY (lineItemID),
    FOREIGN KEY (invoiceID) REFERENCES invoices (invoiceID),
    
    INDEX invoiceID (invoiceID)
);

GRANT 	SELECT,
		INSERT,
        UPDATE
   ON 	ap.*
   TO 	ap_user@localhost IDENTIFIED BY 'sesame';
   
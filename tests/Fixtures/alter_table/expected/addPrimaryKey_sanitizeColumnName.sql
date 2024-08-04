
-- CREATE INDEXES 01 ...
ALTER TABLE `example` ADD PRIMARY KEY (`ID`);

-- CREATE INDEXES 02 ...
ALTER TABLE `Destination` ADD PRIMARY KEY (`FlugNr`);

-- CREATE INDEXES 03 ...
ALTER TABLE `Flugplan` ADD INDEX `FlugplanKategorie` (`Kategorie`);
ALTER TABLE `Flugplan` ADD PRIMARY KEY (`FlugNr`);

-- CREATE INDEXES 04 ...
ALTER TABLE `Kategorien` ADD PRIMARY KEY (`Kategorie`);

-- CREATE INDEXES 05 ...
ALTER TABLE `Employees` ADD INDEX `EmployeeID` (`EmployeeID`);
ALTER TABLE `Employees` ADD INDEX `PostalCode` (`PostalCode`);
ALTER TABLE `Employees` ADD PRIMARY KEY (`EmployeeID`);

-- CREATE INDEXES 06 ...
ALTER TABLE `Gebrauchtwagen` ADD INDEX `Nummer` (`Nummer`);
ALTER TABLE `Gebrauchtwagen` ADD PRIMARY KEY (`Nummer`);

-- CREATE INDEXES 07 ...
ALTER TABLE `Brasilien` ADD INDEX `ID-Nr` (`ID-Nr`);
ALTER TABLE `Brasilien` ADD PRIMARY KEY (`IDNr`);

-- CREATE INDEXES 08 ...
ALTER TABLE `Deutschland` ADD INDEX `ID-Nr` (`ID-Nr`);
ALTER TABLE `Deutschland` ADD PRIMARY KEY (`IDNr`);

-- CREATE INDEXES 09 ...
ALTER TABLE `England` ADD INDEX `ID-nr` (`ID-Nr`);
ALTER TABLE `England` ADD PRIMARY KEY (`IDNr`);

-- CREATE INDEXES 10 ...
ALTER TABLE `Frankreich` ADD INDEX `ID-Nr` (`ID-Nr`);
ALTER TABLE `Frankreich` ADD PRIMARY KEY (`IDNr`);

-- CREATE INDEXES 11 ...
ALTER TABLE `nichts_neues` ADD PRIMARY KEY (`nr`);

-- CREATE INDEXES 12 ...
ALTER TABLE `Niederlande` ADD INDEX `ID-NR` (`ID-NR`);
ALTER TABLE `Niederlande` ADD PRIMARY KEY (`IDNR`);

-- CREATE INDEXES 13 ...
ALTER TABLE `Position1` ADD INDEX `ID-Nr` (`ID-Nr`);
ALTER TABLE `Position1` ADD INDEX `Kategorie` (`Kategorie`);
ALTER TABLE `Position1` ADD PRIMARY KEY (`IDNr`);

-- CREATE INDEXES 14 ...
ALTER TABLE `Position2` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Position2` ADD INDEX `ProbePosition` (`Position`);

-- CREATE INDEXES 15 ...
ALTER TABLE `Prämie` ADD INDEX `ID-NR` (`ID-NR`);
ALTER TABLE `Prämie` ADD PRIMARY KEY (`IDNR`);

-- CREATE INDEXES 16 ...
ALTER TABLE `Prämie2` ADD INDEX `ID-NR` (`ID-NR`);
ALTER TABLE `Prämie2` ADD PRIMARY KEY (`IDNR`);

-- CREATE INDEXES 17 ...
ALTER TABLE `Argentinien` ADD INDEX `ID-Nr` (`ID-Nr`);
ALTER TABLE `Argentinien` ADD PRIMARY KEY (`IDNr`);

-- CREATE INDEXES 18 ...
ALTER TABLE `Customers` ADD UNIQUE INDEX `Attachments_21D91B3288B8413CA14C2FC0E055693E` (`Attachments`);
ALTER TABLE `Customers` ADD INDEX `City` (`City`);
ALTER TABLE `Customers` ADD INDEX `Company` (`Company`);
ALTER TABLE `Customers` ADD INDEX `First Name` (`First Name`);
ALTER TABLE `Customers` ADD INDEX `Last Name` (`Last Name`);
ALTER TABLE `Customers` ADD INDEX `Postal Code` (`ZIP/Postal Code`);
ALTER TABLE `Customers` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Customers` ADD INDEX `State/Province` (`State/Province`);

-- CREATE INDEXES 19 ...
ALTER TABLE `Employee Privileges` ADD INDEX `EmployeePriviligesforEmployees` (`Employee ID`);
ALTER TABLE `Employee Privileges` ADD INDEX `EmployeePriviligesLookup` (`Privilege ID`);
ALTER TABLE `Employee Privileges` ADD PRIMARY KEY (`Employee ID`, `Privilege ID`);
ALTER TABLE `Employee Privileges` ADD INDEX `Privilege ID` ();

-- CREATE INDEXES 20 ...
ALTER TABLE `Employees` ADD UNIQUE INDEX `Attachments_F94722CD755F4E6DA9E29EEB30584E09` (`Attachments`);
ALTER TABLE `Employees` ADD INDEX `City` (`City`);
ALTER TABLE `Employees` ADD INDEX `Company` (`Company`);
ALTER TABLE `Employees` ADD INDEX `First Name` (`First Name`);
ALTER TABLE `Employees` ADD INDEX `Last Name` (`Last Name`);
ALTER TABLE `Employees` ADD INDEX `Postal Code` (`ZIP/Postal Code`);
ALTER TABLE `Employees` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Employees` ADD INDEX `State/Province` (`State/Province`);

-- CREATE INDEXES 21 ...
ALTER TABLE `Inventory Transaction Types` ADD PRIMARY KEY (`ID`);

-- CREATE INDEXES 22 ...
ALTER TABLE `Inventory Transactions` ADD INDEX `Customer Order ID` (`Customer Order ID`);
ALTER TABLE `Inventory Transactions` ADD UNIQUE INDEX `OrdersOnInventoryTransactions` (`Transaction ID`);
ALTER TABLE `Inventory Transactions` ADD PRIMARY KEY (`ProductID`);
ALTER TABLE `Inventory Transactions` ADD INDEX `Product ID` (`Purchase Order ID`);
ALTER TABLE `Inventory Transactions` ADD INDEX `ProductOnInventoryTransaction` (`Transaction Type`);
ALTER TABLE `Inventory Transactions` ADD INDEX `PuchaseOrdersonInventoryTransactions` ();
ALTER TABLE `Inventory Transactions` ADD INDEX `Purchase Order ID` ();
ALTER TABLE `Inventory Transactions` ADD INDEX `TransactionTypesOnInventoryTransactiosn` ();

-- CREATE INDEXES 23 ...
ALTER TABLE `Invoices` ADD INDEX `Order ID` (`Order ID`);
ALTER TABLE `Invoices` ADD UNIQUE INDEX `OrderInvoice` (`Invoice ID`);
ALTER TABLE `Invoices` ADD PRIMARY KEY ();

-- CREATE INDEXES 24 ...
ALTER TABLE `Order Details` ADD INDEX `ID` (`ID`);
ALTER TABLE `Order Details` ADD INDEX `Inventory ID` (`Inventory ID`);
ALTER TABLE `Order Details` ADD INDEX `OrderDetails` (`Order ID`);
ALTER TABLE `Order Details` ADD INDEX `OrderID` (`Status ID`);
ALTER TABLE `Order Details` ADD UNIQUE INDEX `OrderStatusLookup` (`ID`);
ALTER TABLE `Order Details` ADD PRIMARY KEY (`ProductID`);
ALTER TABLE `Order Details` ADD INDEX `ProductID` (`Purchase Order ID`);
ALTER TABLE `Order Details` ADD INDEX `ProductsOnOrders` ();
ALTER TABLE `Order Details` ADD INDEX `Purchase Order ID` ();
ALTER TABLE `Order Details` ADD INDEX `Status ID` ();

-- CREATE INDEXES 25 ...
ALTER TABLE `Order Details Status` ADD PRIMARY KEY (`StatusID`);

-- CREATE INDEXES 26 ...
ALTER TABLE `Orders` ADD INDEX `CustomerID` (`Customer ID`);
ALTER TABLE `Orders` ADD INDEX `CustomerOnOrders` (`Employee ID`);
ALTER TABLE `Orders` ADD INDEX `EmployeeID` (`Order ID`);
ALTER TABLE `Orders` ADD INDEX `EmployeesOnOrders` (`Status ID`);
ALTER TABLE `Orders` ADD UNIQUE INDEX `ID` (`Order ID`);
ALTER TABLE `Orders` ADD INDEX `OrderStatus` (`Shipper ID`);
ALTER TABLE `Orders` ADD PRIMARY KEY (`TaxStatus`);
ALTER TABLE `Orders` ADD UNIQUE INDEX `ShipperID` (`VersionHistory_F5F8918F-0A3F-4DA9-AE71-184EE5012880`);
ALTER TABLE `Orders` ADD INDEX `ShipperOnOrder` (`Ship ZIP/Postal Code`);
ALTER TABLE `Orders` ADD INDEX `Status ID` ();
ALTER TABLE `Orders` ADD INDEX `TaxStatusOnOrders` ();
ALTER TABLE `Orders` ADD INDEX `VersionHistory_F5F8918F-0A3F-4D_E1F9CD05C9964A88B126E7D4B3D5D4F8` ();
ALTER TABLE `Orders` ADD INDEX `ZIP/Postal Code` ();

-- CREATE INDEXES 27 ...
ALTER TABLE `Orders Status` ADD PRIMARY KEY (`StatusID`);

-- CREATE INDEXES 28 ...
ALTER TABLE `Orders Tax Status` ADD PRIMARY KEY (`ID`);

-- CREATE INDEXES 29 ...
ALTER TABLE `Products` ADD UNIQUE INDEX `Attachments_E5FCEC2C34344FBC8C0774DEC713CBC3` (`Attachments`);
ALTER TABLE `Products` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Products` ADD INDEX `Product Code` (`Product Code`);
ALTER TABLE `Products` ADD UNIQUE INDEX `Supplier IDs_31DB458B9643404E817FE2B2F497EF71` (`Supplier IDs`);

-- CREATE INDEXES 30 ...
ALTER TABLE `Purchase Order Details` ADD INDEX `ID` (`ID`);
ALTER TABLE `Purchase Order Details` ADD INDEX `Inventory ID` (`Inventory ID`);
ALTER TABLE `Purchase Order Details` ADD INDEX `InventoryTransactionsOnPurchaseOrders` (`Purchase Order ID`);
ALTER TABLE `Purchase Order Details` ADD UNIQUE INDEX `OrderID` (`ID`);
ALTER TABLE `Purchase Order Details` ADD PRIMARY KEY (`ProductID`);
ALTER TABLE `Purchase Order Details` ADD INDEX `ProductID` ();
ALTER TABLE `Purchase Order Details` ADD INDEX `ProductOnPurchaseOrderDetails` ();
ALTER TABLE `Purchase Order Details` ADD INDEX `PurchaseOrderDeatilsOnPurchaseOrder` ();

-- CREATE INDEXES 31 ...
ALTER TABLE `Purchase Order Status` ADD PRIMARY KEY (`StatusID`);

-- CREATE INDEXES 32 ...
ALTER TABLE `Purchase Orders` ADD INDEX `EmployeesOnPurchaseOrder` (`Created By`);
ALTER TABLE `Purchase Orders` ADD UNIQUE INDEX `ID` (`Purchase Order ID`);
ALTER TABLE `Purchase Orders` ADD PRIMARY KEY (`PurchaseOrderID`);
ALTER TABLE `Purchase Orders` ADD INDEX `PurchaseOrderStatusLookup` (`Status ID`);
ALTER TABLE `Purchase Orders` ADD INDEX `Status ID` (`Supplier ID`);
ALTER TABLE `Purchase Orders` ADD INDEX `SupplierID` ();
ALTER TABLE `Purchase Orders` ADD INDEX `SuppliersOnPurchaseOrder` ();

-- CREATE INDEXES 33 ...
ALTER TABLE `Sales Reports` ADD PRIMARY KEY (`GroupBy`);

-- CREATE INDEXES 34 ...
ALTER TABLE `Shippers` ADD UNIQUE INDEX `Attachments_51FFA228DB4944FB831D2CD982734FD9` (`Attachments`);
ALTER TABLE `Shippers` ADD INDEX `City` (`City`);
ALTER TABLE `Shippers` ADD INDEX `Company` (`Company`);
ALTER TABLE `Shippers` ADD INDEX `First Name` (`First Name`);
ALTER TABLE `Shippers` ADD INDEX `Last Name` (`Last Name`);
ALTER TABLE `Shippers` ADD INDEX `Postal Code` (`ZIP/Postal Code`);
ALTER TABLE `Shippers` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Shippers` ADD INDEX `State/Province` (`State/Province`);

-- CREATE INDEXES 35 ...
ALTER TABLE `Strings` ADD PRIMARY KEY (`StringID`);

-- CREATE INDEXES 36 ...
ALTER TABLE `Suppliers` ADD UNIQUE INDEX `Attachments_73581C85DDF1415AB6A672B555C3EF18` (`Attachments`);
ALTER TABLE `Suppliers` ADD INDEX `City` (`City`);
ALTER TABLE `Suppliers` ADD INDEX `Company` (`Company`);
ALTER TABLE `Suppliers` ADD INDEX `First Name` (`First Name`);
ALTER TABLE `Suppliers` ADD INDEX `Last Name` (`Last Name`);
ALTER TABLE `Suppliers` ADD INDEX `Postal Code` (`ZIP/Postal Code`);
ALTER TABLE `Suppliers` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Suppliers` ADD INDEX `State/Province` (`State/Province`);

-- CREATE INDEXES 37 ...
ALTER TABLE `Privileges` ADD PRIMARY KEY (`PrivilegeID`);

-- CREATE INDEXES 38 ...
ALTER TABLE `Categories` ADD UNIQUE INDEX `CategoryName` (`CategoryName`);
ALTER TABLE `Categories` ADD PRIMARY KEY (`CategoryID`);

-- CREATE INDEXES 39 ...
ALTER TABLE `Customers` ADD INDEX `City` (`City`);
ALTER TABLE `Customers` ADD INDEX `CompanyName` (`CompanyName`);
ALTER TABLE `Customers` ADD INDEX `PostalCode` (`PostalCode`);
ALTER TABLE `Customers` ADD PRIMARY KEY (`CustomerID`);
ALTER TABLE `Customers` ADD INDEX `Region` (`Region`);

-- CREATE INDEXES 40 ...
ALTER TABLE `Employees` ADD INDEX `LastName` (`LastName`);
ALTER TABLE `Employees` ADD INDEX `PostalCode` (`PostalCode`);
ALTER TABLE `Employees` ADD PRIMARY KEY (`EmployeeID`);

-- CREATE INDEXES 41 ...
ALTER TABLE `Order Details` ADD INDEX `OrderID` (`OrderID`);
ALTER TABLE `Order Details` ADD PRIMARY KEY (`OrderID`, `ProductID`);
ALTER TABLE `Order Details` ADD INDEX `ProductID` (`ProductID`);

-- CREATE INDEXES 42 ...
ALTER TABLE `Orders` ADD INDEX `CustomerID` (`CustomerID`);
ALTER TABLE `Orders` ADD INDEX `EmployeeID` (`EmployeeID`);
ALTER TABLE `Orders` ADD INDEX `OrderDate` (`OrderDate`);
ALTER TABLE `Orders` ADD PRIMARY KEY (`OrderID`);
ALTER TABLE `Orders` ADD INDEX `ShippedDate` (`ShippedDate`);
ALTER TABLE `Orders` ADD INDEX `ShipPostalCode` (`ShipPostalCode`);

-- CREATE INDEXES 43 ...
ALTER TABLE `Products` ADD INDEX `CategoryID` (`CategoryID`);
ALTER TABLE `Products` ADD PRIMARY KEY (`ProductID`);
ALTER TABLE `Products` ADD INDEX `ProductName` (`ProductName`);
ALTER TABLE `Products` ADD INDEX `SupplierID` (`SupplierID`);

-- CREATE INDEXES 44 ...
ALTER TABLE `Shippers` ADD PRIMARY KEY (`ShipperID`);

-- CREATE INDEXES 45 ...
ALTER TABLE `Suppliers` ADD INDEX `CompanyName` (`CompanyName`);
ALTER TABLE `Suppliers` ADD INDEX `PostalCode` (`PostalCode`);
ALTER TABLE `Suppliers` ADD PRIMARY KEY (`SupplierID`);

-- CREATE INDEXES 46 ...
ALTER TABLE `Questionnaire` ADD PRIMARY KEY (`UniqueKey`);

-- CREATE INDEXES 47 ...
ALTER TABLE `Zahlungen` ADD PRIMARY KEY (`ZahlungID`);
ALTER TABLE `Zahlungen` ADD UNIQUE INDEX `Zahlungs-Nr` (`Zahlung-ID`);

-- CREATE INDEXES 48 ...
ALTER TABLE `Mitglieder` ADD INDEX `MitgliederKategorie-Nr` (`Kategorie-Nr`);
ALTER TABLE `Mitglieder` ADD PRIMARY KEY (`MitgliedNr`);

-- CREATE INDEXES 49 ...
ALTER TABLE `Reise` ADD PRIMARY KEY (`ReiseID`);

-- CREATE INDEXES 50 ...
ALTER TABLE `Kategorien` ADD PRIMARY KEY (`Nr`);

-- CREATE INDEXES 51 ...
ALTER TABLE `Schueler` ADD PRIMARY KEY (`SchuelerNr`);

-- CREATE INDEXES 52 ...
ALTER TABLE `Agsystemfieldtestin` ADD INDEX `Agro-ecosystem code` (`ecosystem_ID`);
ALTER TABLE `Agsystemfieldtestin` ADD PRIMARY KEY (`ecosystem_ID`);

-- CREATE INDEXES 53 ...
ALTER TABLE `Agsystemimprovement` ADD INDEX `Number of potential beneficiaries` (`beneficiaries`);
ALTER TABLE `Agsystemimprovement` ADD PRIMARY KEY (`Ecosystem_ID`);

-- CREATE INDEXES 54 ...
ALTER TABLE `Flagshipprdcts` ADD INDEX `Flagship code` (`Flagship_product_ID`);
ALTER TABLE `Flagshipprdcts` ADD PRIMARY KEY (`Flagship_product_ID`);

-- CREATE INDEXES 55 ...
ALTER TABLE `Innovationplatform` ADD INDEX `Innovation code` (`Innovation_ID`);
ALTER TABLE `Innovationplatform` ADD PRIMARY KEY (`Innovation_ID`);

-- CREATE INDEXES 56 ...
ALTER TABLE `Ltermtraining` ADD INDEX `Long training code` (`long_training_ID`);
ALTER TABLE `Ltermtraining` ADD INDEX `Long training code1` (`long_trainee_name`);
ALTER TABLE `Ltermtraining` ADD PRIMARY KEY (`long_training_ID`);

-- CREATE INDEXES 57 ...
ALTER TABLE `Newtechnologies` ADD INDEX `Number_of_men` (`Number_men`);
ALTER TABLE `Newtechnologies` ADD INDEX `Number_of_people` (`Number_women`);
ALTER TABLE `Newtechnologies` ADD PRIMARY KEY (`Technology_ID`);

-- CREATE INDEXES 58 ...
ALTER TABLE `Openaccesdtbs` ADD INDEX `Database code` (`Database_ID`);
ALTER TABLE `Openaccesdtbs` ADD INDEX `Number of users` (`users`);
ALTER TABLE `Openaccesdtbs` ADD PRIMARY KEY (`Database_ID`);

-- CREATE INDEXES 59 ...
ALTER TABLE `Publications` ADD PRIMARY KEY (`Publication_ID`);
ALTER TABLE `Publications` ADD INDEX `Publication code` (`Publication_ID`);

-- CREATE INDEXES 60 ...
ALTER TABLE `Pubtargetinecosystems` ADD PRIMARY KEY (`Publication_ID`);

-- CREATE INDEXES 61 ...
ALTER TABLE `Stermtraining` ADD INDEX `Number of men` (`men_number`);
ALTER TABLE `Stermtraining` ADD INDEX `number of women` (`women_number`);
ALTER TABLE `Stermtraining` ADD PRIMARY KEY (`Short_training_ID`);

-- CREATE INDEXES 62 ...
ALTER TABLE `Strategicvchainsanalysed` ADD PRIMARY KEY (`Value_chain_ID`);
ALTER TABLE `Strategicvchainsanalysed` ADD INDEX `Value chain code` (`Value_chain_ID`);

-- CREATE INDEXES 63 ...
ALTER TABLE `Targetagroecosystems` ADD PRIMARY KEY (`Ecosystem_ID`);

-- CREATE INDEXES 64 ...
ALTER TABLE `Technpracticreleasd` ADD PRIMARY KEY (`Practice_ID`);

-- CREATE INDEXES 65 ...
ALTER TABLE `Techonground` ADD PRIMARY KEY (`Technology_ID`);

-- CREATE INDEXES 66 ...
ALTER TABLE `Techunderresearch` ADD INDEX `Practise code` (`Practise_ID`);
ALTER TABLE `Techunderresearch` ADD PRIMARY KEY (`Practise_ID`);

-- CREATE INDEXES 67 ...
ALTER TABLE `Toolsproduced` ADD PRIMARY KEY (`Tool_ID`);
ALTER TABLE `Toolsproduced` ADD INDEX `Tool code` (`Tool_ID`);

-- CREATE INDEXES 68 ...
ALTER TABLE `Policies` ADD PRIMARY KEY (`Policy_ID`);

-- CREATE INDEXES 69 ...
ALTER TABLE `techfieldtested` ADD PRIMARY KEY (`practise_ID`);
ALTER TABLE `techfieldtested` ADD INDEX `Technology code` (`practise_name`);

-- CREATE INDEXES 70 ...
ALTER TABLE `Payments` ADD PRIMARY KEY (`ID`);

-- CREATE INDEXES 71 ...
ALTER TABLE `cliente` ADD PRIMARY KEY (`codigo`);

-- CREATE INDEXES 72 ...
ALTER TABLE `reservas` ADD PRIMARY KEY (`cliente`, `vehiculo`, `inicio`);

-- CREATE INDEXES 73 ...
ALTER TABLE `vehiculo` ADD PRIMARY KEY (`matricula`);

-- CREATE INDEXES 74 ...
ALTER TABLE `Artikel` ADD PRIMARY KEY (`Nr`);

-- CREATE INDEXES 75 ...
ALTER TABLE `Bestellung` ADD PRIMARY KEY (`BestellNr`);

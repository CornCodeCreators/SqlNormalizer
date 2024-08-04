
-- CREATE INDEXES 01 ...
ALTER TABLE `example` ADD PRIMARY KEY (`ID`);

-- CREATE INDEXES 02 ...
ALTER TABLE `Destination` ADD PRIMARY KEY (`FlugNr`);

-- CREATE INDEXES 03 ...
ALTER TABLE `Flugplan` ADD INDEX `flugplankategorie` (`Kategorie`);
ALTER TABLE `Flugplan` ADD PRIMARY KEY (`FlugNr`);

-- CREATE INDEXES 04 ...
ALTER TABLE `Kategorien` ADD PRIMARY KEY (`Kategorie`);

-- CREATE INDEXES 05 ...
ALTER TABLE `Employees` ADD INDEX `employeeid` (`EmployeeID`);
ALTER TABLE `Employees` ADD INDEX `postalcode` (`PostalCode`);
ALTER TABLE `Employees` ADD PRIMARY KEY (`EmployeeID`);

-- CREATE INDEXES 06 ...
ALTER TABLE `Gebrauchtwagen` ADD INDEX `nummer` (`Nummer`);
ALTER TABLE `Gebrauchtwagen` ADD PRIMARY KEY (`Nummer`);

-- CREATE INDEXES 07 ...
ALTER TABLE `Brasilien` ADD INDEX `idnr` (`IDNr`);
ALTER TABLE `Brasilien` ADD PRIMARY KEY (`ID-Nr`);

-- CREATE INDEXES 08 ...
ALTER TABLE `Deutschland` ADD INDEX `idnr` (`IDNr`);
ALTER TABLE `Deutschland` ADD PRIMARY KEY (`ID-Nr`);

-- CREATE INDEXES 09 ...
ALTER TABLE `England` ADD INDEX `idnr` (`IDNr`);
ALTER TABLE `England` ADD PRIMARY KEY (`ID-Nr`);

-- CREATE INDEXES 10 ...
ALTER TABLE `Frankreich` ADD INDEX `idnr` (`IDNr`);
ALTER TABLE `Frankreich` ADD PRIMARY KEY (`ID-Nr`);

-- CREATE INDEXES 11 ...
ALTER TABLE `nichts_neues` ADD PRIMARY KEY (`nr`);

-- CREATE INDEXES 12 ...
ALTER TABLE `Niederlande` ADD INDEX `idnr` (`IDNR`);
ALTER TABLE `Niederlande` ADD PRIMARY KEY (`ID-NR`);

-- CREATE INDEXES 13 ...
ALTER TABLE `Position1` ADD INDEX `idnr` (`IDNr`);
ALTER TABLE `Position1` ADD INDEX `kategorie` (`Kategorie`);
ALTER TABLE `Position1` ADD PRIMARY KEY (`ID-Nr`);

-- CREATE INDEXES 14 ...
ALTER TABLE `Position2` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Position2` ADD INDEX `probeposition` (`Position`);

-- CREATE INDEXES 15 ...
ALTER TABLE `Prämie` ADD INDEX `idnr` (`IDNR`);
ALTER TABLE `Prämie` ADD PRIMARY KEY (`ID-NR`);

-- CREATE INDEXES 16 ...
ALTER TABLE `Prämie2` ADD INDEX `idnr` (`IDNR`);
ALTER TABLE `Prämie2` ADD PRIMARY KEY (`ID-NR`);

-- CREATE INDEXES 17 ...
ALTER TABLE `Argentinien` ADD INDEX `idnr` (`IDNr`);
ALTER TABLE `Argentinien` ADD PRIMARY KEY (`ID-Nr`);

-- CREATE INDEXES 18 ...
ALTER TABLE `Customers` ADD UNIQUE INDEX `attachments_21d91b3288b8413ca14c2fc0e055693e` (`Attachments`);
ALTER TABLE `Customers` ADD INDEX `city` (`City`);
ALTER TABLE `Customers` ADD INDEX `company` (`Company`);
ALTER TABLE `Customers` ADD INDEX `firstname` (`FirstName`);
ALTER TABLE `Customers` ADD INDEX `lastname` (`LastName`);
ALTER TABLE `Customers` ADD INDEX `postalcode` (`ZIP/PostalCode`);
ALTER TABLE `Customers` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Customers` ADD INDEX `state/province` (`State/Province`);

-- CREATE INDEXES 19 ...
ALTER TABLE `Employee Privileges` ADD INDEX `employeepriviligesforemployees` (`EmployeeID`);
ALTER TABLE `Employee Privileges` ADD INDEX `employeepriviligeslookup` (`PrivilegeID`);
ALTER TABLE `Employee Privileges` ADD PRIMARY KEY (`Employee ID`, `Privilege ID`);
ALTER TABLE `Employee Privileges` ADD INDEX `Privilege ID` ();

-- CREATE INDEXES 20 ...
ALTER TABLE `Employees` ADD UNIQUE INDEX `attachments_f94722cd755f4e6da9e29eeb30584e09` (`Attachments`);
ALTER TABLE `Employees` ADD INDEX `city` (`City`);
ALTER TABLE `Employees` ADD INDEX `company` (`Company`);
ALTER TABLE `Employees` ADD INDEX `firstname` (`FirstName`);
ALTER TABLE `Employees` ADD INDEX `lastname` (`LastName`);
ALTER TABLE `Employees` ADD INDEX `postalcode` (`ZIP/PostalCode`);
ALTER TABLE `Employees` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Employees` ADD INDEX `state/province` (`State/Province`);

-- CREATE INDEXES 21 ...
ALTER TABLE `Inventory Transaction Types` ADD PRIMARY KEY (`ID`);

-- CREATE INDEXES 22 ...
ALTER TABLE `Inventory Transactions` ADD INDEX `customerorderid` (`CustomerOrderID`);
ALTER TABLE `Inventory Transactions` ADD UNIQUE INDEX `ordersoninventorytransactions` (`TransactionID`);
ALTER TABLE `Inventory Transactions` ADD PRIMARY KEY (`Product ID`);
ALTER TABLE `Inventory Transactions` ADD INDEX `productid` (`PurchaseOrderID`);
ALTER TABLE `Inventory Transactions` ADD INDEX `productoninventorytransaction` (`TransactionType`);
ALTER TABLE `Inventory Transactions` ADD INDEX `PuchaseOrdersonInventoryTransactions` ();
ALTER TABLE `Inventory Transactions` ADD INDEX `Purchase Order ID` ();
ALTER TABLE `Inventory Transactions` ADD INDEX `TransactionTypesOnInventoryTransactiosn` ();

-- CREATE INDEXES 23 ...
ALTER TABLE `Invoices` ADD INDEX `orderid` (`OrderID`);
ALTER TABLE `Invoices` ADD UNIQUE INDEX `orderinvoice` (`InvoiceID`);
ALTER TABLE `Invoices` ADD PRIMARY KEY ();

-- CREATE INDEXES 24 ...
ALTER TABLE `Order Details` ADD INDEX `id` (`ID`);
ALTER TABLE `Order Details` ADD INDEX `inventoryid` (`InventoryID`);
ALTER TABLE `Order Details` ADD INDEX `orderdetails` (`OrderID`);
ALTER TABLE `Order Details` ADD INDEX `orderid` (`StatusID`);
ALTER TABLE `Order Details` ADD UNIQUE INDEX `orderstatuslookup` (`ID`);
ALTER TABLE `Order Details` ADD PRIMARY KEY (`Product ID`);
ALTER TABLE `Order Details` ADD INDEX `productid` (`PurchaseOrderID`);
ALTER TABLE `Order Details` ADD INDEX `ProductsOnOrders` ();
ALTER TABLE `Order Details` ADD INDEX `Purchase Order ID` ();
ALTER TABLE `Order Details` ADD INDEX `Status ID` ();

-- CREATE INDEXES 25 ...
ALTER TABLE `Order Details Status` ADD PRIMARY KEY (`Status ID`);

-- CREATE INDEXES 26 ...
ALTER TABLE `Orders` ADD INDEX `customerid` (`CustomerID`);
ALTER TABLE `Orders` ADD INDEX `customeronorders` (`EmployeeID`);
ALTER TABLE `Orders` ADD INDEX `employeeid` (`OrderID`);
ALTER TABLE `Orders` ADD INDEX `employeesonorders` (`StatusID`);
ALTER TABLE `Orders` ADD UNIQUE INDEX `id` (`OrderID`);
ALTER TABLE `Orders` ADD INDEX `orderstatus` (`ShipperID`);
ALTER TABLE `Orders` ADD PRIMARY KEY (`Tax Status`);
ALTER TABLE `Orders` ADD UNIQUE INDEX `shipperid` (`VersionHistory_F5F8918F0A3F4DA9AE71184EE5012880`);
ALTER TABLE `Orders` ADD INDEX `shipperonorder` (`ShipZIP/PostalCode`);
ALTER TABLE `Orders` ADD INDEX `Status ID` ();
ALTER TABLE `Orders` ADD INDEX `TaxStatusOnOrders` ();
ALTER TABLE `Orders` ADD INDEX `VersionHistory_F5F8918F-0A3F-4D_E1F9CD05C9964A88B126E7D4B3D5D4F8` ();
ALTER TABLE `Orders` ADD INDEX `ZIP/Postal Code` ();

-- CREATE INDEXES 27 ...
ALTER TABLE `Orders Status` ADD PRIMARY KEY (`Status ID`);

-- CREATE INDEXES 28 ...
ALTER TABLE `Orders Tax Status` ADD PRIMARY KEY (`ID`);

-- CREATE INDEXES 29 ...
ALTER TABLE `Products` ADD UNIQUE INDEX `attachments_e5fcec2c34344fbc8c0774dec713cbc3` (`Attachments`);
ALTER TABLE `Products` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Products` ADD INDEX `productcode` (`ProductCode`);
ALTER TABLE `Products` ADD UNIQUE INDEX `supplierids_31db458b9643404e817fe2b2f497ef71` (`SupplierIDs`);

-- CREATE INDEXES 30 ...
ALTER TABLE `Purchase Order Details` ADD INDEX `id` (`ID`);
ALTER TABLE `Purchase Order Details` ADD INDEX `inventoryid` (`InventoryID`);
ALTER TABLE `Purchase Order Details` ADD INDEX `inventorytransactionsonpurchaseorders` (`PurchaseOrderID`);
ALTER TABLE `Purchase Order Details` ADD UNIQUE INDEX `orderid` (`ID`);
ALTER TABLE `Purchase Order Details` ADD PRIMARY KEY (`Product ID`);
ALTER TABLE `Purchase Order Details` ADD INDEX `ProductID` ();
ALTER TABLE `Purchase Order Details` ADD INDEX `ProductOnPurchaseOrderDetails` ();
ALTER TABLE `Purchase Order Details` ADD INDEX `PurchaseOrderDeatilsOnPurchaseOrder` ();

-- CREATE INDEXES 31 ...
ALTER TABLE `Purchase Order Status` ADD PRIMARY KEY (`Status ID`);

-- CREATE INDEXES 32 ...
ALTER TABLE `Purchase Orders` ADD INDEX `employeesonpurchaseorder` (`CreatedBy`);
ALTER TABLE `Purchase Orders` ADD UNIQUE INDEX `id` (`PurchaseOrderID`);
ALTER TABLE `Purchase Orders` ADD PRIMARY KEY (`Purchase Order ID`);
ALTER TABLE `Purchase Orders` ADD INDEX `purchaseorderstatuslookup` (`StatusID`);
ALTER TABLE `Purchase Orders` ADD INDEX `statusid` (`SupplierID`);
ALTER TABLE `Purchase Orders` ADD INDEX `SupplierID` ();
ALTER TABLE `Purchase Orders` ADD INDEX `SuppliersOnPurchaseOrder` ();

-- CREATE INDEXES 33 ...
ALTER TABLE `Sales Reports` ADD PRIMARY KEY (`Group By`);

-- CREATE INDEXES 34 ...
ALTER TABLE `Shippers` ADD UNIQUE INDEX `attachments_51ffa228db4944fb831d2cd982734fd9` (`Attachments`);
ALTER TABLE `Shippers` ADD INDEX `city` (`City`);
ALTER TABLE `Shippers` ADD INDEX `company` (`Company`);
ALTER TABLE `Shippers` ADD INDEX `firstname` (`FirstName`);
ALTER TABLE `Shippers` ADD INDEX `lastname` (`LastName`);
ALTER TABLE `Shippers` ADD INDEX `postalcode` (`ZIP/PostalCode`);
ALTER TABLE `Shippers` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Shippers` ADD INDEX `state/province` (`State/Province`);

-- CREATE INDEXES 35 ...
ALTER TABLE `Strings` ADD PRIMARY KEY (`String ID`);

-- CREATE INDEXES 36 ...
ALTER TABLE `Suppliers` ADD UNIQUE INDEX `attachments_73581c85ddf1415ab6a672b555c3ef18` (`Attachments`);
ALTER TABLE `Suppliers` ADD INDEX `city` (`City`);
ALTER TABLE `Suppliers` ADD INDEX `company` (`Company`);
ALTER TABLE `Suppliers` ADD INDEX `firstname` (`FirstName`);
ALTER TABLE `Suppliers` ADD INDEX `lastname` (`LastName`);
ALTER TABLE `Suppliers` ADD INDEX `postalcode` (`ZIP/PostalCode`);
ALTER TABLE `Suppliers` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Suppliers` ADD INDEX `state/province` (`State/Province`);

-- CREATE INDEXES 37 ...
ALTER TABLE `Privileges` ADD PRIMARY KEY (`Privilege ID`);

-- CREATE INDEXES 38 ...
ALTER TABLE `Categories` ADD UNIQUE INDEX `categoryname` (`CategoryName`);
ALTER TABLE `Categories` ADD PRIMARY KEY (`CategoryID`);

-- CREATE INDEXES 39 ...
ALTER TABLE `Customers` ADD INDEX `city` (`City`);
ALTER TABLE `Customers` ADD INDEX `companyname` (`CompanyName`);
ALTER TABLE `Customers` ADD INDEX `postalcode` (`PostalCode`);
ALTER TABLE `Customers` ADD PRIMARY KEY (`CustomerID`);
ALTER TABLE `Customers` ADD INDEX `region` (`Region`);

-- CREATE INDEXES 40 ...
ALTER TABLE `Employees` ADD INDEX `lastname` (`LastName`);
ALTER TABLE `Employees` ADD INDEX `postalcode` (`PostalCode`);
ALTER TABLE `Employees` ADD PRIMARY KEY (`EmployeeID`);

-- CREATE INDEXES 41 ...
ALTER TABLE `Order Details` ADD INDEX `orderid` (`OrderID`);
ALTER TABLE `Order Details` ADD PRIMARY KEY (`OrderID`, `ProductID`);
ALTER TABLE `Order Details` ADD INDEX `productid` (`ProductID`);

-- CREATE INDEXES 42 ...
ALTER TABLE `Orders` ADD INDEX `customerid` (`CustomerID`);
ALTER TABLE `Orders` ADD INDEX `employeeid` (`EmployeeID`);
ALTER TABLE `Orders` ADD INDEX `orderdate` (`OrderDate`);
ALTER TABLE `Orders` ADD PRIMARY KEY (`OrderID`);
ALTER TABLE `Orders` ADD INDEX `shippeddate` (`ShippedDate`);
ALTER TABLE `Orders` ADD INDEX `shippostalcode` (`ShipPostalCode`);

-- CREATE INDEXES 43 ...
ALTER TABLE `Products` ADD INDEX `categoryid` (`CategoryID`);
ALTER TABLE `Products` ADD PRIMARY KEY (`ProductID`);
ALTER TABLE `Products` ADD INDEX `productname` (`ProductName`);
ALTER TABLE `Products` ADD INDEX `supplierid` (`SupplierID`);

-- CREATE INDEXES 44 ...
ALTER TABLE `Shippers` ADD PRIMARY KEY (`ShipperID`);

-- CREATE INDEXES 45 ...
ALTER TABLE `Suppliers` ADD INDEX `companyname` (`CompanyName`);
ALTER TABLE `Suppliers` ADD INDEX `postalcode` (`PostalCode`);
ALTER TABLE `Suppliers` ADD PRIMARY KEY (`SupplierID`);

-- CREATE INDEXES 46 ...
ALTER TABLE `Questionnaire` ADD PRIMARY KEY (`UniqueKey`);

-- CREATE INDEXES 47 ...
ALTER TABLE `Zahlungen` ADD PRIMARY KEY (`Zahlung-ID`);
ALTER TABLE `Zahlungen` ADD UNIQUE INDEX `zahlungsnr` (`ZahlungID`);

-- CREATE INDEXES 48 ...
ALTER TABLE `Mitglieder` ADD INDEX `mitgliederkategorienr` (`KategorieNr`);
ALTER TABLE `Mitglieder` ADD PRIMARY KEY (`MitgliedNr`);

-- CREATE INDEXES 49 ...
ALTER TABLE `Reise` ADD PRIMARY KEY (`Reise-ID`);

-- CREATE INDEXES 50 ...
ALTER TABLE `Kategorien` ADD PRIMARY KEY (`Nr`);

-- CREATE INDEXES 51 ...
ALTER TABLE `Schueler` ADD PRIMARY KEY (`SchuelerNr`);

-- CREATE INDEXES 52 ...
ALTER TABLE `Agsystemfieldtestin` ADD INDEX `agroecosystemcode` (`ecosystem_ID`);
ALTER TABLE `Agsystemfieldtestin` ADD PRIMARY KEY (`ecosystem_ID`);

-- CREATE INDEXES 53 ...
ALTER TABLE `Agsystemimprovement` ADD INDEX `numberofpotentialbeneficiaries` (`beneficiaries`);
ALTER TABLE `Agsystemimprovement` ADD PRIMARY KEY (`Ecosystem_ID`);

-- CREATE INDEXES 54 ...
ALTER TABLE `Flagshipprdcts` ADD INDEX `flagshipcode` (`Flagship_product_ID`);
ALTER TABLE `Flagshipprdcts` ADD PRIMARY KEY (`Flagship_product_ID`);

-- CREATE INDEXES 55 ...
ALTER TABLE `Innovationplatform` ADD INDEX `innovationcode` (`Innovation_ID`);
ALTER TABLE `Innovationplatform` ADD PRIMARY KEY (`Innovation_ID`);

-- CREATE INDEXES 56 ...
ALTER TABLE `Ltermtraining` ADD INDEX `longtrainingcode` (`long_training_ID`);
ALTER TABLE `Ltermtraining` ADD INDEX `longtrainingcode1` (`long_trainee_name`);
ALTER TABLE `Ltermtraining` ADD PRIMARY KEY (`long_training_ID`);

-- CREATE INDEXES 57 ...
ALTER TABLE `Newtechnologies` ADD INDEX `number_of_men` (`Number_men`);
ALTER TABLE `Newtechnologies` ADD INDEX `number_of_people` (`Number_women`);
ALTER TABLE `Newtechnologies` ADD PRIMARY KEY (`Technology_ID`);

-- CREATE INDEXES 58 ...
ALTER TABLE `Openaccesdtbs` ADD INDEX `databasecode` (`Database_ID`);
ALTER TABLE `Openaccesdtbs` ADD INDEX `numberofusers` (`users`);
ALTER TABLE `Openaccesdtbs` ADD PRIMARY KEY (`Database_ID`);

-- CREATE INDEXES 59 ...
ALTER TABLE `Publications` ADD PRIMARY KEY (`Publication_ID`);
ALTER TABLE `Publications` ADD INDEX `publicationcode` (`Publication_ID`);

-- CREATE INDEXES 60 ...
ALTER TABLE `Pubtargetinecosystems` ADD PRIMARY KEY (`Publication_ID`);

-- CREATE INDEXES 61 ...
ALTER TABLE `Stermtraining` ADD INDEX `numberofmen` (`men_number`);
ALTER TABLE `Stermtraining` ADD INDEX `numberofwomen` (`women_number`);
ALTER TABLE `Stermtraining` ADD PRIMARY KEY (`Short_training_ID`);

-- CREATE INDEXES 62 ...
ALTER TABLE `Strategicvchainsanalysed` ADD PRIMARY KEY (`Value_chain_ID`);
ALTER TABLE `Strategicvchainsanalysed` ADD INDEX `valuechaincode` (`Value_chain_ID`);

-- CREATE INDEXES 63 ...
ALTER TABLE `Targetagroecosystems` ADD PRIMARY KEY (`Ecosystem_ID`);

-- CREATE INDEXES 64 ...
ALTER TABLE `Technpracticreleasd` ADD PRIMARY KEY (`Practice_ID`);

-- CREATE INDEXES 65 ...
ALTER TABLE `Techonground` ADD PRIMARY KEY (`Technology_ID`);

-- CREATE INDEXES 66 ...
ALTER TABLE `Techunderresearch` ADD INDEX `practisecode` (`Practise_ID`);
ALTER TABLE `Techunderresearch` ADD PRIMARY KEY (`Practise_ID`);

-- CREATE INDEXES 67 ...
ALTER TABLE `Toolsproduced` ADD PRIMARY KEY (`Tool_ID`);
ALTER TABLE `Toolsproduced` ADD INDEX `toolcode` (`Tool_ID`);

-- CREATE INDEXES 68 ...
ALTER TABLE `Policies` ADD PRIMARY KEY (`Policy_ID`);

-- CREATE INDEXES 69 ...
ALTER TABLE `techfieldtested` ADD PRIMARY KEY (`practise_ID`);
ALTER TABLE `techfieldtested` ADD INDEX `technologycode` (`practise_name`);

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

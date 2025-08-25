
-- CREATE INDEXES 01 ...
ALTER TABLE `example` ADD PRIMARY KEY (`ID`);

-- CREATE INDEXES 02 ...
ALTER TABLE `Destination` ADD PRIMARY KEY (`FlugNr`);

-- CREATE INDEXES 03 ...
ALTER TABLE `Flugplan` ADD INDEX `idx_flugplankategorie` (`Kategorie`);
ALTER TABLE `Flugplan` ADD PRIMARY KEY (`FlugNr`);

-- CREATE INDEXES 04 ...
ALTER TABLE `Kategorien` ADD PRIMARY KEY (`Kategorie`);

-- CREATE INDEXES 05 ...
ALTER TABLE `Employees` ADD INDEX `idx_employeeid` (`EmployeeID`);
ALTER TABLE `Employees` ADD INDEX `idx_postalcode` (`PostalCode`);
ALTER TABLE `Employees` ADD PRIMARY KEY (`EmployeeID`);

-- CREATE INDEXES 06 ...
ALTER TABLE `Gebrauchtwagen` ADD INDEX `idx_nummer` (`Nummer`);
ALTER TABLE `Gebrauchtwagen` ADD PRIMARY KEY (`Nummer`);

-- CREATE INDEXES 07 ...
ALTER TABLE `Brasilien` ADD INDEX `idx_idnr` (`IDNr`);
ALTER TABLE `Brasilien` ADD PRIMARY KEY (`ID-Nr`);

-- CREATE INDEXES 08 ...
ALTER TABLE `Deutschland` ADD INDEX `idx_idnr` (`IDNr`);
ALTER TABLE `Deutschland` ADD PRIMARY KEY (`ID-Nr`);

-- CREATE INDEXES 09 ...
ALTER TABLE `England` ADD INDEX `idx_idnr` (`IDNr`);
ALTER TABLE `England` ADD PRIMARY KEY (`ID-Nr`);

-- CREATE INDEXES 10 ...
ALTER TABLE `Frankreich` ADD INDEX `idx_idnr` (`IDNr`);
ALTER TABLE `Frankreich` ADD PRIMARY KEY (`ID-Nr`);

-- CREATE INDEXES 11 ...
ALTER TABLE `nichts_neues` ADD PRIMARY KEY (`nr`);

-- CREATE INDEXES 12 ...
ALTER TABLE `Niederlande` ADD INDEX `idx_idnr` (`IDNR`);
ALTER TABLE `Niederlande` ADD PRIMARY KEY (`ID-NR`);

-- CREATE INDEXES 13 ...
ALTER TABLE `Position1` ADD INDEX `idx_idnr` (`IDNr`);
ALTER TABLE `Position1` ADD INDEX `idx_kategorie` (`Kategorie`);
ALTER TABLE `Position1` ADD PRIMARY KEY (`ID-Nr`);

-- CREATE INDEXES 14 ...
ALTER TABLE `Position2` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Position2` ADD INDEX `idx_probeposition` (`Position`);

-- CREATE INDEXES 15 ...
ALTER TABLE `Prämie` ADD INDEX `idx_idnr` (`IDNR`);
ALTER TABLE `Prämie` ADD PRIMARY KEY (`ID-NR`);

-- CREATE INDEXES 16 ...
ALTER TABLE `Prämie2` ADD INDEX `idx_idnr` (`IDNR`);
ALTER TABLE `Prämie2` ADD PRIMARY KEY (`ID-NR`);

-- CREATE INDEXES 17 ...
ALTER TABLE `Argentinien` ADD INDEX `idx_idnr` (`IDNr`);
ALTER TABLE `Argentinien` ADD PRIMARY KEY (`ID-Nr`);

-- CREATE INDEXES 18 ...
ALTER TABLE `Customers` ADD UNIQUE INDEX `idx_attachments_21d91b3288b8413ca14c2fc0e055693e` (`Attachments`);
ALTER TABLE `Customers` ADD INDEX `idx_city` (`City`);
ALTER TABLE `Customers` ADD INDEX `idx_company` (`Company`);
ALTER TABLE `Customers` ADD INDEX `idx_firstname` (`FirstName`);
ALTER TABLE `Customers` ADD INDEX `idx_lastname` (`LastName`);
ALTER TABLE `Customers` ADD INDEX `idx_postalcode` (`ZIP/PostalCode`);
ALTER TABLE `Customers` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Customers` ADD INDEX `idx_state/province` (`State/Province`);

-- CREATE INDEXES 19 ...
ALTER TABLE `Employee Privileges` ADD INDEX `idx_employeepriviligesforemployees` (`EmployeeID`);
ALTER TABLE `Employee Privileges` ADD INDEX `idx_employeepriviligeslookup` (`PrivilegeID`);
ALTER TABLE `Employee Privileges` ADD PRIMARY KEY (`Employee ID`, `Privilege ID`);
ALTER TABLE `Employee Privileges` ADD INDEX `idx_privilegeid` ();

-- CREATE INDEXES 20 ...
ALTER TABLE `Employees` ADD UNIQUE INDEX `idx_attachments_f94722cd755f4e6da9e29eeb30584e09` (`Attachments`);
ALTER TABLE `Employees` ADD INDEX `idx_city` (`City`);
ALTER TABLE `Employees` ADD INDEX `idx_company` (`Company`);
ALTER TABLE `Employees` ADD INDEX `idx_firstname` (`FirstName`);
ALTER TABLE `Employees` ADD INDEX `idx_lastname` (`LastName`);
ALTER TABLE `Employees` ADD INDEX `idx_postalcode` (`ZIP/PostalCode`);
ALTER TABLE `Employees` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Employees` ADD INDEX `idx_state/province` (`State/Province`);

-- CREATE INDEXES 21 ...
ALTER TABLE `Inventory Transaction Types` ADD PRIMARY KEY (`ID`);

-- CREATE INDEXES 22 ...
ALTER TABLE `Inventory Transactions` ADD INDEX `idx_customerorderid` (`CustomerOrderID`);
ALTER TABLE `Inventory Transactions` ADD UNIQUE INDEX `idx_ordersoninventorytransactions` (`TransactionID`);
ALTER TABLE `Inventory Transactions` ADD PRIMARY KEY (`Product ID`);
ALTER TABLE `Inventory Transactions` ADD INDEX `idx_productid` (`PurchaseOrderID`);
ALTER TABLE `Inventory Transactions` ADD INDEX `idx_productoninventorytransaction` (`TransactionType`);
ALTER TABLE `Inventory Transactions` ADD INDEX `idx_puchaseordersoninventorytransactions` ();
ALTER TABLE `Inventory Transactions` ADD INDEX `idx_purchaseorderid` ();
ALTER TABLE `Inventory Transactions` ADD INDEX `idx_transactiontypesoninventorytransactiosn` ();

-- CREATE INDEXES 23 ...
ALTER TABLE `Invoices` ADD INDEX `idx_orderid` (`OrderID`);
ALTER TABLE `Invoices` ADD UNIQUE INDEX `idx_orderinvoice` (`InvoiceID`);
ALTER TABLE `Invoices` ADD PRIMARY KEY ();

-- CREATE INDEXES 24 ...
ALTER TABLE `Order Details` ADD INDEX `idx_id` (`ID`);
ALTER TABLE `Order Details` ADD INDEX `idx_inventoryid` (`InventoryID`);
ALTER TABLE `Order Details` ADD INDEX `idx_orderdetails` (`OrderID`);
ALTER TABLE `Order Details` ADD INDEX `idx_orderid` (`StatusID`);
ALTER TABLE `Order Details` ADD UNIQUE INDEX `idx_orderstatuslookup` (`ID`);
ALTER TABLE `Order Details` ADD PRIMARY KEY (`Product ID`);
ALTER TABLE `Order Details` ADD INDEX `idx_productid` (`PurchaseOrderID`);
ALTER TABLE `Order Details` ADD INDEX `idx_productsonorders` ();
ALTER TABLE `Order Details` ADD INDEX `idx_purchaseorderid` ();
ALTER TABLE `Order Details` ADD INDEX `idx_statusid` ();

-- CREATE INDEXES 25 ...
ALTER TABLE `Order Details Status` ADD PRIMARY KEY (`Status ID`);

-- CREATE INDEXES 26 ...
ALTER TABLE `Orders` ADD INDEX `idx_customerid` (`CustomerID`);
ALTER TABLE `Orders` ADD INDEX `idx_customeronorders` (`EmployeeID`);
ALTER TABLE `Orders` ADD INDEX `idx_employeeid` (`OrderID`);
ALTER TABLE `Orders` ADD INDEX `idx_employeesonorders` (`StatusID`);
ALTER TABLE `Orders` ADD UNIQUE INDEX `idx_id` (`OrderID`);
ALTER TABLE `Orders` ADD INDEX `idx_orderstatus` (`ShipperID`);
ALTER TABLE `Orders` ADD PRIMARY KEY (`Tax Status`);
ALTER TABLE `Orders` ADD UNIQUE INDEX `idx_shipperid` (`VersionHistory_F5F8918F0A3F4DA9AE71184EE5012880`);
ALTER TABLE `Orders` ADD INDEX `idx_shipperonorder` (`ShipZIP/PostalCode`);
ALTER TABLE `Orders` ADD INDEX `idx_statusid` ();
ALTER TABLE `Orders` ADD INDEX `idx_taxstatusonorders` ();
ALTER TABLE `Orders` ADD INDEX `idx_versionhistory_f5f8918f0a3f4d_e1f9cd05c9964a88b126e7d4b3d5d4f8` ();
ALTER TABLE `Orders` ADD INDEX `idx_zip/postalcode` ();

-- CREATE INDEXES 27 ...
ALTER TABLE `Orders Status` ADD PRIMARY KEY (`Status ID`);

-- CREATE INDEXES 28 ...
ALTER TABLE `Orders Tax Status` ADD PRIMARY KEY (`ID`);

-- CREATE INDEXES 29 ...
ALTER TABLE `Products` ADD UNIQUE INDEX `idx_attachments_e5fcec2c34344fbc8c0774dec713cbc3` (`Attachments`);
ALTER TABLE `Products` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Products` ADD INDEX `idx_productcode` (`ProductCode`);
ALTER TABLE `Products` ADD UNIQUE INDEX `idx_supplierids_31db458b9643404e817fe2b2f497ef71` (`SupplierIDs`);

-- CREATE INDEXES 30 ...
ALTER TABLE `Purchase Order Details` ADD INDEX `idx_id` (`ID`);
ALTER TABLE `Purchase Order Details` ADD INDEX `idx_inventoryid` (`InventoryID`);
ALTER TABLE `Purchase Order Details` ADD INDEX `idx_inventorytransactionsonpurchaseorders` (`PurchaseOrderID`);
ALTER TABLE `Purchase Order Details` ADD UNIQUE INDEX `idx_orderid` (`ID`);
ALTER TABLE `Purchase Order Details` ADD PRIMARY KEY (`Product ID`);
ALTER TABLE `Purchase Order Details` ADD INDEX `idx_productid` ();
ALTER TABLE `Purchase Order Details` ADD INDEX `idx_productonpurchaseorderdetails` ();
ALTER TABLE `Purchase Order Details` ADD INDEX `idx_purchaseorderdeatilsonpurchaseorder` ();

-- CREATE INDEXES 31 ...
ALTER TABLE `Purchase Order Status` ADD PRIMARY KEY (`Status ID`);

-- CREATE INDEXES 32 ...
ALTER TABLE `Purchase Orders` ADD INDEX `idx_employeesonpurchaseorder` (`CreatedBy`);
ALTER TABLE `Purchase Orders` ADD UNIQUE INDEX `idx_id` (`PurchaseOrderID`);
ALTER TABLE `Purchase Orders` ADD PRIMARY KEY (`Purchase Order ID`);
ALTER TABLE `Purchase Orders` ADD INDEX `idx_purchaseorderstatuslookup` (`StatusID`);
ALTER TABLE `Purchase Orders` ADD INDEX `idx_statusid` (`SupplierID`);
ALTER TABLE `Purchase Orders` ADD INDEX `idx_supplierid` ();
ALTER TABLE `Purchase Orders` ADD INDEX `idx_suppliersonpurchaseorder` ();

-- CREATE INDEXES 33 ...
ALTER TABLE `Sales Reports` ADD PRIMARY KEY (`Group By`);

-- CREATE INDEXES 34 ...
ALTER TABLE `Shippers` ADD UNIQUE INDEX `idx_attachments_51ffa228db4944fb831d2cd982734fd9` (`Attachments`);
ALTER TABLE `Shippers` ADD INDEX `idx_city` (`City`);
ALTER TABLE `Shippers` ADD INDEX `idx_company` (`Company`);
ALTER TABLE `Shippers` ADD INDEX `idx_firstname` (`FirstName`);
ALTER TABLE `Shippers` ADD INDEX `idx_lastname` (`LastName`);
ALTER TABLE `Shippers` ADD INDEX `idx_postalcode` (`ZIP/PostalCode`);
ALTER TABLE `Shippers` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Shippers` ADD INDEX `idx_state/province` (`State/Province`);

-- CREATE INDEXES 35 ...
ALTER TABLE `Strings` ADD PRIMARY KEY (`String ID`);

-- CREATE INDEXES 36 ...
ALTER TABLE `Suppliers` ADD UNIQUE INDEX `idx_attachments_73581c85ddf1415ab6a672b555c3ef18` (`Attachments`);
ALTER TABLE `Suppliers` ADD INDEX `idx_city` (`City`);
ALTER TABLE `Suppliers` ADD INDEX `idx_company` (`Company`);
ALTER TABLE `Suppliers` ADD INDEX `idx_firstname` (`FirstName`);
ALTER TABLE `Suppliers` ADD INDEX `idx_lastname` (`LastName`);
ALTER TABLE `Suppliers` ADD INDEX `idx_postalcode` (`ZIP/PostalCode`);
ALTER TABLE `Suppliers` ADD PRIMARY KEY (`ID`);
ALTER TABLE `Suppliers` ADD INDEX `idx_state/province` (`State/Province`);

-- CREATE INDEXES 37 ...
ALTER TABLE `Privileges` ADD PRIMARY KEY (`Privilege ID`);

-- CREATE INDEXES 38 ...
ALTER TABLE `Categories` ADD UNIQUE INDEX `idx_categoryname` (`CategoryName`);
ALTER TABLE `Categories` ADD PRIMARY KEY (`CategoryID`);

-- CREATE INDEXES 39 ...
ALTER TABLE `Customers` ADD INDEX `idx_city` (`City`);
ALTER TABLE `Customers` ADD INDEX `idx_companyname` (`CompanyName`);
ALTER TABLE `Customers` ADD INDEX `idx_postalcode` (`PostalCode`);
ALTER TABLE `Customers` ADD PRIMARY KEY (`CustomerID`);
ALTER TABLE `Customers` ADD INDEX `idx_region` (`Region`);

-- CREATE INDEXES 40 ...
ALTER TABLE `Employees` ADD INDEX `idx_lastname` (`LastName`);
ALTER TABLE `Employees` ADD INDEX `idx_postalcode` (`PostalCode`);
ALTER TABLE `Employees` ADD PRIMARY KEY (`EmployeeID`);

-- CREATE INDEXES 41 ...
ALTER TABLE `Order Details` ADD INDEX `idx_orderid` (`OrderID`);
ALTER TABLE `Order Details` ADD PRIMARY KEY (`OrderID`, `ProductID`);
ALTER TABLE `Order Details` ADD INDEX `idx_productid` (`ProductID`);

-- CREATE INDEXES 42 ...
ALTER TABLE `Orders` ADD INDEX `idx_customerid` (`CustomerID`);
ALTER TABLE `Orders` ADD INDEX `idx_employeeid` (`EmployeeID`);
ALTER TABLE `Orders` ADD INDEX `idx_orderdate` (`OrderDate`);
ALTER TABLE `Orders` ADD PRIMARY KEY (`OrderID`);
ALTER TABLE `Orders` ADD INDEX `idx_shippeddate` (`ShippedDate`);
ALTER TABLE `Orders` ADD INDEX `idx_shippostalcode` (`ShipPostalCode`);

-- CREATE INDEXES 43 ...
ALTER TABLE `Products` ADD INDEX `idx_categoryid` (`CategoryID`);
ALTER TABLE `Products` ADD PRIMARY KEY (`ProductID`);
ALTER TABLE `Products` ADD INDEX `idx_productname` (`ProductName`);
ALTER TABLE `Products` ADD INDEX `idx_supplierid` (`SupplierID`);

-- CREATE INDEXES 44 ...
ALTER TABLE `Shippers` ADD PRIMARY KEY (`ShipperID`);

-- CREATE INDEXES 45 ...
ALTER TABLE `Suppliers` ADD INDEX `idx_companyname` (`CompanyName`);
ALTER TABLE `Suppliers` ADD INDEX `idx_postalcode` (`PostalCode`);
ALTER TABLE `Suppliers` ADD PRIMARY KEY (`SupplierID`);

-- CREATE INDEXES 46 ...
ALTER TABLE `Questionnaire` ADD PRIMARY KEY (`UniqueKey`);

-- CREATE INDEXES 47 ...
ALTER TABLE `Zahlungen` ADD PRIMARY KEY (`Zahlung-ID`);
ALTER TABLE `Zahlungen` ADD UNIQUE INDEX `idx_zahlungsnr` (`ZahlungID`);

-- CREATE INDEXES 48 ...
ALTER TABLE `Mitglieder` ADD INDEX `idx_mitgliederkategorienr` (`KategorieNr`);
ALTER TABLE `Mitglieder` ADD PRIMARY KEY (`MitgliedNr`);

-- CREATE INDEXES 49 ...
ALTER TABLE `Reise` ADD PRIMARY KEY (`Reise-ID`);

-- CREATE INDEXES 50 ...
ALTER TABLE `Kategorien` ADD PRIMARY KEY (`Nr`);

-- CREATE INDEXES 51 ...
ALTER TABLE `Schueler` ADD PRIMARY KEY (`SchuelerNr`);

-- CREATE INDEXES 52 ...
ALTER TABLE `Agsystemfieldtestin` ADD INDEX `idx_agroecosystemcode` (`ecosystem_ID`);
ALTER TABLE `Agsystemfieldtestin` ADD PRIMARY KEY (`ecosystem_ID`);

-- CREATE INDEXES 53 ...
ALTER TABLE `Agsystemimprovement` ADD INDEX `idx_numberofpotentialbeneficiaries` (`beneficiaries`);
ALTER TABLE `Agsystemimprovement` ADD PRIMARY KEY (`Ecosystem_ID`);

-- CREATE INDEXES 54 ...
ALTER TABLE `Flagshipprdcts` ADD INDEX `idx_flagshipcode` (`Flagship_product_ID`);
ALTER TABLE `Flagshipprdcts` ADD PRIMARY KEY (`Flagship_product_ID`);

-- CREATE INDEXES 55 ...
ALTER TABLE `Innovationplatform` ADD INDEX `idx_innovationcode` (`Innovation_ID`);
ALTER TABLE `Innovationplatform` ADD PRIMARY KEY (`Innovation_ID`);

-- CREATE INDEXES 56 ...
ALTER TABLE `Ltermtraining` ADD INDEX `idx_longtrainingcode` (`long_training_ID`);
ALTER TABLE `Ltermtraining` ADD INDEX `idx_longtrainingcode1` (`long_trainee_name`);
ALTER TABLE `Ltermtraining` ADD PRIMARY KEY (`long_training_ID`);

-- CREATE INDEXES 57 ...
ALTER TABLE `Newtechnologies` ADD INDEX `idx_number_of_men` (`Number_men`);
ALTER TABLE `Newtechnologies` ADD INDEX `idx_number_of_people` (`Number_women`);
ALTER TABLE `Newtechnologies` ADD PRIMARY KEY (`Technology_ID`);

-- CREATE INDEXES 58 ...
ALTER TABLE `Openaccesdtbs` ADD INDEX `idx_databasecode` (`Database_ID`);
ALTER TABLE `Openaccesdtbs` ADD INDEX `idx_numberofusers` (`users`);
ALTER TABLE `Openaccesdtbs` ADD PRIMARY KEY (`Database_ID`);

-- CREATE INDEXES 59 ...
ALTER TABLE `Publications` ADD PRIMARY KEY (`Publication_ID`);
ALTER TABLE `Publications` ADD INDEX `idx_publicationcode` (`Publication_ID`);

-- CREATE INDEXES 60 ...
ALTER TABLE `Pubtargetinecosystems` ADD PRIMARY KEY (`Publication_ID`);

-- CREATE INDEXES 61 ...
ALTER TABLE `Stermtraining` ADD INDEX `idx_numberofmen` (`men_number`);
ALTER TABLE `Stermtraining` ADD INDEX `idx_numberofwomen` (`women_number`);
ALTER TABLE `Stermtraining` ADD PRIMARY KEY (`Short_training_ID`);

-- CREATE INDEXES 62 ...
ALTER TABLE `Strategicvchainsanalysed` ADD PRIMARY KEY (`Value_chain_ID`);
ALTER TABLE `Strategicvchainsanalysed` ADD INDEX `idx_valuechaincode` (`Value_chain_ID`);

-- CREATE INDEXES 63 ...
ALTER TABLE `Targetagroecosystems` ADD PRIMARY KEY (`Ecosystem_ID`);

-- CREATE INDEXES 64 ...
ALTER TABLE `Technpracticreleasd` ADD PRIMARY KEY (`Practice_ID`);

-- CREATE INDEXES 65 ...
ALTER TABLE `Techonground` ADD PRIMARY KEY (`Technology_ID`);

-- CREATE INDEXES 66 ...
ALTER TABLE `Techunderresearch` ADD INDEX `idx_practisecode` (`Practise_ID`);
ALTER TABLE `Techunderresearch` ADD PRIMARY KEY (`Practise_ID`);

-- CREATE INDEXES 67 ...
ALTER TABLE `Toolsproduced` ADD PRIMARY KEY (`Tool_ID`);
ALTER TABLE `Toolsproduced` ADD INDEX `idx_toolcode` (`Tool_ID`);

-- CREATE INDEXES 68 ...
ALTER TABLE `Policies` ADD PRIMARY KEY (`Policy_ID`);

-- CREATE INDEXES 69 ...
ALTER TABLE `techfieldtested` ADD PRIMARY KEY (`practise_ID`);
ALTER TABLE `techfieldtested` ADD INDEX `idx_technologycode` (`practise_name`);

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

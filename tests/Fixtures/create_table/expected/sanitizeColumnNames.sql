
-- CREATE TABLE 01 ...
DROP TABLE IF EXISTS `example`;
CREATE TABLE `example`
(
    `ID`			int not null auto_increment unique,
    `ACCDBTestFile`			varchar (255),
    `TestValue`			varchar (255)
);


-- CREATE TABLE 02 ...
DROP TABLE IF EXISTS `Destination`;
CREATE TABLE `Destination`
(
    `FlugNr`			int not null auto_increment unique,
    `Kategorie`			int DEFAULT 0,
    `Kontinent`			varchar (50),
    `Staat`			varchar (50)
);


-- CREATE TABLE 03 ...
DROP TABLE IF EXISTS `Flugplan`;
CREATE TABLE `Flugplan`
(
    `FlugNr`			int not null auto_increment unique,
    `Abflugsort`			varchar (25),
    `Ziel`			varchar (25),
    `Flugüber`			varchar (50),
    `Tag`			varchar (50),
    `Abflug`			datetime,
    `Flugzeit`			smallint DEFAULT 0,
    `Kategorie`			int,
    `Destination`			int,
    `Fluggesellschaft`			varchar (50)
);


-- CREATE TABLE 04 ...
DROP TABLE IF EXISTS `Kategorien`;
CREATE TABLE `Kategorien`
(
    `Kategorie`			int DEFAULT 0,
    `Name`			varchar (50)
);


-- CREATE TABLE 05 ...
DROP TABLE IF EXISTS `Employees`;
CREATE TABLE `Employees`
(
    `EmployeeID`			int not null auto_increment unique,
    `FirstName`			varchar (50),
    `LastName`			varchar (50),
    `Title`			varchar (50),
    `Address`			varchar (255),
    `City`			varchar (50),
    `State`			varchar (20),
    `PostalCode`			varchar (20),
    `HomePhone`			varchar (30),
    `Birthdate`			datetime,
    `DateHired`			datetime,
    `Photograph`			varchar (255),
    `Notes`			text
);


-- CREATE TABLE 06 ...
DROP TABLE IF EXISTS `Gebrauchtwagen`;
CREATE TABLE `Gebrauchtwagen`
(
    `Nummer`			int not null auto_increment unique,
    `Marke`			varchar (50),
    `Baujahr`			smallint DEFAULT 0,
    `Kilometer`			int DEFAULT 0,
    `PS`			smallint DEFAULT 0,
    `Klimaanlage`			boolean NOT NULL DEFAULT FALSE,
    `Sonstiges`			varchar (50),
    `verfügbarab`			datetime,
    `Preis`			float DEFAULT 0,
    `Erstbesitz`			boolean NOT NULL DEFAULT FALSE,
    `Farbe`			varchar (25),
    `Treibstoff`			varchar (25)
);


-- CREATE TABLE 07 ...
DROP TABLE IF EXISTS `Customers`;
CREATE TABLE `Customers`
(
    `ID`			int not null auto_increment unique,
    `Company`			varchar (50),
    `LastName`			varchar (50),
    `FirstName`			varchar (50),
    `EmailAddress`			varchar (50),
    `JobTitle`			varchar (50),
    `BusinessPhone`			varchar (25),
    `HomePhone`			varchar (25),
    `MobilePhone`			varchar (25),
    `FaxNumber`			varchar (25),
    `Address`			text,
    `City`			varchar (50),
    `State/Province`			varchar (50),
    `ZIP/PostalCode`			varchar (15),
    `Country/Region`			varchar (50),
    `WebPage`			text,
    `Notes`			text,
    `Attachments`			Unknown_0012
);


-- CREATE TABLE 08 ...
DROP TABLE IF EXISTS `Employee Privileges`;
CREATE TABLE `Employee Privileges`
(
    `EmployeeID`			int,
    `PrivilegeID`			int
);


-- CREATE TABLE 09 ...
DROP TABLE IF EXISTS `Employees`;
CREATE TABLE `Employees`
(
    `ID`			int not null auto_increment unique,
    `Company`			varchar (50),
    `LastName`			varchar (50),
    `FirstName`			varchar (50),
    `EmailAddress`			varchar (50),
    `JobTitle`			varchar (50),
    `BusinessPhone`			varchar (25),
    `HomePhone`			varchar (25),
    `MobilePhone`			varchar (25),
    `FaxNumber`			varchar (25),
    `Address`			text,
    `City`			varchar (50),
    `State/Province`			varchar (50),
    `ZIP/PostalCode`			varchar (15),
    `Country/Region`			varchar (50),
    `WebPage`			text,
    `Notes`			text,
    `Attachments`			Unknown_0012
);


-- CREATE TABLE 10 ...
DROP TABLE IF EXISTS `Inventory Transaction Types`;
CREATE TABLE `Inventory Transaction Types`
(
    `ID`			tinyint,
    `TypeName`			varchar (50) NOT NULL
);


-- CREATE TABLE 11 ...
DROP TABLE IF EXISTS `Inventory Transactions`;
CREATE TABLE `Inventory Transactions`
(
    `TransactionID`			int not null auto_increment unique,
    `TransactionType`			tinyint NOT NULL,
    `TransactionCreatedDate`			date DEFAULT =Now(),
    `TransactionModifiedDate`			date DEFAULT =Now(),
    `ProductID`			int NOT NULL,
    `Quantity`			int NOT NULL,
    `PurchaseOrderID`			int,
    `CustomerOrderID`			int,
    `Comments`			varchar (255)
);


-- CREATE TABLE 12 ...
DROP TABLE IF EXISTS `Invoices`;
CREATE TABLE `Invoices`
(
    `InvoiceID`			int not null auto_increment unique,
    `OrderID`			int,
    `InvoiceDate`			date DEFAULT =Now(),
    `DueDate`			date,
    `Tax`			float DEFAULT 0,
    `Shipping`			float DEFAULT 0,
    `AmountDue`			float DEFAULT 0
);


-- CREATE TABLE 13 ...
DROP TABLE IF EXISTS `Order Details`;
CREATE TABLE `Order Details`
(
    `ID`			int not null auto_increment unique,
    `OrderID`			int NOT NULL,
    `ProductID`			int,
    `Quantity`			numeric (18, 4) NOT NULL DEFAULT 0,
    `UnitPrice`			float DEFAULT 0,
    `Discount`			float NOT NULL DEFAULT 0,
    `StatusID`			int,
    `DateAllocated`			date,
    `PurchaseOrderID`			int,
    `InventoryID`			int
);


-- CREATE TABLE 14 ...
DROP TABLE IF EXISTS `Order Details Status`;
CREATE TABLE `Order Details Status`
(
    `StatusID`			int,
    `StatusName`			varchar (50) NOT NULL
);


-- CREATE TABLE 15 ...
DROP TABLE IF EXISTS `Orders`;
CREATE TABLE `Orders`
(
    `OrderID`			int not null auto_increment unique,
    `VersionHistory_F5F8918F0A3F4DA9AE71184EE5012880`			Unknown_0012,
    `EmployeeID`			int,
    `CustomerID`			int,
    `OrderDate`			date DEFAULT Now(),
    `ShippedDate`			date,
    `ShipperID`			int,
    `ShipName`			varchar (50),
    `ShipAddress`			text,
    `ShipCity`			varchar (50),
    `ShipState/Province`			varchar (50),
    `ShipZIP/PostalCode`			varchar (50),
    `ShipCountry/Region`			varchar (50),
    `ShippingFee`			float DEFAULT 0,
    `Taxes`			float DEFAULT 0,
    `PaymentType`			varchar (50),
    `PaidDate`			date,
    `Notes`			text,
    `TaxRate`			float DEFAULT 0,
    `TaxStatus`			tinyint,
    `StatusID`			tinyint DEFAULT 0
);


-- CREATE TABLE 16 ...
DROP TABLE IF EXISTS `Orders Status`;
CREATE TABLE `Orders Status`
(
    `StatusID`			tinyint,
    `StatusName`			varchar (50) NOT NULL
);


-- CREATE TABLE 17 ...
DROP TABLE IF EXISTS `Orders Tax Status`;
CREATE TABLE `Orders Tax Status`
(
    `ID`			tinyint,
    `TaxStatusName`			varchar (50) NOT NULL
);


-- CREATE TABLE 18 ...
DROP TABLE IF EXISTS `Products`;
CREATE TABLE `Products`
(
    `SupplierIDs`			Unknown_0012,
    `ID`			int not null auto_increment unique,
    `ProductCode`			varchar (25),
    `ProductName`			varchar (50),
    `Description`			text,
    `StandardCost`			float DEFAULT 0,
    `ListPrice`			float NOT NULL DEFAULT 0,
    `ReorderLevel`			smallint,
    `TargetLevel`			int,
    `QuantityPerUnit`			varchar (50),
    `Discontinued`			boolean NOT NULL DEFAULT FALSE,
    `MinimumReorderQuantity`			smallint,
    `Category`			varchar (50),
    `Attachments`			Unknown_0012
);


-- CREATE TABLE 19 ...
DROP TABLE IF EXISTS `Purchase Order Details`;
CREATE TABLE `Purchase Order Details`
(
    `ID`			int not null auto_increment unique,
    `PurchaseOrderID`			int NOT NULL,
    `ProductID`			int,
    `Quantity`			numeric (18, 4) NOT NULL,
    `UnitCost`			float NOT NULL,
    `DateReceived`			date,
    `PostedToInventory`			boolean NOT NULL DEFAULT FALSE,
    `InventoryID`			int
);


-- CREATE TABLE 20 ...
DROP TABLE IF EXISTS `Purchase Order Status`;
CREATE TABLE `Purchase Order Status`
(
    `StatusID`			int,
    `Status`			varchar (50)
);


-- CREATE TABLE 21 ...
DROP TABLE IF EXISTS `Purchase Orders`;
CREATE TABLE `Purchase Orders`
(
    `PurchaseOrderID`			int not null auto_increment unique,
    `SupplierID`			int,
    `CreatedBy`			int,
    `SubmittedDate`			date,
    `CreationDate`			date DEFAULT Now(),
    `StatusID`			int DEFAULT 0,
    `ExpectedDate`			date,
    `ShippingFee`			float NOT NULL DEFAULT 0,
    `Taxes`			float NOT NULL DEFAULT 0,
    `PaymentDate`			date,
    `PaymentAmount`			float DEFAULT 0,
    `PaymentMethod`			varchar (50),
    `Notes`			text,
    `ApprovedBy`			int,
    `ApprovedDate`			date,
    `SubmittedBy`			int
);


-- CREATE TABLE 22 ...
DROP TABLE IF EXISTS `Sales Reports`;
CREATE TABLE `Sales Reports`
(
    `GroupBy`			varchar (50) NOT NULL,
    `Display`			varchar (50),
    `Title`			varchar (50),
    `FilterRowSource`			text,
    `Default`			boolean NOT NULL DEFAULT FALSE
);


-- CREATE TABLE 23 ...
DROP TABLE IF EXISTS `Shippers`;
CREATE TABLE `Shippers`
(
    `ID`			int not null auto_increment unique,
    `Company`			varchar (50),
    `LastName`			varchar (50),
    `FirstName`			varchar (50),
    `EmailAddress`			varchar (50),
    `JobTitle`			varchar (50),
    `BusinessPhone`			varchar (25),
    `HomePhone`			varchar (25),
    `MobilePhone`			varchar (25),
    `FaxNumber`			varchar (25),
    `Address`			text,
    `City`			varchar (50),
    `State/Province`			varchar (50),
    `ZIP/PostalCode`			varchar (15),
    `Country/Region`			varchar (50),
    `WebPage`			text,
    `Notes`			text,
    `Attachments`			Unknown_0012
);


-- CREATE TABLE 24 ...
DROP TABLE IF EXISTS `Strings`;
CREATE TABLE `Strings`
(
    `StringID`			int not null auto_increment unique,
    `StringData`			varchar (255)
);


-- CREATE TABLE 25 ...
DROP TABLE IF EXISTS `Suppliers`;
CREATE TABLE `Suppliers`
(
    `ID`			int not null auto_increment unique,
    `Company`			varchar (50),
    `LastName`			varchar (50),
    `FirstName`			varchar (50),
    `EmailAddress`			varchar (50),
    `JobTitle`			varchar (50),
    `BusinessPhone`			varchar (25),
    `HomePhone`			varchar (25),
    `MobilePhone`			varchar (25),
    `FaxNumber`			varchar (25),
    `Address`			text,
    `City`			varchar (50),
    `State/Province`			varchar (50),
    `ZIP/PostalCode`			varchar (15),
    `Country/Region`			varchar (50),
    `WebPage`			text,
    `Notes`			text,
    `Attachments`			Unknown_0012
);


-- CREATE TABLE 26 ...
DROP TABLE IF EXISTS `Privileges`;
CREATE TABLE `Privileges`
(
    `PrivilegeID`			int not null auto_increment unique,
    `PrivilegeName`			varchar (50)
);


-- CREATE TABLE 27 ...
DROP TABLE IF EXISTS `Categories`;
CREATE TABLE `Categories`
(
    `CategoryID`			int not null auto_increment unique,
    `CategoryName`			varchar (15) NOT NULL,
    `Description`			text,
    `Picture`			blob
);


-- CREATE TABLE 28 ...
DROP TABLE IF EXISTS `Customers`;
CREATE TABLE `Customers`
(
    `CustomerID`			varchar (5),
    `CompanyName`			varchar (40) NOT NULL,
    `ContactName`			varchar (30),
    `ContactTitle`			varchar (30),
    `Address`			varchar (60),
    `City`			varchar (15),
    `Region`			varchar (15),
    `PostalCode`			varchar (10),
    `Country`			varchar (15),
    `Phone`			varchar (24),
    `Fax`			varchar (24)
);


-- CREATE TABLE 29 ...
DROP TABLE IF EXISTS `Employees`;
CREATE TABLE `Employees`
(
    `EmployeeID`			int not null auto_increment unique,
    `LastName`			varchar (20) NOT NULL,
    `FirstName`			varchar (10) NOT NULL,
    `Title`			varchar (30),
    `TitleOfCourtesy`			varchar (25),
    `BirthDate`			datetime,
    `HireDate`			datetime,
    `Address`			varchar (60),
    `City`			varchar (15),
    `Region`			varchar (15),
    `PostalCode`			varchar (10),
    `Country`			varchar (15),
    `HomePhone`			varchar (24),
    `Extension`			varchar (4),
    `Photo`			blob,
    `Notes`			text,
    `ReportsTo`			int
);


-- CREATE TABLE 30 ...
DROP TABLE IF EXISTS `Order Details`;
CREATE TABLE `Order Details`
(
    `OrderID`			int,
    `ProductID`			int NOT NULL,
    `UnitPrice`			float NOT NULL DEFAULT 0,
    `Quantity`			smallint NOT NULL DEFAULT 1,
    `Discount`			float NOT NULL DEFAULT 0
);


-- CREATE TABLE 31 ...
DROP TABLE IF EXISTS `Orders`;
CREATE TABLE `Orders`
(
    `OrderID`			int not null auto_increment unique,
    `CustomerID`			varchar (5),
    `EmployeeID`			int,
    `OrderDate`			datetime,
    `RequiredDate`			datetime,
    `ShippedDate`			datetime,
    `ShipVia`			int,
    `Freight`			float DEFAULT 0,
    `ShipName`			varchar (40),
    `ShipAddress`			varchar (60),
    `ShipCity`			varchar (15),
    `ShipRegion`			varchar (15),
    `ShipPostalCode`			varchar (10),
    `ShipCountry`			varchar (15)
);


-- CREATE TABLE 32 ...
DROP TABLE IF EXISTS `Products`;
CREATE TABLE `Products`
(
    `ProductID`			int not null auto_increment unique,
    `ProductName`			varchar (40) NOT NULL,
    `SupplierID`			int,
    `CategoryID`			int,
    `QuantityPerUnit`			varchar (20),
    `UnitPrice`			float DEFAULT 0,
    `UnitsInStock`			smallint DEFAULT 0,
    `UnitsOnOrder`			smallint DEFAULT 0,
    `ReorderLevel`			smallint DEFAULT 0,
    `Discontinued`			boolean NOT NULL DEFAULT =No
);


-- CREATE TABLE 33 ...
DROP TABLE IF EXISTS `Shippers`;
CREATE TABLE `Shippers`
(
    `ShipperID`			int not null auto_increment unique,
    `CompanyName`			varchar (40) NOT NULL,
    `Phone`			varchar (24)
);


-- CREATE TABLE 34 ...
DROP TABLE IF EXISTS `Suppliers`;
CREATE TABLE `Suppliers`
(
    `SupplierID`			int not null auto_increment unique,
    `CompanyName`			varchar (40) NOT NULL,
    `ContactName`			varchar (30),
    `ContactTitle`			varchar (30),
    `Address`			varchar (60),
    `City`			varchar (15),
    `Region`			varchar (15),
    `PostalCode`			varchar (10),
    `Country`			varchar (15),
    `Phone`			varchar (24),
    `Fax`			varchar (24),
    `HomePage`			text
);


-- CREATE TABLE 35 ...
DROP TABLE IF EXISTS `BKcodeQ34Urineproteincreatinineratio`;
CREATE TABLE `BKcodeQ34Urineproteincreatinineratio`
(
    `Q34Urineproteincreatinineratio`			varchar (255)
);


-- CREATE TABLE 36 ...
DROP TABLE IF EXISTS `codeBMI`;
CREATE TABLE `codeBMI`
(
    `BMI`			varchar (255)
);


-- CREATE TABLE 37 ...
DROP TABLE IF EXISTS `codeGFRSwartzmlmin173m`;
CREATE TABLE `codeGFRSwartzmlmin173m`
(
    `GFRSwartzmlmin173m`			varchar (255)
);


-- CREATE TABLE 38 ...
DROP TABLE IF EXISTS `codeGlucose`;
CREATE TABLE `codeGlucose`
(
    `Glucose`			varchar (255)
);


-- CREATE TABLE 39 ...
DROP TABLE IF EXISTS `codeNormoglycaemicglycosuria`;
CREATE TABLE `codeNormoglycaemicglycosuria`
(
    `Normoglycaemicglycosuria`			varchar (255)
);


-- CREATE TABLE 40 ...
DROP TABLE IF EXISTS `codeQ10ReasonforSwitch`;
CREATE TABLE `codeQ10ReasonforSwitch`
(
    `Q10ReasonforSwitch`			varchar (255)
);


-- CREATE TABLE 41 ...
DROP TABLE IF EXISTS `codeQ13Stunting`;
CREATE TABLE `codeQ13Stunting`
(
    `Q13Stunting`			varchar (255)
);


-- CREATE TABLE 42 ...
DROP TABLE IF EXISTS `codeQ15DiastolicBP`;
CREATE TABLE `codeQ15DiastolicBP`
(
    `Q15DiastolicBP`			varchar (255)
);


-- CREATE TABLE 43 ...
DROP TABLE IF EXISTS `codeQ21Bilirubine`;
CREATE TABLE `codeQ21Bilirubine`
(
    `Q21Bilirubine`			varchar (255)
);


-- CREATE TABLE 44 ...
DROP TABLE IF EXISTS `codeQ22Kitones`;
CREATE TABLE `codeQ22Kitones`
(
    `Q22Kitones`			varchar (255)
);


-- CREATE TABLE 45 ...
DROP TABLE IF EXISTS `codeQ23Proteins`;
CREATE TABLE `codeQ23Proteins`
(
    `Q23Proteins`			varchar (255)
);


-- CREATE TABLE 46 ...
DROP TABLE IF EXISTS `codeQ25PresenceofBlood`;
CREATE TABLE `codeQ25PresenceofBlood`
(
    `Q25PresenceofBlood`			varchar (255)
);


-- CREATE TABLE 47 ...
DROP TABLE IF EXISTS `codeQ26SpecificGravity`;
CREATE TABLE `codeQ26SpecificGravity`
(
    `Q26SpecificGravity`			varchar (255)
);


-- CREATE TABLE 48 ...
DROP TABLE IF EXISTS `codeQ27Urobilinogen`;
CREATE TABLE `codeQ27Urobilinogen`
(
    `Q27Urobilinogen`			varchar (255)
);


-- CREATE TABLE 49 ...
DROP TABLE IF EXISTS `codeQ28Nitrites`;
CREATE TABLE `codeQ28Nitrites`
(
    `Q28Nitrites`			varchar (255)
);


-- CREATE TABLE 50 ...
DROP TABLE IF EXISTS `codeQ30Glucostyx58`;
CREATE TABLE `codeQ30Glucostyx58`
(
    `Q30Glucostyx58`			varchar (255)
);


-- CREATE TABLE 51 ...
DROP TABLE IF EXISTS `codeQ34Urineproteincreatinineratio`;
CREATE TABLE `codeQ34Urineproteincreatinineratio`
(
    `Q34Urineproteincreatinineratio`			varchar (255)
);


-- CREATE TABLE 52 ...
DROP TABLE IF EXISTS `codeQ37SeriumPhosphatemgdl14`;
CREATE TABLE `codeQ37SeriumPhosphatemgdl14`
(
    `Q37SeriumPhosphatemgdl14`			varchar (255)
);


-- CREATE TABLE 53 ...
DROP TABLE IF EXISTS `codeQ6CurrentARTReg`;
CREATE TABLE `codeQ6CurrentARTReg`
(
    `Q6CurrentARTReg`			varchar (255)
);


-- CREATE TABLE 54 ...
DROP TABLE IF EXISTS `codeSerumPhosphate14`;
CREATE TABLE `codeSerumPhosphate14`
(
    `SerumPhosphate14`			varchar (255)
);


-- CREATE TABLE 55 ...
DROP TABLE IF EXISTS `codeSerumPhosphate1year`;
CREATE TABLE `codeSerumPhosphate1year`
(
    `SerumPhosphate1year`			varchar (255)
);


-- CREATE TABLE 56 ...
DROP TABLE IF EXISTS `codeSex`;
CREATE TABLE `codeSex`
(
    `Sex`			varchar (255)
);


-- CREATE TABLE 57 ...
DROP TABLE IF EXISTS `codeSystolicBP`;
CREATE TABLE `codeSystolicBP`
(
    `SystolicBP`			varchar (255)
);


-- CREATE TABLE 58 ...
DROP TABLE IF EXISTS `Zahlungen`;
CREATE TABLE `Zahlungen`
(
    `ZahlungID`			int not null auto_increment unique,
    `Datum`			datetime,
    `MitgliedNr`			int,
    `Beitragsjahr`			smallint,
    `Betrag`			float
);


-- CREATE TABLE 59 ...
DROP TABLE IF EXISTS `Mitglieder`;
CREATE TABLE `Mitglieder`
(
    `MitgliedNr`			int not null auto_increment unique,
    `Nachname`			varchar (25),
    `Vorname`			varchar (25),
    `Straße`			varchar (30),
    `PLZ`			varchar (6),
    `Ort`			varchar (25),
    `Beitrittsdatum`			datetime DEFAULT now(),
    `KategorieNr`			tinyint DEFAULT 1
);


-- CREATE TABLE 60 ...
DROP TABLE IF EXISTS `Reise`;
CREATE TABLE `Reise`
(
    `ReiseID`			int not null auto_increment unique,
    `Ziel`			varchar (30),
    `Hotel`			varchar (30),
    `Abreise`			datetime,
    `Dauer`			tinyint,
    `Personenanzahl`			tinyint
);


-- CREATE TABLE 61 ...
DROP TABLE IF EXISTS `Kategorien`;
CREATE TABLE `Kategorien`
(
    `Nr`			tinyint,
    `Kategorie`			varchar (20)
);


-- CREATE TABLE 62 ...
DROP TABLE IF EXISTS `Schueler`;
CREATE TABLE `Schueler`
(
    `SchuelerNr`			smallint DEFAULT 0,
    `Klasse`			varchar (10),
    `Familienname`			varchar (50),
    `Vorname`			varchar (255),
    `PLZ`			varchar (255),
    `Ort`			varchar (50),
    `Straße`			varchar (255),
    `Gebdatum`			date,
    `Geschlecht`			varchar (1) NOT NULL,
    `Klassenkassa`			float
);


-- CREATE TABLE 63 ...
DROP TABLE IF EXISTS `Agsystemfieldtestin`;
CREATE TABLE `Agsystemfieldtestin`
(
    `ecosystem_ID`			int not null auto_increment unique,
    `ecosystem_name`			varchar (255),
    `Practice_name`			varchar (255),
    `Country`			varchar (255),
    `Region`			varchar (255),
    `Decrease_inequality`			boolean NOT NULL DEFAULT 0
);


-- CREATE TABLE 64 ...
DROP TABLE IF EXISTS `Agsystemimprovement`;
CREATE TABLE `Agsystemimprovement`
(
    `Ecosystem_ID`			int not null auto_increment unique,
    `Ecosystem_name`			varchar (255),
    `Country`			varchar (255),
    `Region`			varchar (255),
    `beneficiaries`			int
);


-- CREATE TABLE 65 ...
DROP TABLE IF EXISTS `Flagshipprdcts`;
CREATE TABLE `Flagshipprdcts`
(
    `Flagship_product_ID`			int not null auto_increment unique,
    `Flagship_product_name`			varchar (255),
    `Targeting_women`			boolean NOT NULL DEFAULT 0,
    `Gender_disaggregated`			boolean NOT NULL DEFAULT 0,
    `URL`			text
);


-- CREATE TABLE 66 ...
DROP TABLE IF EXISTS `Innovationplatform`;
CREATE TABLE `Innovationplatform`
(
    `Innovation_ID`			int not null auto_increment unique,
    `Innovation_name`			varchar (255),
    `Country`			varchar (255),
    `Partners`			varchar (255)
);


-- CREATE TABLE 67 ...
DROP TABLE IF EXISTS `Ltermtraining`;
CREATE TABLE `Ltermtraining`
(
    `long_training_ID`			int not null auto_increment unique,
    `long_trainee_name`			varchar (255),
    `trainee_sex`			varchar (255),
    `Program_name`			varchar (255),
    `Institution_name`			varchar (255)
);


-- CREATE TABLE 68 ...
DROP TABLE IF EXISTS `Newtechnologies`;
CREATE TABLE `Newtechnologies`
(
    `Technology_ID`			int not null auto_increment unique,
    `Technology_name`			varchar (255),
    `Country`			varchar (255),
    `Region`			varchar (255),
    `Location`			varchar (255),
    `Number_women`			int,
    `Number_men`			int,
    `newtech`			int DEFAULT 1
);


-- CREATE TABLE 69 ...
DROP TABLE IF EXISTS `Openaccesdtbs`;
CREATE TABLE `Openaccesdtbs`
(
    `Database_ID`			int not null auto_increment unique,
    `Database_name`			varchar (255),
    `users`			int,
    `URL`			text
);


-- CREATE TABLE 70 ...
DROP TABLE IF EXISTS `Publications`;
CREATE TABLE `Publications`
(
    `Publication_ID`			int not null auto_increment unique,
    `Publication_name`			varchar (255),
    `publication_year`			int,
    `Authors`			varchar (255),
    `Journalname`			varchar (255),
    `URL`			text
);


-- CREATE TABLE 71 ...
DROP TABLE IF EXISTS `Pubtargetinecosystems`;
CREATE TABLE `Pubtargetinecosystems`
(
    `Ecosystem_name`			varchar (255),
    `Country`			varchar (255),
    `Region`			varchar (255),
    `Publication_name`			varchar (255),
    `Publication_ID`			int not null auto_increment unique,
    `Authors`			varchar (255),
    `Journal_Mag_Book`			varchar (255),
    `URL`			text
);


-- CREATE TABLE 72 ...
DROP TABLE IF EXISTS `Stermtraining`;
CREATE TABLE `Stermtraining`
(
    `Short_training_ID`			int not null auto_increment unique,
    `Short_training_name`			varchar (255),
    `location`			varchar (255),
    `men_number`			int,
    `women_number`			int
);


-- CREATE TABLE 73 ...
DROP TABLE IF EXISTS `Strategicvchainsanalysed`;
CREATE TABLE `Strategicvchainsanalysed`
(
    `Value_chain_ID`			int not null auto_increment unique,
    `Value_chain_desc`			varchar (255),
    `Country`			varchar (255),
    `Region`			varchar (255)
);


-- CREATE TABLE 74 ...
DROP TABLE IF EXISTS `Targetagroecosystems`;
CREATE TABLE `Targetagroecosystems`
(
    `Ecosystem_ID`			int not null auto_increment unique,
    `Ecosystem_name`			varchar (255),
    `Country`			varchar (255),
    `Region`			varchar (255),
    `Estimated_population`			int
);


-- CREATE TABLE 75 ...
DROP TABLE IF EXISTS `Technpracticreleasd`;
CREATE TABLE `Technpracticreleasd`
(
    `Practice_ID`			int not null auto_increment unique,
    `Practice_name`			varchar (255),
    `Geog_location`			varchar (255),
    `Partners`			varchar (255)
);


-- CREATE TABLE 76 ...
DROP TABLE IF EXISTS `Techonground`;
CREATE TABLE `Techonground`
(
    `Technology_ID`			int not null auto_increment unique,
    `Technology_name`			varchar (255),
    `Country`			varchar (255),
    `Region`			varchar (255),
    `Location`			varchar (255),
    `Area`			int,
    `newarea`			int DEFAULT 1
);


-- CREATE TABLE 77 ...
DROP TABLE IF EXISTS `Techunderresearch`;
CREATE TABLE `Techunderresearch`
(
    `Practise_ID`			int not null auto_increment unique,
    `Practise_name`			varchar (255),
    `Targeting_women`			boolean NOT NULL DEFAULT 0,
    `Gender_disaggregated`			boolean NOT NULL DEFAULT 0,
    `geographical_location`			varchar (255)
);


-- CREATE TABLE 78 ...
DROP TABLE IF EXISTS `Toolsproduced`;
CREATE TABLE `Toolsproduced`
(
    `Tool_ID`			int not null auto_increment unique,
    `Tool_name`			varchar (255),
    `Targeting_women`			boolean NOT NULL DEFAULT 0,
    `Gender_disaggregated`			boolean NOT NULL DEFAULT 0,
    `URL`			text
);


-- CREATE TABLE 79 ...
DROP TABLE IF EXISTS `Policies`;
CREATE TABLE `Policies`
(
    `Policy_ID`			int not null auto_increment unique,
    `Policy_name`			varchar (255),
    `Country`			varchar (255),
    `Analysed`			boolean NOT NULL DEFAULT 0,
    `Presented_consult`			boolean NOT NULL DEFAULT 0,
    `Presented_legislation`			boolean NOT NULL DEFAULT 0,
    `Approved`			boolean NOT NULL DEFAULT 0,
    `Implemented`			boolean NOT NULL DEFAULT 0
);


-- CREATE TABLE 80 ...
DROP TABLE IF EXISTS `techfieldtested`;
CREATE TABLE `techfieldtested`
(
    `practise_ID`			int not null auto_increment unique,
    `practise_name`			varchar (255),
    `Geog_location`			varchar (255)
);


-- CREATE TABLE 81 ...
DROP TABLE IF EXISTS `Payments`;
CREATE TABLE `Payments`
(
    `ID`			varchar (3),
    `LastName`			varchar (30),
    `FirstName`			varchar (20),
    `Paid`			float DEFAULT 0,
    `Updated`			date
);


-- CREATE TABLE 82 ...
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente`
(
    `codigo`			int not null auto_increment unique,
    `nombre`			varchar (255),
    `telefono`			varchar (255),
    `nick`			varchar (255),
    `pass`			varchar (255)
);


-- CREATE TABLE 83 ...
DROP TABLE IF EXISTS `reservas`;
CREATE TABLE `reservas`
(
    `cliente`			int,
    `vehiculo`			varchar (255),
    `inicio`			datetime,
    `fin`			datetime
);


-- CREATE TABLE 84 ...
DROP TABLE IF EXISTS `vehiculo`;
CREATE TABLE `vehiculo`
(
    `matricula`			varchar (255),
    `modelo`			varchar (255),
    `marca`			varchar (255),
    `n_puertas`			varchar (255),
    `categoria`			smallint,
    `precio`			float
);


-- CREATE TABLE 85 ...
DROP TABLE IF EXISTS `Mitglieder`;
CREATE TABLE `Mitglieder`
(
    `Mitgliedsnr`			int DEFAULT 0,
    `Name`			varchar (50),
    `Vorname`			varchar (50),
    `Geschlecht`			varchar (1),
    `Straße`			varchar (50),
    `PLZ`			varchar (8),
    `Geburtsdatum`			datetime,
    `Beitrag`			float DEFAULT 0,
    `Bundesland`			varchar (50),
    `Gründer`			boolean NOT NULL DEFAULT FALSE
);


-- CREATE TABLE 86 ...
DROP TABLE IF EXISTS `Artikel`;
CREATE TABLE `Artikel`
(
    `Nr`			int not null auto_increment unique,
    `Artikel`			varchar (50),
    `Code`			int DEFAULT 0
);


-- CREATE TABLE 87 ...
DROP TABLE IF EXISTS `Filialen`;
CREATE TABLE `Filialen`
(
    `Nr`			int not null auto_increment unique,
    `Filiale`			varchar (50),
    `PLZ`			varchar (50)
);


-- CREATE TABLE 88 ...
DROP TABLE IF EXISTS `Bestellung`;
CREATE TABLE `Bestellung`
(
    `BestellNr`			int not null auto_increment unique,
    `KundeNr`			int DEFAULT 0,
    `ArtikelNr`			int DEFAULT 0,
    `BestellDatum`			datetime
);


-- CREATE TABLE 89 ...
DROP TABLE IF EXISTS `Brasilien`;
CREATE TABLE `Brasilien`
(
    `IDNr`			int not null auto_increment unique,
    `Name`			varchar (50),
    `richtigerName`			varchar (50),
    `Geburtsjahr`			int DEFAULT 0,
    `Verein`			varchar (50),
    `Position`			int DEFAULT 0
);


-- CREATE TABLE 90 ...
DROP TABLE IF EXISTS `Deutschland`;
CREATE TABLE `Deutschland`
(
    `IDNr`			int not null auto_increment unique,
    `Name`			varchar (50),
    `Vorname`			varchar (50),
    `Geburtsjahr`			int DEFAULT 0,
    `Verein`			varchar (50),
    `Position`			int DEFAULT 0,
    `Nationalität`			varchar (50)
);


-- CREATE TABLE 91 ...
DROP TABLE IF EXISTS `England`;
CREATE TABLE `England`
(
    `IDNr`			int not null auto_increment unique,
    `Name`			varchar (50),
    `Vorname`			varchar (50),
    `Geburtsjahr`			int DEFAULT 0,
    `Verein`			varchar (50),
    `Position`			int DEFAULT 0
);


-- CREATE TABLE 92 ...
DROP TABLE IF EXISTS `Frankreich`;
CREATE TABLE `Frankreich`
(
    `IDNr`			int not null auto_increment unique,
    `Name`			varchar (50),
    `Vorname`			varchar (50),
    `Geburtsjahr`			int DEFAULT 0,
    `Verein`			varchar (50),
    `Position`			int DEFAULT 0
);


-- CREATE TABLE 93 ...
DROP TABLE IF EXISTS `nichts_neues`;
CREATE TABLE `nichts_neues`
(
    `nr`			int not null auto_increment unique,
    `Name`			varchar (50)
);


-- CREATE TABLE 94 ...
DROP TABLE IF EXISTS `Niederlande`;
CREATE TABLE `Niederlande`
(
    `IDNR`			int not null auto_increment unique,
    `Name`			varchar (50),
    `Vorname`			varchar (50),
    `Geburtsjahr`			int DEFAULT 0,
    `Verein`			varchar (50),
    `Position`			int DEFAULT 0
);


-- CREATE TABLE 95 ...
DROP TABLE IF EXISTS `Position1`;
CREATE TABLE `Position1`
(
    `IDNr`			int not null auto_increment unique,
    `Kategorie`			int DEFAULT 0,
    `Position`			varchar (50)
);


-- CREATE TABLE 96 ...
DROP TABLE IF EXISTS `Position2`;
CREATE TABLE `Position2`
(
    `ID`			int not null auto_increment unique,
    `Spieler`			int DEFAULT 0,
    `Position`			int DEFAULT 0
);


-- CREATE TABLE 97 ...
DROP TABLE IF EXISTS `Prämie`;
CREATE TABLE `Prämie`
(
    `IDNR`			int not null auto_increment unique,
    `Spieler`			varchar (50),
    `Prämie`			float DEFAULT 0
);


-- CREATE TABLE 98 ...
DROP TABLE IF EXISTS `Prämie2`;
CREATE TABLE `Prämie2`
(
    `IDNR`			int not null auto_increment unique,
    `Spieler`			varchar (50),
    `Prämie`			float DEFAULT 0
);


-- CREATE TABLE 99 ...
DROP TABLE IF EXISTS `Argentinien`;
CREATE TABLE `Argentinien`
(
    `IDNr`			int not null auto_increment unique,
    `Name`			varchar (50),
    `Vorname`			varchar (50),
    `Geburtsjahr`			int DEFAULT 0,
    `Verein`			varchar (50),
    `Position`			int
);

use schema test;
DROP TABLE IF EXISTS  PRODUCTS;
DROP TABLE IF EXISTS  A;
DROP TABLE IF EXISTS  B;
DROP TABLE IF EXISTS  EMP;
DROP TABLE IF EXISTS  DEPT;
DROP TABLE IF EXISTS  REPLACEDEPT;
DROP TABLE IF EXISTS  BONUS;
DROP TABLE IF EXISTS  SALGRADE;
DROP TABLE IF EXISTS  DUMMY;
DROP TABLE IF EXISTS  ITEM;
DROP TABLE IF EXISTS  PRICE;
DROP TABLE IF EXISTS  PRODUCT;
DROP TABLE IF EXISTS  ORD;
DROP TABLE IF EXISTS  CUSTOMER;
DROP TABLE IF EXISTS  EMP1;
DROP TABLE IF EXISTS  EMP2;
DROP TABLE IF EXISTS  DEPT1;
DROP TABLE IF EXISTS  DEPT2;
DROP TABLE IF EXISTS  DEPT3;
DROP TABLE IF EXISTS  regexpr;
DROP TABLE IF EXISTS  temp1;
DROP TABLE IF EXISTS  SORT;
DROP TABLE IF EXISTS  Location;
DROP TABLE IF EXISTS  TableA;
DROP TABLE IF EXISTS  TableB;
DROP TABLE IF EXISTS  HOBBY;
DROP TABLE IF EXISTS  NEW;
DROP TABLE IF EXISTS  BLANKTABLEA;
DROP TABLE IF EXISTS  BLANKTABLEB;
DROP TABLE IF EXISTS  NEAREST;
DROP TABLE IF EXISTS  DEMODEPT1;
DROP TABLE IF EXISTS  DEMODEPT2;
DROP TABLE IF EXISTS  COALESCE;
DROP TABLE IF EXISTS  DUPLICATE;
DROP TABLE IF EXISTS  NULLIF;
DROP TABLE IF EXISTS  STATUS;
DROP TABLE IF EXISTS  SALESPERSON;
DROP TABLE IF EXISTS  MENUCARD;
DROP TABLE IF EXISTS  SOFTDRINK;
DROP TABLE IF EXISTS  SETA;
DROP TABLE IF EXISTS  SETB;
DROP TABLE IF EXISTS  STATES;
DROP TABLE IF EXISTS  STATION;
DROP TABLE IF EXISTS  Z;

drop VIEW IF EXISTS SALES;

 create table products (
	ProductID int(11) primary key auto_increment,
	ProductName varchar(40),
	SupplierID int(11),
	CategoryID int(11),
	QuantityPerUnit varchar(20),
	UnitPrice decimal(10,4) Default 0.0000,
	UnitsInStock int(2) Default 0,
	UnitsOnOrder int(2) Default 0,
	ReorderLevel int(2) Default 0,
	Discontinued boolean
);

insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Chai', 1, 1, '10 boxes x 20 bags', 18.0000,39,0,10,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Chang', 1, 1, '24 - 12 oz bottles', 19.0000,17,40,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10.0000,13,70,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Chef Anton's Cajun Seasoning", 2, 2, '48 - 6 oz jars', 22.0000,53,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Chef Anton's Gumbo Mix", 2, 2, '36 boxes', 21.3500,0,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Grandma's Boysenberry Spread", 3, 2, '12 - 8 oz jars', 25.0000,120,0,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Uncle Bob's Organic Dried Pears", 3, 7, '12 - 1 lb pkgs.', 30.0000,15,0,10,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40.0000,6,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97.0000,29,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Ikura', 4, 8, '12 - 200 ml jars', 31.0000,31,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21.0000,22,30,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38.0000,86,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Konbu', 6, 8, '2 kg box', 6.0000,24,0,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23.2500,35,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Genen Shouyu', 6, 2, '40 - 100 g pkgs.', 15.5000,39,0,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Pavlova', 7, 3, '32 - 500 g boxes', 17.4500,29,0,10,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 39.0000,0,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 62.5000,42,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9.2000,25,0,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Sir Rodney's Marmalade", 8, 3, '30 gift boxes', 81.0000,40,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Sir Rodney's Scones", 8, 3, '24 pkgs. x 4 pieces', 10.0000,3,40,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Gustaf's Knckebrd", 9, 5, '24 - 500 g pkgs.', 21.0000,104,0,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Tunnbrd', 9, 5, '12 - 250 g pkgs.', 9.0000,61,0,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Guaran Fantstica', 10, 1, '12 - 355 ml cans', 4.5000,20,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'NuNuCa Nu-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14.0000,76,0,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Gumbr Gummibrchen', 11, 3, '100 - 250 g bags', 31.2300,15,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 43.9000,49,0,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Rssle Sauerkraut', 12, 7, '25 - 825 g cans', 45.6000,26,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Thringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 123.7900,0,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 25.8900,10,0,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 12.5000,0,70,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32.0000,9,40,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Geitost', 15, 4, '500 g', 2.5000,112,0,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14.0000,111,0,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18.0000,20,0,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Inlagd Sill', 17, 8, '24 - 250 g jars', 19.0000,112,0,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 26.0000,11,50,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Cte de Blaye', 18, 1, '12 - 75 cl bottles', 263.5000,17,0,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18.0000,69,0,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18.4000,123,0,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Jack's New England Clam Chowder", 19, 8, '12 - 12 oz cans', 9.6500,85,0,10,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14.0000,26,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 46.0000,17,10,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 19.4500,27,0,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Rogede sild', 21, 8, '1k pkg.', 9.5000,5,70,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Spegesild', 21, 8, '4 - 450 g glasses', 12.0000,95,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 9.5000,36,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Chocolade', 22, 3, '10 pkgs.', 12.7500,15,70,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 20.0000,10,60,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16.2500,65,0,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53.0000,20,0,10,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 7.0000,38,0,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Perth Pasties', 24, 6, '48 pieces', 32.8000,0,0,0,1);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Tourtire', 25, 6, '16 pies', 7.4500,21,0,10,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Pt chinois', 25, 6, '24 boxes x 2 pies', 24.0000,115,0,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38.0000,21,10,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 19.5000,36,0,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Escargots de Bourgogne', 27, 8, '24 pieces', 13.2500,62,0,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 55.0000,79,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34.0000,19,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, "Sirop d'rable", 29, 2, '24 - 500 ml bottles', 28.5000,113,0,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Tarte au sucre', 29, 3, '48 pies', 49.3000,17,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Vegie-spread', 7, 2, '15 - 625 g jars', 43.9000,24,0,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Wimmers gute Semmelkndel', 12, 5, '20 bags x 4 pieces', 33.2500,22,80,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 21.0500,76,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 17.0000,4,100,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 14.0000,52,0,10,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 12.5000,6,10,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', 36.0000,26,0,15,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Outback Lager', 7, 1, '24 - 355 ml bottles', 15.0000,15,10,30,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Flotemysost', 15, 4, '10 - 500 g pkgs.', 21.5000,26,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 34.8000,14,0,0,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Rd Kaviar', 17, 8, '24 - 150 g jars', 15.0000,101,0,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Longlife Tofu', 4, 7, '5 kg pkg.', 10.0000,4,20,5,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Rhnbru Klosterbier', 12, 1, '24 - 0.5 l bottles', 7.7500,125,0,25,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Lakkalikri', 23, 1, '500 ml', 18.0000,57,0,20,0);
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values(default, 'Original Frankfurter grne Soe', 12, 2, '12 boxes', 13.0000,32,0,15,0);

create table a (c1 int, c2 int);

insert into a values(1,1),(2,2),(3,3),(4,4);

create table b (c3 int, c4 int);

insert into b values(11,1),(12,2),(13,3),(14,4),(15,5),(16,6),(17,7),(18,8),(19,9),(20,2);


CREATE TABLE Z (C1 CHAR);
INSERT INTO Z VALUES('X');
INSERT INTO Z VALUES('y');


CREATE TABLE SALESPERSON (SID INT, SNAME varchar (10));

insert into SALESPERSON values (1001,'ALAN'), (1002,'CALVIN'), (1003,'CLIVE'), (1004,'DENNIS'), (1005,'EVAN'), (1006,'FOX'), (1007,'PETER');


CREATE TABLE STATES (STATEID varchar(2), STATENAME varchar(20));

INSERT INTO STATES VALUES ('AK','Alaska'), ('AL','Alabama'), ('AR','Arkansas'), ('AZ','Arizona'),('CA','California'), ('CO','Colorado'), ('CT','Connecticut'), ('FL','Florida'), ('GA','Georgia'), ('GU',NULL), ('HI','Hawaii'), ('IA','Iowa'), ('ID','Idaho'), ('IL','Illinois'), ('IN','Indiana'), ('KS','Kansas'), ('KY','Kentucky'), ('LA','Louisiana'), ('MA','Massachusetts'), ('MD','Maryland'), ('ME','Maine'), ('MI','Michigan'), ('MN','Minnesota'), ('MO','Missouri'), ('MS','Mississippi'), ('MT','Montana'), ('NV','Nevada'), ('NJ','New Jersey'), ('NM','New Mexico'), ('NY','New York'), ('OH','Ohio'), ('PA','Pennsylvania'), ('WA','Washington');


CREATE TABLE STATION
    (ID INT,
    CITY varchar(21),
    STATE varchar(2),
    LAT_N INT,
    LONG_W INT);

INSERT INTO STATION VALUES (794,'Kissee Mills','MO',140,73), (824,'Loma Mar','CA',49,131), (603,'Sandy Hook','CT',72,148), (478,'Tipton','IN',34,98), (619,'Arlington','CO',75,93), (711,'Turner','AR',50,101), (839,'Slidell','LA',85,152), (411,'Negreet','LA',99,105), (588,'Glencoe','KY',46,136), ( 665,'Chelsea','IA',99,60), (342,'Chignik Lagoon','AK',103,153), (733,'Pelahatchie','MS',39,28), (441,'Hanna City','IL',51,137), (811,'Dorrance','KS',102,122), (698,'Albany','CA',50 ,80), (325,'Monument','KS' ,71, 142), (414,'Manchester','MD' ,74, 37), (113,'Prescott','IA', 40 ,66), (971,'Graettinger','IA' ,95, 150), (266,'Cahone','CO' ,116 ,127), (617,'Sturgis','MS' ,36 ,126), (495,'Upperco','MD', 114 ,30), (473,'Highwood','IL',27,151), (959,'Waipahu','HI',106,34), (438,'Bowdon','GA',89,78), (571,'Tyler','MN',133,59), (92,'Watkins','CO',83,97), (399,'Republic','MI',75,130), (426,'Millville','CA',33,146), (844,'Aguanga','CA',80,66), (321,'Bowdon Junction','GA',86,34), (606,'Morenci','AZ',105,110), (957,'South El Monte','CA',74,80), (833,'Hoskinston','KY',66,66), (843,'Talbert','KY',40,59), (166,'Mccomb','MS',74,43), (339,'Kirk','CO',141 ,136), (909,'Carlock','IL',117,85), (829,'Seward','IL',72,90 ), (766,'Gustine','CA',111,141), (392,'Delano','CA',126,92), (555,'Westphalia','MI',33,144), (33,'Saint Elmo','AL',27,51), (728,'Roy','MT',41,52), (656,'Pattonsburg','MO',138,32), (394,'Centertown','MO',134,93), (366,'Norvell','MI',125,94), (96,'Raymondville','MO',71,148), (867,'Beaver Island','MI',82,165), (977,'Odin','IL',53,116), (741,'Jemison','AL',62,26), (436,'West Hills','CA',68,73), (323,'Barrigada','GU',61,148), (3,'Hesperia','CA',106,71), (814,'Wickliffe','KY',80,46), (375,'Culdesac','ID',48,78), (467,'Roselawn','IN',88,52), (604,'Forest Lakes','AZ',145,114), (551,'San Simeon','CA',38,28), (706,'Little Rock','AR',122,121), (647,'Portland','AR',84,45), (25,'New Century','KS',135,79), (250,'Hampden','MA',76,26), (124,'Pine City','MN',119,129), (547,'Sandborn','IN',56,94), (701,'Seaton','IL',128,78), (197,'Milledgeville','IL',91,113), (613,'East China','MI',109, 42), (630,'Prince Frederick','MD',105,58), (767,'Pomona Park','FL',101,163), (679,'Gretna','LA', 75,143), (896,'Yazoo City','MS',95, 85), (403,'Zionsville','IN',58, 36), (519,'Rio Oso','CA',29 ,106), (482,'Jolon','CA',67,53), (252,'Childs','MD',93,104), (600,'Shreveport','LA',136,39), (14,'Forest','MS',120,50), (260,'Sizerock','KY',116,113), (65,'Buffalo Creek','CO',48,148), (753,'Algonac','MI',119,80), (174,'Onaway','MI',109,56), (263,'Irvington','IL',97,68), (253,'Winsted','MN',69,73), (557,'Woodbury','GA',103,93), (897,'Samantha','AL',75,36), (98,'Hackleburg','AL',120,121), (423,'Soldier','KS',77,153), (361,'Arrowsmith','IL',28,109), (409,'Columbus','GA',67,47), (312,'Bentonville','AR',37,78), (854,'Kirkland','AZ',86,58), (160,'Grosse Pointe','MI',102,91), (735,'Wilton','ME',57,157), (608,'Busby','MT',104,30), (122,'Robertsdale','AL',98,85), (93,'Dale','IN',70,34), (67,'Reeds','MO',31,43), (906,'Hayfork','CA',35,117), (34,'Mcbrides','MI',74,36), (921,'Lee Center','IL',96,77), (401,'Tennessee','IL',55,156), (536,'Henderson','IA',78,78), (953,'Udall','KS',113,60), (370,'Palm Desert','CA',107,146), (614,'Benedict','KS',138, 96), (998,'Oakfield','ME',48,132), (805,'Tamms','IL',60,75), (235,'Haubstadt','IN',28,32), (820,'Chokio','MN',81,134), (650,'Clancy','MT',46,164), (791,'Scotts Valley','CA',120,91), (324,'Norwood','MN',144,35), (442,'Elkton','MD',103,157), (633,'Bertha','MN',40,105), (109,'Bridgeport','MI',51, 80), (780,'Cherry','IL',68,47), (492,'Regina','KY',132,90), (965,'Griffin','GA',39,152), (778,'Pine Bluff','AR',60,146), (337,'Mascotte','FL',121,146), (259,'Baldwin','MD',82,40), (955,'Netawaka','KS' ,109, 120), (752,'East Irvine','CA', 106 ,115), (886,'Pony','MT' ,99, 163), (200,'Franklin','LA' ,82, 32), (384,'Amo','IN' ,104, 159), (518,'Vulcan','MO',109,92), (188,'Prairie Du Rocher','IL',76,71), (161,'Alanson','MI',91,72), (486,'Delta','LA',137,50), (406,'Carver','MN',46,122), (940,'Paron','AR',59,104), (237,'Winchester','ID',38,80), (465,'Jerome','AZ', 122, 34), (591,'Baton Rouge','LA', 130 ,72), (570,'Greenview','CA', 81, 58), (429,'Lucerne Valley','CA', 36, 48), (278,'Cromwell','MN', 129, 54), (927,'Quinter','KS', 60 ,25), (59,'Whitewater','MO' ,83, 71), (218,'Round Pond','ME', 127, 124), (291,'Clarkdale','AZ', 58 ,74), (668,'Rockton','IL', 116 ,87), (682,'Pheba','MS', 91, 127), (775,'Eleele','HI',81,153), (527,'Auburn','IA',95,137), (108,'North Berwick','ME',71, 27), (190,'Oconee','GA',93,119), (232,'Grandville','MI',39,70), (405,'Susanville','CA',128,80), (273,'Rosie','AR',73,162), (813,'Verona','MO',110,153), (444,'Richland','GA',105,113), (899,'Fremont','MI',54,151), (738,'Philipsburg','MT',96,72), (215,'Kensett','IA',56,140), (743,'De Tour Village','MI',25,25), (377,'Koleen','IN' ,138, 111), (727,'Winslow','IL' ,113, 39), (363,'Reasnor','IA', 42, 163), (117,'West Grove','IA', 127, 99), (420,'Frankfort Heights','IL', 72, 30), (888,'Bono','AR',133,150), (784,'Biggsville','IL',86,139), (413,'Linthicum Heights','MD',128 ,68), (695,'Amazonia','MO' ,46 ,148), (609,'Marysville','MI', 86,133), (471,'Cape Girardeau','MO',74,91), (649,'Pengilly','MN',25,154), (946,'Newton Center','MA',48,145), (380,'Crane Lake','MN',73, 43), (383,'Newbury','MA',128,85), (44,'Kismet','KS',100 ,157), (433,'Canton','ME',99,106), (283,'Clipper Mills','CA',114, 57), (474,'Grayslake','IL',61,33), (233,'Pierre Part','LA',52 ,90), (990,'Bison','KS',132,75), (502,'Bellevue','KY',127,122), (327,'Ridgway','CO',77,110), (4,'South Britain','CT',66, 34), (228,'Rydal','GA',36,79), (642,'Lynnville','KY',25,146) , (885,'Deerfield','MO',40,36), (539,'Montreal','MO',129,127), (202,'Hope','MN',140,44), (593,'Aliso Viejo','CA',68,131), (521,'Gowrie','IA',130,128), (938,'Andersonville','GA',141,73), (919,'Knob Lick','KY',136,33), (528,'Crouseville','ME',37,82), (331,'Cranks','KY',56,27), (45,'Rives Junction','MI',94,117), (944,'Ledyard','CT',135,144), (949,'Norway','ME',84,88), (88,'Eros','LA',95,58), (878,'Rantoul','KS',32,119), (35,'Richmond Hill','GA',39,114), (17,'Fredericktown','MO',106,113), (447,'Arkadelphia','AR',99,50), (498,'Glen Carbon','IL',61,141), (351,'Fredericksburg','IN',45, 78), (774,'Manchester','IA',130,123), (116,'Mc Henry','MD',93,113), (963,'Eriline','KY',94,65), (643,'Wellington','KY',100,32), (781,'Hoffman Estates','IL',129, 53), (364,'Howard Lake','MN',126 ,78), (777,'Edgewater','MD',130 ,72), (15 ,'Ducor','CA',141 ,102), (910,'Salem','KY', 87 ,114), (612,'Sturdivant','MO',94, 86), (537,'Hagatna','GU',97,152), (970,'East Haddam','CT',116 ,132), (510,'Eastlake','MI',134, 39), (354,'Larkspur','CA', 107, 66), (983,'Patriot','IN', 83 ,46);


CREATE TABLE SETA (c1 INT);
insert into seta values (1), (2), (3), (4), (5), (6);


CREATE TABLE SETB (c1 INT);

insert into setb values (2), (3), (4), (5), (6), (7), (8);


CREATE TABLE MENUCARD (ID INT, NAME varchar(35), RATE INT);

insert into MENUCARD values (1 , 'Extra Long Cheeseburger' , 100), (2 , 'Double Stacker' , 125), (3 , 'Double Cheeseburger' , 100), (4 , 'Hamburger' , 85 ), (5 , 'Classic Grilled Dog' , 95 ), (6 , 'Chili Cheese Grilled Dog' , 115 ), (7 , 'Flame Grilled Chicken Burger' , 135 ), (8 , 'Original Chicken Sandwich' , 55), (9 , 'McALLO TIKKI' , 45), (10 , 'Veg Maharaja Mac' , 75 ), (11 , 'Big Spicy Chicken Wrap' , 100 ), (12 , 'McVeggie Schezwan' , 85 );
  

CREATE TABLE SOFTDRINK
(ID INT,
NAME varchar(25),
RATE INT);

INSERT INTO SOFTDRINK VALUES (1, 'Coca-Cola' , 45 ), (2, 'Mello Yello' , 75 ), (3, 'Diet Coke' , 60), (4, 'Frozen Fanta Cherry ' , 65 ), (5, 'Iced Tea' , 35 );


CREATE TABLE STATUS (id INT, status varchar(12));

INSERT into STATUS values(1,'New');
INSERT into STATUS values(2,'Draft');
INSERT into STATUS values(4,'Approved');
INSERT into STATUS values(8,'Rejected');
INSERT into STATUS values(16,'Cancle');

CREATE TABLE NULLIF
(
  c1 INT,
  c2 INT);

insert into nullif values(1,1);
insert into nullif values(1,2);
insert into nullif values(2,1);
insert into nullif values(3,2);
insert into nullif values(3,3);
insert into nullif values(null,null);
insert into nullif values(3,1);
insert into nullif values(2,3);
insert into nullif values(2,2);
insert into nullif values(1,3);
insert into nullif values(4,null);
insert into nullif values(null,5);


CREATE TABLE DUPLICATE
 (    DEPTNO INT(2) NOT NULL,
      DNAME varchar(10),
      LOC varchar(10),
      WALLETID INT
 );

insert into DUPLICATE values (10, 'SALES', 'PUNE', 1), (20, 'PURCHASE','BARODA', 2), (10, 'SALES','PUNE', 1), (30, 'ACCOUNTS', 'SURAT', 3), (40, 'HR', 'ANAND', 4), (30, 'ACCOUNTS', 'SURAT', 3), (50, 'ADMIN', 'MUMBAI', 5), (60, 'RND', 'DELHI', 6), (50, 'ADMIN', 'MUMBAI', 5), (70, 'OPERATIONS', 'BHARUCH', 7), (10, 'SALES', 'PUNE', 1), (20, 'PURCHASE','BARODA', 2), (10,'SALES','PUNE', 1), (30, 'ACCOUNTS', 'SURAT', 3), (40, 'HR', 'ANAND', 4), (30, 'ACCOUNTS', 'SURAT', 3), (50, 'ADMIN', 'MUMBAI', 5), (60, 'RND', 'DELHI', 6), (50, 'ADMIN', 'MUMBAI', 5), (70, 'OPERATIONS', 'BHARUCH', 7);


 CREATE TABLE COALESCE
  (    PID INT,
       PNAME varchar(45),
       APRICE INT,
       SPRICE INT,
       DPRICE INT,
       NORTH varchar(5),
       SOUTH varchar(5),
       EAST varchar(5),
       WEST varchar(5),
       BPHONE INT,
       CPHONE INT,
       HPHONE INT
  );

INSERT INTO COALESCE (PID, PNAME, SPRICE, NORTH, BPHONE) VALUES ('1001', 'Samsung Galaxy On7 (Gold, 8 GB)', '10975', 'Y', '111');
INSERT INTO COALESCE (PID, PNAME, DPRICE, SOUTH, CPHONE) VALUES ('1002', 'Samsung Galaxy On5 (Gold, 8 GB)', '9800', 'Y', '222');
INSERT INTO COALESCE (PID, PNAME, APRICE, DPRICE, EAST, HPHONE) VALUES ('1003', 'Samsung Galaxy On5 (Black, 8 GB)', '16000', '1400', 'Y', '333');
INSERT INTO COALESCE (PID, PNAME, WEST, BPHONE, HPHONE) VALUES ('1004', 'Moto G (3rd Generation) (Black, 16 GB)', 'Y', '444', '555');
INSERT INTO COALESCE (PID, PNAME, SPRICE, DPRICE, CPHONE) VALUES ('1005', 'Moto G (3rd Generation) (White, 16 GB)', '17000', '15550', '666');
INSERT INTO COALESCE (PID, PNAME, APRICE, SPRICE, DPRICE, HPHONE) VALUES ('1006', 'Moto G Turbo Edition (White, 16 GB)', '8000', '8700', '8600', '777');
INSERT INTO COALESCE (PID, PNAME, APRICE, SPRICE, DPRICE, NORTH, BPHONE, HPHONE) VALUES ('1007', 'Moto G Turbo Edition (Black, 16 GB)', '11200', '12700', '12450', 'Y', '888', '999');
INSERT INTO COALESCE (PID, PNAME, SOUTH, WEST) VALUES ('1008', 'Moto X Play (Black, 32 GB)', 'Y', 'Y');
INSERT INTO COALESCE (PID, PNAME, DPRICE, BPHONE) VALUES ('1009', 'Acer Liquid Z530 (Black, 16 GB)', '10500', '8877');
INSERT INTO COALESCE (PID, PNAME, DPRICE, EAST, WEST, HPHONE) VALUES ('1010', 'Acer Z630S (Black & Gold, 32 GB)', '8600', 'Y', 'Y', '5566');
INSERT INTO COALESCE (PID, PNAME, SPRICE, BPHONE, CPHONE, HPHONE) VALUES ('1011', 'HTC Desire 828 Dual Sim(Dark Grey, 16 GB)', '17200', '3331', '3332', '2223');
INSERT INTO COALESCE (PID, PNAME, APRICE, SPRICE, WEST) VALUES ('1012', 'HTC Desire 828 Dual Sim (Pearl White, 16 GB)', '25000', '27000', 'Y');
INSERT INTO COALESCE (PID, PNAME, APRICE, SOUTH) VALUES ('1013', 'Micromax Canvas Pulse 4G (Grey, 16 GB)', '12200', 'Y');
INSERT INTO COALESCE (PID, PNAME, SPRICE, NORTH, SOUTH, EAST, WEST, CPHONE) VALUES ('1014', 'Micromax Canvas Pulse 4G (Black, 16 GB)', '14500', 'Y', 'Y', 'Y', 'Y', '44447');
INSERT INTO COALESCE (PID, PNAME, DPRICE, SOUTH, EAST, WEST) VALUES ('1015', 'Micromax Canvas Pulse 4G (White, 16 GB)', '16500', 'Y', 'Y', 'Y');
INSERT INTO COALESCE (PID, PNAME, DPRICE, BPHONE, CPHONE) VALUES ('1016', 'Letv Le 1S (Gold, 16 GB)', '17000', '5566', '3475');
INSERT INTO COALESCE (PID, PNAME, SPRICE, SOUTH, WEST, HPHONE) VALUES ('1017', 'Letv Le 1S (Gold, 32 GB)', '16000', 'Y', 'Y', '55667');
INSERT INTO COALESCE (PID, PNAME, APRICE, EAST, WEST, HPHONE) VALUES ('1018', 'Letv Le 1S (Black, 16 GB)', '13450', 'Y', 'Y', '7763');
INSERT INTO COALESCE (PID, PNAME, SPRICE, EAST) VALUES ('1019', 'Letv Le 1S (White, 32 GB)', '12342', 'Y');

create table NEAREST (c1 INT, c2 varchar(10), c3 INT);

insert into NEAREST VALUES (1,'y',1);
insert into NEAREST VALUES (1,'y',100);
insert into NEAREST VALUES (2,'z', 1);
insert into NEAREST VALUES (2,'z',100);
insert into NEAREST VALUES (2,'z',300);
insert into NEAREST VALUES (1, 'y',110);
insert into NEAREST VALUES (1, 'y',140);
insert into NEAREST VALUES (1, 'y',160);
insert into NEAREST VALUES (1, 'y',200);
insert into NEAREST VALUES (1, 'y',210);
insert into NEAREST VALUES (1, 'y',211);
insert into NEAREST VALUES (2, 'z',150);
insert into NEAREST VALUES (2, 'z',250);
insert into NEAREST VALUES (2, 'z',170);
insert into NEAREST VALUES (2, 'z',175);
insert into NEAREST VALUES (2, 'z',177);
insert into NEAREST VALUES (2, 'z',179);

create table new (c1 INT, c2 INT, c3 INT, old varchar(10), new varchar(10));

create table blankTableA (c1 INT, c2 INT);

insert into blanktableA values(1,1);
insert into blanktableA values(2,2);
insert into blanktableA values(null,null);
insert into blanktableA values(null,null);
insert into blanktableA values(null,null);
insert into blanktableA values(3,3);
insert into blanktableA values(4,4);
insert into blanktableA values(null,null);
insert into blanktableA values(5,5);
insert into blanktableA values(null,null);
insert into blanktableA values(null,6);

CREATE TABLE blankTableB (c1 float(7,2), c2 float(7,2));

insert into blankTableB values(1.01,1.01);
insert into blankTableB values(1.02,1.02);
insert into blankTableB values(1.03,1.03);
insert into blankTableB values(1.04,1.04);
insert into blankTableB values(1.05,1.05);
insert into blankTableB values(1.06,1.06);
insert into blankTableB values(null,1.07);
insert into blankTableB values(1.08,1.08);
insert into blankTableB values(null,null);
insert into blankTableB values(1.09,1.09);
insert into blankTableB values(1.10,null);

CREATE TABLE HOBBY (HOBBYID INT, HOBBY CHAR(16), WALLETID  INT);

INSERT INTO HOBBY VALUES (1,'Windsurfing',1);
INSERT INTO HOBBY VALUES (2,'Fishing',2);
INSERT INTO HOBBY VALUES (3,'Swimming',3);
INSERT INTO HOBBY VALUES (4,'Shopping',4);
INSERT INTO HOBBY VALUES (5,'Bowling',5);
INSERT INTO HOBBY VALUES (6,'Reading',6);
INSERT INTO HOBBY VALUES (7,'Dancing',7);
INSERT INTO HOBBY VALUES (8,'Traveling',8);
INSERT INTO HOBBY VALUES (9,'Bungee Jumping',9);
INSERT INTO HOBBY VALUES (10,'Horse Riding',10);
INSERT INTO HOBBY VALUES (11,'Bowling',11);
INSERT INTO HOBBY VALUES (12,'Astrology',12);
INSERT INTO HOBBY VALUES (13,'Hang Gliding',13);

CREATE TABLE DEPT (
 DEPTNO              INT (2),
 DNAME               varchar(12),
 LOC                 varchar(10),
 PWD				 varchar(20),
 CONSTRAINT DEPT_PRIMARY_KEY PRIMARY KEY (DEPTNO));

INSERT INTO DEPT VALUES (10,'ACCOUNTING','NEW YORK','r50mpm');
INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS','a12recmpm');
INSERT INTO DEPT VALUES (30,'SALES','CHICAGO','sales@2017');
INSERT INTO DEPT VALUES (40,'OPERATIONS','BOSTON','opr@123');


CREATE TABLE REPLACEDEPT (
 DEPTNO              INT (2),
 DNAME               varchar(12),
 LOC                 varchar(10),
 CONSTRAINT REPLACEDEPT_PRIMARY_KEY PRIMARY KEY (DEPTNO));

INSERT INTO REPLACEDEPT VALUES (10,'Finance','PUNE');
INSERT INTO REPLACEDEPT VALUES (20,'Forest','Odisha');
INSERT INTO REPLACEDEPT VALUES (50,'Tourism','Rajasthan');
INSERT INTO REPLACEDEPT VALUES (60,'Planning','Mumbai');


CREATE TABLE DEMODEPT1 as select * from DEPT;
ALTER TABLE DEMODEPT1 MODIFY COLUMN DEPTNO INT;
  
INSERT INTO DEMODEPT1 VALUES (50,'A','A',null);
INSERT INTO DEMODEPT1 VALUES (60,'B','B',null);
INSERT INTO DEMODEPT1 VALUES (70,'C','C',null);
INSERT INTO DEMODEPT1 VALUES (80,'D','D',null);
INSERT INTO DEMODEPT1 VALUES (90,'E','E',null);
INSERT INTO DEMODEPT1 VALUES (100,'F','F',null);

CREATE TABLE DEMODEPT2 as select * from DEPT;
ALTER TABLE DEMODEPT2 MODIFY COLUMN DEPTNO INT;

INSERT INTO DEMODEPT2 VALUES (110,'A1','A1',null);
INSERT INTO DEMODEPT2 VALUES (111,'B1','B1',null);
INSERT INTO DEMODEPT2 VALUES (112,'C1','C1',null);
INSERT INTO DEMODEPT2 VALUES (113,'D1','D1',null);
INSERT INTO DEMODEPT2 VALUES (114,'E1','E1',null);
INSERT INTO DEMODEPT2 VALUES (115,'F1','F1',null);


CREATE TABLE EMP (
 EMPNO               INT(4) NOT NULL,
 ENAME               varchar(12),
 JOB                 varchar(20),
 MGR                 INT(4) ,
 HIREDATE            datetime,
 SAL                 FLOAT(7,2),
 COMM                FLOAT(7,2),
 DEPTNO              INT(2) NOT NULL,
 BONUSID	         INT,
 `USER NAME`		 varchar(20),
 PWD				 varchar(20), 
 CONSTRAINT EMP_FOREIGN_KEY_deptno FOREIGN KEY (DEPTNO) REFERENCES DEPT (DEPTNO),
 CONSTRAINT EMP_PRIMARY_KEY_empno PRIMARY KEY (EMPNO),
 CONSTRAINT EMP_FOREIGN_KEY_mgr FOREIGN KEY (MGR) REFERENCES EMP (EMPNO),
 CONSTRAINT CHK_PWD CHECK (PWD>5));

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10,1);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30,1);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10,3);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20,4);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30,6);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30,4);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30,5);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30,2);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30,1);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20,4);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20,2);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7788,'SCOTT','ANALYST',7566,'1982-12-09',3000,NULL,20,3);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7876,'ADAMS','CLERK',7788,'1983-01-12',1100,NULL,20,1);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10,2);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7949,'ALEX','MANAGER',7698,'1982-01-24',1250,500,30,5);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7945,'AARUSH','SALESMAN',7902,'1980-02-14',1350,2700,30,NULL);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7415,'AARAV','CLERK',7902,'1981-12-31',3350,NULL,10,null);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7919,'HOFFMAN','MANAGER',7566,'1982-03-24',4150,NULL,30,3);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7920,'GRASS','SALESMAN',7919,'1980-02-14',2575,2700,30,5);
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BONUSID) VALUES (7421,'THOMAS','CLERK',7920,'1981-07-19',1750,NULL,10,1);

update emp set `user name` = ename;

update emp set pwd = (select pwd from dept where emp.deptno = dept.deptno);
UPDATE EMP SET PWD=NULL WHERE EMPNO=7415;
UPDATE EMP SET PWD='ABC' WHERE EMPNO=7945;

CREATE TABLE BONUS (
 ID INT PRIMARY KEY,
 RATE float);

INSERT INTO BONUS VALUES(1,.5);
INSERT INTO BONUS VALUES(2,.75);
INSERT INTO BONUS VALUES(3,.25);
INSERT INTO BONUS VALUES(4,.15);
INSERT INTO BONUS VALUES(5,.55);
INSERT INTO BONUS VALUES(6,.54);
INSERT INTO BONUS VALUES(7,.34);
INSERT INTO BONUS VALUES(8,.14);
INSERT INTO BONUS VALUES(9,.27);
INSERT INTO BONUS VALUES(10,.32);

CREATE TABLE SALGRADE (
 GRADE               INT,
 LOSAL               INT,
 HISAL               INT);

INSERT INTO SALGRADE VALUES (1,700,1200);
INSERT INTO SALGRADE VALUES (2,1201,1400);
INSERT INTO SALGRADE VALUES (3,1401,2000);
INSERT INTO SALGRADE VALUES (4,2001,3000);
INSERT INTO SALGRADE VALUES (5,3001,4000);
INSERT INTO SALGRADE VALUES (6,4001,5000);
INSERT INTO SALGRADE VALUES (7,5001,6000);
INSERT INTO SALGRADE VALUES (8,6001,7000);
INSERT INTO SALGRADE VALUES (9,7001,8000);
INSERT INTO SALGRADE VALUES (10,8001,9999);

CREATE TABLE DUMMY (
 DUMMY               INT );

INSERT INTO DUMMY VALUES (0);

CREATE TABLE CUSTOMER (
 CUSTID              INT (6) NOT NULL,
 NAME                varchar(45),
 ADDRESS             varchar(40),
 CITY                varchar(30),
 STATE               varchar(2),
 ZIP                 varchar(9),
 AREA                INT (3),
 PHONE               varchar(9),
 REPID               INT (4) NOT NULL,
 CREDITLIMIT         float (9,2),
 COMMENTS            text,
 CONSTRAINT CUSTOMER_PRIMARY_KEY PRIMARY KEY (CUSTID),
 CONSTRAINT CUSTID_ZERO CHECK (CUSTID > 0));

CREATE TABLE ORD  (
 ORDID               INT (4) NOT NULL,
 ORDERDATE           datetime,
 COMMPLAN            varchar(1),
 CUSTID              INT (6) NOT NULL,
 SHIPDATE            datetime,
 TOTAL               float (8,2),
 CONSTRAINT TOTAL_ZERO CHECK (TOTAL >= 0),
 CONSTRAINT ORD_FOREIGN_KEY FOREIGN KEY (CUSTID) REFERENCES CUSTOMER (CUSTID),
 CONSTRAINT ORD_PRIMARY_KEY PRIMARY KEY (ORDID));

CREATE TABLE ITEM  (
 ORDID               INT (4) NOT NULL,
 ITEMID              INT (4) NOT NULL,
 PRODID              INT (6),
 ACTUALPRICE         float (8,2),
 QTY                 INT (8),
 ITEMTOT             float (8,2),
 CONSTRAINT ITEM_FOREIGN_KEY FOREIGN KEY (ORDID) REFERENCES ORD (ORDID),
 CONSTRAINT ITEM_PRIMARY_KEY PRIMARY KEY (ORDID,ITEMID));

CREATE TABLE PRODUCT (
 PRODID              INT (6),
 DESCRIP             varchar(30),
 CONSTRAINT PRODUCT_PRIMARY_KEY PRIMARY KEY (PRODID));

CREATE TABLE PRICE (
 PRODID              INT (6) NOT NULL,
 STDPRICE            float (8,2),
 MINPRICE            float (8,2),
 STARTDATE           datetime,
 ENDDATE             datetime);

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('96711', 'CA', '7844', '598-6609',
 'JOCKSPORTS',
 '100', '5000', 'BELMONT', '415', '345 VIEWRIDGE',
 'Very friendly people to work with -- sales rep likes to be called Mike.');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('94061', 'CA', '7521', '368-1223',
 'TKB SPORT SHOP',
 '101', '10000', 'REDWOOD CITY', '415', '490 BOLI RD.',
 'Rep called 5/8 about change in order - contact shipping.');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('95133', 'CA', '7654', '644-3341',
 'VOLLYRITE',
 '102', '7000', 'BURLINGAME', '415', '9722 HAMILTON',
 'Company doing heavy promotion beginning 10/89. Prepare for large orders during
 winter.');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('97544', 'CA', '7521', '677-9312',
 'JUST TENNIS',
 '103', '3000', 'BURLINGAME', '415', 'HILLVIEW MALL',
 'Contact rep about new line of tennis rackets.');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('93301', 'CA', '7499', '996-2323',
 'EVERY MOUNTAIN',
 '104', '10000', 'CUPERTINO', '408', '574 SURRY RD.',
 'Customer with high market share (23%) due to aggressive advertising.');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('91003', 'CA', '7844', '376-9966',
 'K + T SPORTS',
 '105', '5000', 'SANTA CLARA', '408', '3476 EL PASEO',
 'Tends to order large amounts of merchandise at once. Accounting is considering
 raising their credit limit. Usually pays on time.');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('94301', 'CA', '7521', '364-9777',
 'SHAPE UP',
 '106', '6000', 'PALO ALTO', '415', '908 SEQUOIA',
 'Support intensive. Orders small amounts (< 800) of merchandise at a time.');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('93301', 'CA', '7499', '967-4398',
 'WOMENS SPORTS',
 '107', '10000', 'SUNNYVALE', '408', 'VALCO VILLAGE',
 'First sporting goods store geared exclusively towards women. Unusual promotion
al style and very willing to take chances towards new products!');

INSERT INTO CUSTOMER (ZIP, STATE, REPID, PHONE, NAME, CUSTID, CREDITLIMIT,
  CITY, AREA, ADDRESS, COMMENTS)
VALUES ('55649', 'MN', '7844', '566-9123',
 'NORTH WOODS HEALTH AND FITNESS SUPPLY CENTER',
 '108', '8000', 'HIBBING', '612', '98 LONE PINE WAY', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('101.4', '1987-01-08', '610', '1987-01-07', '101', 'A');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('45', '1987-01-11', '611', '1987-01-11', '102', 'B');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('5860', '1987-01-20', '612', '1987-01-15', '104', 'C');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('2.4', '1986-05-30', '601', '1986-05-01', '106', 'A');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('56', '1986-06-20', '602', '1986-06-05', '102', 'B');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('698', '1986-06-30', '604', '1986-06-15', '106', 'A');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('8324', '1986-07-30', '605', '1986-07-14', '106', 'A');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('3.4', '1986-07-30', '606', '1986-07-14', '100', 'A');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('97.5', '1986-08-15', '609', '1986-08-01', '100', 'B');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('5.6', '1986-07-18', '607', '1986-07-18', '104', 'C');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('35.2', '1986-07-25', '608', '1986-07-25', '104', 'C');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('224', '1986-06-05', '603', '1986-06-05', '102', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('4450', '1987-03-12', '620', '1987-03-12', '100', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('6400', '1987-02-01', '613', '1987-02-01', '108', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('23940', '1987-02-05', '614', '1987-02-01', '102', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('764', '1987-02-10', '616', '1987-02-03', '103', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('1260', '1987-02-04', '619', '1987-02-22', '104', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('46370', '1987-03-03', '617', '1987-02-05', '105', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('710', '1987-02-06', '615', '1987-02-01', '107', null);

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('3510.5', '1987-03-06', '618', '1987-02-15', '102', 'A');

INSERT INTO ORD (TOTAL, SHIPDATE, ORDID, ORDERDATE, CUSTID, COMMPLAN)
 VALUES ('730', '1987-01-01', '621', '1987-03-15', '100', 'A');


INSERT INTO ITEM (QTY, PRODID, ORDID, ITEMTOT, ITEMID, ACTUALPRICE)
 VALUES ('1', '100890', '610', '58', '3', '58');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '1', '100861', '611', '45', '1', '45');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '100', '100860', '612', '3000', '1', '30');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '1', '200376', '601', '2.4', '1', '2.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '20', '100870', '602', '56', '1', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '3', '100890', '604', '174', '1', '58');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '2', '100861', '604', '84', '2', '42');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '10', '100860', '604', '440', '3', '44');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '4', '100860', '603', '224', '2', '56');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '1', '100860', '610', '35', '1', '35');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '3', '100870', '610', '8.4', '2', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '200', '200376', '613', '440', '4', '2.2');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '444', '100860', '614', '15540', '1', '35');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '1000', '100870', '614', '2800', '2', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '20', '100861', '612', '810', '2', '40.5');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('150', '101863', '612', '1500', '3', '10');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('10', '100860', '620', '350', '1', '35');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('1000', '200376', '620', '2400', '2', '2.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('500', '102130', '620', '1700', '3', '3.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ( '100', '100871', '613', '560', '1', '5.6');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('200', '101860', '613', '4800', '2', '24');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('150', '200380', '613', '600', '3', '4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '102130', '619', '340', '3', '3.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('50', '100860', '617', '1750', '1', '35');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '100861', '617', '4500', '2', '45');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('1000', '100871', '614', '5600', '3', '5.6');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('10', '100861', '616', '450', '1', '45');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('50', '100870', '616', '140', '2', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('2', '100890', '616', '116', '3', '58');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('10', '102130', '616', '34', '4', '3.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('10', '200376' , '616', '24', '5', '2.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '200380', '619', '400', '1', '4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '200376', '619', '240', '2', '2.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('4', '100861', '615', '180', '1', '45');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('1', '100871', '607', '5.6', '1', '5.6');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '100870', '615', '280', '2', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('500', '100870', '617', '1400', '3', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('500', '100871', '617', '2800', '4', '5.6');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('500', '100890', '617', '29000', '5', '58');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '101860', '617', '2400', '6', '24');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('200', '101863', '617', '2500', '7', '12.5');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '102130', '617', '340', '8', '3.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('200', '200376', '617', '480', '9', '2.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('300', '200380', '617', '1200', '10', '4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('5', '100870', '609', '12.5', '2', '2.5');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('1', '100890', '609', '50', '3', '50');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('23', '100860', '618', '805', '1', '35');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('50', '100861', '618', '2255.5', '2', '45.11');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('10', '100870', '618', '450', '3', '45');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('10', '100861', '621', '450', '1', '45');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '100870', '621', '280', '2', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('50', '100871', '615', '250', '3', '5');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('1', '101860', '608', '24', '1', '24');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('2', '100871', '608', '11.2', '2', '5.6');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('1', '100861', '609', '35', '1', '35');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('1', '102130', '606', '3.4', '1', '3.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '100861', '605', '4500', '1', '45');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('500', '100870', '605', '1400', '2', '2.8');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('5', '100890', '605', '290', '3', '58');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('50', '101860', '605', '1200', '4', '24');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '101863', '605', '900', '5', '9');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('10', '102130', '605', '34', '6', '3.4');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('100', '100871', '612', '550', '4', '5.5');

INSERT INTO ITEM ( QTY , PRODID , ORDID , ITEMTOT , ITEMID , ACTUALPRICE)
 VALUES ('50', '100871', '619', '280', '4', '5.6');


INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('4.8', '1985-01-01', '100871', '3.2', '1985-12-01');

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('58', '1985-01-01', '100890', '46.4', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('54', '1984-06-01', '100890', '40.5', '1984-05-31');

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('35', '1986-06-01', '100860', '28', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('32', '1986-01-01', '100860', '25.6', '1986-05-31');

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('30', '1985-01-01', '100860', '24', '1985-12-31');

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('45', '1986-06-01', '100861', '36', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('42', '1986-01-01', '100861', '33.6', '1986-05-31');

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('39', '1985-01-01', '100861', '31.2', '1985-12-31');

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('2.8', '1986-01-01', '100870', '2.4', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('2.4', '1985-01-01', '100870', '1.9', '1985-12-01');

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('5.6', '1986-01-01', '100871', '4.8', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('24', '1985-02-15', '101860', '18', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('12.5', '1985-02-15', '101863', '9.4', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('3.4', '1985-08-18', '102130', '2.8', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('2.4', '1986-10-15', '200376', '1.75', null);

INSERT INTO PRICE (STDPRICE, STARTDATE, PRODID, MINPRICE, ENDDATE)
 VALUES ('4', '1986-10-15', '200380', '3.2', null);

CREATE INDEX PRICE_INDEX ON PRICE(PRODID, STARTDATE);

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('100860', 'ACE TENNIS RACKET I');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('100861', 'ACE TENNIS RACKET II');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('100870', 'ACE TENNIS BALLS-3 PACK');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('100871', 'ACE TENNIS BALLS-6 PACK');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('100890', 'ACE TENNIS NET');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('101860', 'SP TENNIS RACKET');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('101863', 'SP JUNIOR RACKET');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('102130', 'RH: "GUIDE TO TENNIS"');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('200376', 'SB ENERGY BAR-6 PACK');

INSERT INTO PRODUCT (PRODID, DESCRIP)
 VALUES ('200380', 'SB VITA SNACK-6 PACK');


CREATE VIEW SALES AS
SELECT REPID, ORD.CUSTID, CUSTOMER.NAME CUSTNAME, PRODUCT.PRODID,
DESCRIP PRODNAME, SUM(ITEMTOT) AMOUNT
FROM ORD, ITEM, CUSTOMER, PRODUCT
WHERE ORD.ORDID = ITEM.ORDID
AND ORD.CUSTID = CUSTOMER.CUSTID
AND ITEM.PRODID = PRODUCT.PRODID
GROUP BY REPID, ORD.CUSTID, NAME, PRODUCT.PRODID, DESCRIP;

CREATE TABLE LOCATION(
LOCATIONID INT(4),
LOCATIONNAME varchar(10),
CONSTRAINT LOCATIONID_PRIMARY_KEY PRIMARY KEY (LOCATIONID));

INSERT INTO LOCATION VALUES (1,'NEW YORK');
INSERT INTO LOCATION VALUES (2,'DALLAS');
INSERT INTO LOCATION VALUES (3,'CHICAGO');
INSERT INTO LOCATION VALUES (4,'BOSTON');
INSERT INTO LOCATION VALUES (5,upper('California'));
INSERT INTO LOCATION VALUES (6,upper('Florida'));
INSERT INTO LOCATION VALUES (7,upper('Indiana'));
INSERT INTO LOCATION VALUES (8,upper('Maryland'));
INSERT INTO LOCATION VALUES (9,upper('Nevada'));
INSERT INTO LOCATION VALUES (10,upper('London'));
INSERT INTO LOCATION VALUES (11,upper('Geneva'));
INSERT INTO LOCATION VALUES (12,upper('roma'));
INSERT INTO LOCATION VALUES (13,upper('sydney'));
INSERT INTO LOCATION VALUES (14,upper('tokyo'));
INSERT INTO LOCATION VALUES (15,upper('toronto'));
INSERT INTO LOCATION VALUES (16,upper('venice'));
INSERT INTO LOCATION VALUES (17,upper('singapore'));
INSERT INTO LOCATION VALUES (18,upper('beijing'));
INSERT INTO LOCATION VALUES (19,upper('new delhi'));
INSERT INTO LOCATION VALUES (20,upper('mumbai'));



 CREATE TABLE DEPT1 (
 DEPTNO        INT(4) NOT NULL,
 DNAME           varchar(20),
 LOCATIONID INT(3),
 CONSTRAINT DEPT1_PRIMARY_KEY1 PRIMARY KEY (DEPTNO));

INSERT INTO DEPT1 VALUES (10,'ACCOUNTING','1');
INSERT INTO DEPT1 VALUES (20,'RESEARCH','2');
INSERT INTO DEPT1 VALUES (30,'SALES','3');
INSERT INTO DEPT1 VALUES (40,'OPERATIONS','4');
INSERT INTO DEPT1 VALUES (50,'PURCHASE','5');
INSERT INTO DEPT1 VALUES (60,'PRODUCTION','6');
INSERT INTO DEPT1 VALUES (70,'CONTROLS','7');
INSERT INTO DEPT1 VALUES (80,upper('Operations Research'),'8');
INSERT INTO DEPT1 VALUES (90,'FINANCE','1');
INSERT INTO DEPT1 VALUES (100,'IT','2');
INSERT INTO DEPT1 VALUES (110,'IT SUPPORT','3');
INSERT INTO DEPT1 VALUES (120,'SHIPPING','4');
INSERT INTO DEPT1 VALUES (130,'IT HELPDESK','1');
INSERT INTO DEPT1 VALUES (140,'RETAIL SALES','2');
INSERT INTO DEPT1 VALUES (150,'IT NETWORK','3');
INSERT INTO DEPT1 VALUES (160,'PUBLIC RELATIONS','4');
INSERT INTO DEPT1 VALUES (170,upper('Materials Science'),'1');
INSERT INTO DEPT1 VALUES (180,upper('Career Services'),'2');
INSERT INTO DEPT1 VALUES (190,upper('Commercial'),'5');
INSERT INTO DEPT1 VALUES (200,upper('Economics'),'6');
insert into dept1 values(201,'HRD',5);

CREATE TABLE EMP1 (
 EMPNO          INT(4) NOT NULL,
 ENAME          varchar(12),
 JOB            varchar(20),
 MGR            INT(4),
 HIREDATE      datetime,
 SAL            float(7,2),
 COMM           float(7,2),
 DEPTNO         INT(4) NOT NULL,
 HOBBYID 		char(20),
 BONUSID		INT,
 CONSTRAINT EMP1_FOREIGN_KEY1 FOREIGN KEY (DEPTNO) REFERENCES DEPT1 (DEPTNO),
 CONSTRAINT EMP1_PRIMARY_KEY1 PRIMARY KEY (EMPNO),
 CONSTRAINT EMP1_SELF_KEY1 FOREIGN KEY (MGR) REFERENCES EMP1 (EMPNO));


INSERT INTO EMP1 VALUES (7839,'KING','PRESIDENT',NULL,'1981-11-17 04:20:24',5000,NULL,10,'Windsurfing',1);
INSERT INTO EMP1 VALUES (7698,'BLAKE','MANAGER',7839,'1981-05-01 05:54:43',2850,NULL,30,'Fishing',3);
INSERT INTO EMP1 VALUES (7782,'CLARK','MANAGER',7839,'1981-06-09 02:12:12',2450,NULL,10,'Swimming',5);
INSERT INTO EMP1 VALUES (7566,'JONES','MANAGER',7839,'1981-04-02 12:45:19',2975,NULL,20,'Shopping',7);
INSERT INTO EMP1 VALUES (7654,'MARTIN','SALESMAN',7698,'1981-09-28 14:26:00',1250,1400,30,'Fishing',4);
INSERT INTO EMP1 VALUES (7499,'ALLEN','SALESMAN',7698,'1981-02-20 07:30:00',1600,300,30,'Bowling',8);
INSERT INTO EMP1 VALUES (7844,'TURNER','SALESMAN',7698,'1981-09-08 08:45:00',1500,0,30,NULL,10);
INSERT INTO EMP1 VALUES (7900,'JAMES','CLERK',7698,'1981-12-03 09:25:00',950,NULL,30,'Swimming',8);
INSERT INTO EMP1 VALUES (7521,'WARD','SALESMAN',7698,'1981-02-22 10:15:00',1250,500,30,'Windsurfing',3);
INSERT INTO EMP1 VALUES (7902,'FORD','ANALYST',7566,'1981-12-03 11:00:00',3000,NULL,20,NULL,2);
INSERT INTO EMP1 VALUES (7369,'SMITH','CLERK',7902,'1980-12-17 17:36:00',800,NULL,20,NULL,1);
INSERT INTO EMP1 VALUES (7788,'SCOTT','ANALYST',7566,'1982-12-09 16:12:00',3000,NULL,20,'Fishing',1);
INSERT INTO EMP1 VALUES (7876,'ADAMS','CLERK',7788,'1983-01-12 18:33:00',1100,NULL,20,'Swimming',4);
INSERT INTO EMP1 VALUES (7934,'MILLER','CLERK',7782,'1982-01-23 20:20:00',1300,NULL,10,'Shopping',3);
INSERT INTO EMP1 VALUES (5001,'AARON','SALESMAN',7902,'1981-11-17 04:29:24',4500,1200,60,'Reading',9);
INSERT INTO EMP1 VALUES (5002,upper('Alexander'),'MANAGER',7369,'1981-05-01 05:12:43',2950,NULL,70,'Dancing',10);
INSERT INTO EMP1 VALUES (5003,upper('Brooke'),'CLERK',5002,'1981-06-09 02:17:12',2222,NULL,100,'Traveling',10);
INSERT INTO EMP1 VALUES (6001,upper('Bruce'),upper('Personal assistant'),5002,'1981-04-02 12:35:19',4975,NULL,80,'Bungee Jumping',6);
INSERT INTO EMP1 VALUES (6002,upper('Christopher'),upper('Personal assistant'),7844,'1981-09-28 14:26:00',4250,NULL,180,'Horse Riding',3);
INSERT INTO EMP1 VALUES (6003,upper('Clive'),upper('Assistant'),7698,'1981-02-20 07:40:00',3600,NULL,120,'Windsurfing',1);
INSERT INTO EMP1 VALUES (7005,upper('Dirk'),upper('Assistant'),7698,'1981-09-08 08:15:00',1500,NULL,60,'Horse Riding',6);
INSERT INTO EMP1 VALUES (7006,upper('Eli'),upper('Personal assistant'),7521,'1981-12-03 09:35:00',5400,NULL,70,'Fishing',7);
INSERT INTO EMP1 VALUES (7007,upper('Ely'),upper('Assistant'),7788,'1981-02-22 10:10:00',5250,NULL,140,'Fishing',7);
INSERT INTO EMP1 VALUES (8009,upper('Shelley'),'MANAGER',7839,'1981-12-03 11:00:00',6000,NULL,180,NULL,1);
INSERT INTO EMP1 VALUES (8003,upper('Thomas'),upper('Personal assistant'),8009,'1980-12-17 17:36:00',4900,NULL,50,NULL,2);
INSERT INTO EMP1 VALUES (7388,upper('Troy'),'ANALYST',8009,'1982-12-09 16:12:00',4100,NULL,160,'Bowling',5);
INSERT INTO EMP1 VALUES (7877,upper('Stephen'),upper('Assistant'),7788,'1983-01-12 18:33:00',1100,NULL,130,'Bowling',9);
INSERT INTO EMP1 VALUES (4934,upper('Sherlock'),'CLERK',8009,'1982-01-23 20:20:00',1600,NULL,40,'Fishing',1);
INSERT INTO EMP1 VALUES (2099,upper('Sherlock'),'CLERK',8009,'1982-01-23 20:22:00',1600,NULL,40,'Bowling',6);
INSERT INTO EMP1 VALUES (2877,upper('Stephen'),upper('Assistant'),7788,'1983-01-12 18:35:00',1100,NULL,40,'Bowling',3);
INSERT INTO EMP1 VALUES (3000,'Aaron','Salesman',7877,'1981-11-17 04:29:24',4500,1200,60,'Bowling',4);
INSERT INTO EMP1 VALUES (3001,('Alexander'),'Manager',7369,'1981-05-01 05:12:43',2950,NULL,90,'Bungee Jumping',1);
INSERT INTO EMP1 VALUES (3002,('Brooke'),'Clerk',5002,'1981-06-09 02:17:12',2222,NULL,50,'Reading',3);
INSERT INTO EMP1 VALUES (3003,('Bruce'),('Personal Assistant'),5002,'1981-04-02 12:35:19',4975,NULL,120,'Fishing',5);
INSERT INTO EMP1 VALUES (3467,('Christopher'),('Personal Assistant'),7844,'1981-09-28 14:26:00',4250,NULL,190,'Reading',7);
INSERT INTO EMP1 VALUES (3267,('Clive'),('Assistant'),5002,'1981-02-20 07:40:00',3600,NULL,50,'Bungee Jumping',8);
INSERT INTO EMP1 VALUES (3598,('Dirk'),('Assistant'),7698,'1981-09-08 08:15:00',1500,NULL,60,NULL,6);
INSERT INTO EMP1 VALUES (3189,('Eli'),('Personal Assistant'),3001,'1981-12-03 09:35:00',5400,NULL,30,'Fishing',1);
INSERT INTO EMP1 VALUES (3745,lower('Ely'),lower('Assistant'),7788,'1981-02-22 10:10:00',5250,NULL,150,'Astrology',2);
INSERT INTO EMP1 VALUES (3244,lower('Shelley'),'manager',7839,'1981-12-03 11:00:00',6000,NULL,170,'Fishing',4);
INSERT INTO EMP1 VALUES (9822,lower('Troy'),'analyst',3000,'1982-12-09 16:12:00',3100,NULL,40,'Bungee Jumping',6);
INSERT INTO EMP1 VALUES (9341,lower('Thomas'),lower('Personal assistant'),9822,'1980-12-17 17:36:00',4900,NULL,200,NULL,1);
INSERT INTO EMP1 VALUES (9874,lower('Stephen'),lower('Assistant'),3001,'1983-01-12 18:33:00',1100,NULL,170,NULL,9);
INSERT INTO EMP1 VALUES (9452,lower('Sherlock'),'clerk',9822,'1982-01-23 20:20:00',1600,NULL,130,NULL,4);
INSERT INTO EMP1 VALUES (9434,lower('Sherlock'),'clerk',9874,'1982-01-23 20:22:00',1600,NULL,40,NULL,5);
INSERT INTO EMP1 VALUES (9277,lower('Stephen'),lower('Assistant'),3467,'1983-01-12 18:35:00',1100,NULL,110,NULL,4);
INSERT INTO EMP1 VALUES (6345,lower('Jay'),'analyst',8009,'1982-12-09 17:12:00',-3100,NULL,50,NULL,null);
INSERT INTO EMP1 VALUES (6774,lower('Joe'),lower('Assistant'),7788,'1983-01-13 18:33:00',-1100,NULL,190,'Astrology',null);
INSERT INTO EMP1 VALUES (6342,lower('Joel'),'clerk',8009,'1982-01-23 22:20:00',-1600,NULL,50,NULL,null);
INSERT INTO EMP1 VALUES (6980,lower('Louis'),'clerk',8009,'1982-01-23 21:22:00',-1600,NULL,30,NULL,null);
INSERT INTO EMP1 VALUES (6843,lower('Matthew'),lower('Assistant'),7788,'1983-01-12 19:35:00',-1100,NULL,100,NULL,null);
INSERT INTO EMP1 VALUES (1000,'Alice','Manager',7839,'1983-08-12 19:35:00',9000,NULL,150,'Hang Gliding',1);
INSERT INTO EMP1 VALUES (1001,'Victor','Assistant Manager',1000,'1983-12-25 11:35:00',8000,NULL,150,'Hang Gliding',4);
INSERT INTO EMP1 VALUES (1002,'Jack','Assistant',1001,'1983-12-25 11:35:00',7000,NULL,150,NULL,4);
INSERT INTO EMP1 VALUES (1003,'William','Assistant',1001,'1984-12-30 12:00:00',7000,NULL,150,'Hang Gliding',1);
INSERT INTO EMP1 VALUES (1004,'Rose','Assistant Manager',1000,'1985-01-30 12:24:00',8000,NULL,150,NULL,7);
INSERT INTO EMP1 VALUES (1005,'Kate','Assistant Analyst',7388,'1985-01-30 12:24:00',3000,NULL,160,NULL,9);
INSERT INTO EMP1 VALUES (1006,'William','Salesman',7388,'1980-02-13 21:00:00',23700,1200,160,NULL,8);
INSERT INTO EMP1 VALUES (1007,'Matthew','Salesman',1005,'1980-02-28 21:00:00',4700,1200,160,'Hang Gliding',3);
INSERT INTO EMP1 VALUES (1008,'MAI','SALESGIRL',1000,'2001-12-25 11:35:00',8000,111,150,'Traveling',2);
INSERT INTO EMP1 VALUES (1009,'ZARIA','SALESGIRL',1001,'2002-12-25 11:35:00',7000,555,150,'Traveling',6);
INSERT INTO EMP1 VALUES (1010,'MAYA','SALESGIRL',1001,'2003-12-30 12:00:00',7000,120,150,'Traveling',7);
INSERT INTO EMP1 VALUES (1011,'ROSE','SALESGIRL',1000,'2004-01-30 12:24:00',18000,250,150,'Traveling',3);
INSERT INTO EMP1 VALUES (1012,'KATE','SALESGIRL',7388,'2005-01-30 12:24:00',3000,900,160,'Traveling',9);
INSERT INTO EMP1 VALUES (1013,'TINA','SALESGIRL',7388,'2006-02-13 21:00:00',13700,2400,160,'Traveling',10);
INSERT INTO EMP1 VALUES (1014,'MARY','SALESGIRL',1005,'2007-02-28 21:00:00',20000,1550,160,'Traveling',1);
INSERT INTO EMP1 VALUES (1015,'TESSA','SALESGIRL',1005,'2008-02-28 21:00:00',14700,1100,160,'Traveling',5);
INSERT INTO EMP1 VALUES (1016,'STEVEN','Assistant',1004,'1983-01-12 18:35:00',-9500,NULL,40,NULL,null);


CREATE TABLE EMP2(
 EMPNO          INT(4) NOT NULL,
 ENAME          varchar(12),
 JOB            varchar(20),
 HIREDATE      datetime,
 SAL            float(7,2),
 COMM           float(7,2),
 DEPTNO         INT(4) NOT NULL,
 HOBBYID		char(20),
 BONUSID		INT,
 CONSTRAINT EMP2_FOREIGN_KEY2 FOREIGN KEY (DEPTNO) REFERENCES DEPT1 (DEPTNO),
 CONSTRAINT EMP2_PRIMARY_KEY2 PRIMARY KEY (EMPNO));

insert into emp2 select empno,ename,job,hiredate,sal,comm,deptno,hobbyid,BONUSID from emp1;

create table regexpr(C1 varchar(40));

INSERT INTO regexpr VALUES ('abcde');
INSERT INTO regexpr VALUES ('12345');
INSERT INTO regexpr VALUES ('1a4A5');
INSERT INTO regexpr VALUES ('12a45');
INSERT INTO regexpr VALUES ('12aBC');
INSERT INTO regexpr VALUES ('12abc');
INSERT INTO regexpr VALUES ('12ab5');
INSERT INTO regexpr VALUES ('12aa5');
INSERT INTO regexpr VALUES ('12AB5');
INSERT INTO regexpr VALUES ('ABCDE');
INSERT INTO regexpr VALUES ('123-5');
INSERT INTO regexpr VALUES ('12.45');
INSERT INTO regexpr VALUES ('1a4b5');
INSERT INTO regexpr VALUES ('1 3 5');
INSERT INTO regexpr VALUES ('1  45');
INSERT INTO regexpr VALUES ('1   5');
INSERT INTO regexpr VALUES ('a  b  c  d');
INSERT INTO regexpr VALUES ('a b  c   d    e');
INSERT INTO regexpr VALUES ('a              e');
INSERT INTO regexpr VALUES ('Steven');
INSERT INTO regexpr VALUES ('Stephen');
INSERT INTO regexpr VALUES ('STEVEN');
INSERT INTO regexpr VALUES ('STEPHEN');
INSERT INTO regexpr VALUES ('111.222.3333');
INSERT INTO regexpr VALUES ('222.333.4444');
INSERT INTO regexpr VALUES ('333.444.5555');
INSERT INTO regexpr VALUES ('abcdefabcdefabcxyz');
INSERT INTO regexpr VALUES ('SA/1001 SA/1002 SA/1003');
INSERT INTO regexpr VALUES ('sa/1001 sa/1002 sa/1003 sa/1004');
INSERT INTO regexpr VALUES ('Sa/1001 Sa/1002 Sa/1003 Sa/1004 Sa/1005');
	

create table temp1
(col1 INT(2),
 col2 varchar(25)
);

insert into temp1 values(1,'25%');
insert into temp1 values(2,'1.st%');
insert into temp1 values(3,'30.12%');
insert into temp1 values(4,'12^4');
insert into temp1 values(5,'1^2^3');
insert into temp1 values(6,'56*12*.12');
insert into temp1 values(7,'1st INT');
insert into temp1 values(8,'Rs. 1000');
insert into temp1 values(9,'$5000');
insert into temp1 values(10,'ABB+');
insert into temp1 values(11,'_ABB');
insert into temp1 values(12,'A_BB');
insert into temp1 values(13,'CNN');
insert into temp1 values(14,'C_N_N');
insert into temp1 values(15,'CN_N');
insert into temp1 values(16,'ABB_');
insert into temp1 values(17,'AB_B');
insert into temp1 values(18,'%ABB');
insert into temp1 values(19,'A%B%B');
insert into temp1 values(20,'L&T');
insert into temp1 values(21,'L_&_T');
insert into temp1 values(22,'ABB-200');
insert into temp1 values(23,'ABB:200');
insert into temp1 values(24,'ABB_200');
insert into temp1 values(25,'ABB/200/300');
insert into temp1 values(26,'AC/100, AC/200, AC/300');
insert into temp1 values(27,'A_B\C');
insert into temp1 values(28,'A_B_\C');
insert into temp1 values(29,'A\_BC');


create table sort
(	
 no varchar(10),
 no1 char(10)
);

insert into sort values ('1','1'), ('2','2'), ('3','3'), ('4','4'), ('5','5'), ('6','6'), ('7','7'), ('8','8'), ('9','9'), ('10','10'), ('11','11'), ('12','12'), ('19','19'), ('18','18'), ('13','13'), ('14','14'), ('20','20'), ('27','27'), ('29','29'), ('21','21'), ('22','22'), ('23','23'), ('31','31'), ('45','45'), ('39','39'), ('40','40'), ('400','400'), ('300','300'), ('200','200'), ('100','100'), ('-1','-1'), ('-2','-2'), ('-3','-3'), ('01','01'), ('03','03'), ('02','02');	


create table tableA
(col1 INT,
col2 INT);

insert into tablea values (1,2), (3,4), (5,6), (7,8), (9,10), (11,12), (13,14);


create table tableB
(col3 INT,
col4 INT);

insert into tableb values (5,7), (3,8), (1,4), (8,7), (Null,10), (11,12);

create database iF NOT EXISTS user01;
use user01
drop table IF EXISTS Results;
drop table IF EXISTS Riders;
drop table IF EXISTS Stages;
drop table IF EXISTS Teams;
drop table IF EXISTS Countries;

create table Countries (
    name char(40),
    country_id char(3) primary key,
    area_sqkm integer,
    population integer
);

create table Teams (
    team_id char(3) primary key,
    name char(30), 
    country_id char(3) references Countries(country_id),
    description char(100), 
    manager char(40)
);

create table Stages (
    stage_id char(3) primary key,
    took_place date,
    start_loc char(40),
    end_loc char(40),
    distance float,
    description char(40)
);

create table Riders (
    rider_id char(4) primary key,
    name char(40), 
    team_id char(3) references Teams(team_id),
    year_born integer, 
    height_cms integer,
    weight_kgs float,
    country_id char(3) references Countries(country_id),
    bmi float
);

create table Results (
    stage_id char(3) references Stages(stage_id),
    rider_id char(4) references Riders(rider_id),
    time_seconds integer
);

insert into Countries values('Argentina', 'ARG', 2780400, 38747150);
insert into Countries values('Australia', 'AUS', 7682300, 21050000);
insert into Countries values('Austria', 'AUT', 83858, 8189444);
insert into Countries values('Belarus', 'BLR', 207600, 9755106);
insert into Countries values('Belgium', 'BEL', 30528, 11007020);
insert into Countries values('Canada', 'CAN', 9970610, 33390141);
insert into Countries values('Croatia', 'CRO', 56538, 4551338);
insert into Countries values('Denmark', 'DEN', 43094, 5471590);
insert into Countries values('Spain', 'ESP', 506030, 45200737);
insert into Countries values('Estonia', 'EST', 45100, 1329697);
insert into Countries values('France', 'FRA', 551500, 60495540);
insert into Countries values('United Kingdom', 'GBR', 242900, 60776238);
insert into Countries values('Germany', 'GER', 357022, 82689210);
insert into Countries values('Hungary', 'HUN', 93032, 10097730);
insert into Countries values('Ireland', 'IRL', 70273, 4147901);
insert into Countries values('Iceland', 'ISL', 103000, 309672);
insert into Countries values('Italy', 'ITA', 301318, 58092740);
insert into Countries values('Japan', 'JPN', 377873, 128084700);
insert into Countries values('Kazakhstan', 'KAZ', 2724900, 14825110);
insert into Countries values('Luxembourg', 'LUX', 2586, 509074);
insert into Countries values('Morocco', 'MAR', 446550, 31478460);
insert into Countries values('Mexico', 'MEX', 1958201, 107029400);
insert into Countries values('Netherlands', 'NED', 41528, 16423431);
insert into Countries values('New Zealand', 'NZL', 268021, 4430440);
insert into Countries values('Norway', 'NOR', 385155, 4751236);
insert into Countries values('Poland', 'POL', 312685, 38529560);
insert into Countries values('Portugal', 'POR', 91982, 10494500);
insert into Countries values('Romania', 'ROM', 238391, 21711470);
insert into Countries values('South Africa', 'RSA', 1221037, 47431830);
insert into Countries values('Switzerland', 'SUI', 41285, 7952600);
insert into Countries values('Russia', 'RUS', 17098242, 143201600);
insert into Countries values('Slovenia', 'SLO', 20256, 2066814);
insert into Countries values('Slovakia', 'SVK', 49033, 5400908);
insert into Countries values('Sweden', 'SWE', 449964, 9041262);
insert into Countries values('Ukraine', 'UKR', 603700, 46480700);
insert into Countries values('United States', 'USA', 9629091, 301140000);


insert into Stages values('S0', '2012-06-30', 'Liege', 'Liege', 6.4, 'Individual time trial');
insert into Stages values('S1', '2012-07-01', 'Liege', 'Seraing', 198, 'Flat stage');
insert into Stages values('S2', '2012-07-02', 'Vise', 'Tournai',  207.5,  'Flat stage');
insert into Stages values('S3', '2012-07-03', 'Orchies', 'Boulogne-sur-Mer', 197, 'Medium-mountain stage');
insert into Stages values('S4', '2012-07-04', 'Abbeville', 'Rouen', 214.5, 'Flat stage');
insert into Stages values('S5', '2012-07-05', 'Rouen', 'Saint-Quentin', 196.5, 'Flat stage');
insert into Stages values('S6', '2012-07-06', 'Epernay', 'Metz', 207.5, 'Flat stage');
insert into Stages values('S7', '2012-07-07', 'Tomblaine', 'La Planche des Belles Filles', 199, 'Medium-mountain stage');
insert into Stages values('S8', '2012-07-08', 'Belfort', 'Porrentruy', 157.5, 'Medium-mountain stage');
insert into Stages values('S9', '2012-07-09', 'Arc-et-Senans', 'Besancon', 41.5, 'Individual time trial');
insert into Stages values('S10','2012-07-11', 'Macon', 'Bellegarde-sur-Valserine', 194.5, 'Mountain stage');
insert into Stages values('S11','2012-07-12', 'Albertville', 'La Toussuire/Les Sybelles', 148, 'Mountain stage');
insert into Stages values('S12','2012-07-13', 'Saint-Jean-de-Maurienne', 'Annonay/Davezieux', 226, 'Medium-mountain stage');
insert into Stages values('S13','2012-07-14', 'Saint-Paul-Trois-Chateaux', 'Cap dAgde', 217, 'Flat stage');
insert into Stages values('S14','2012-07-15', 'Limoux', 'Foix', 191, 'Mountain stage');
insert into Stages values('S15','2012-07-16', 'Samatan', 'Pau', 158.5, 'Flat stage');
insert into Stages values('S16','2012-07-18', 'Pau', 'Bagneres-de-Luchon', 197, 'Mountain stage');
insert into Stages values('S17','2012-07-19', 'Bagneres-de-Luchon', 'Peyragudes', 143.5, 'Mountain stage');
insert into Stages values('S18','2012-07-20', 'Blagnac', 'Brive-la-Gaillarde', 222.5, 'Flat stage');
insert into Stages values('S19','2012-07-21', 'Bonneval', 'Chartres', 53.5, 'Individual time trial');
insert into Stages values('S20','2012-07-22', 'Rambouillet', 'Paris (Champs-Elysees)', 120, 'Flat stage');

insert into Teams values('ALM', 'Ag2r-La Mondiale', 'FRA', 'Personal insurance', 'Vincent Lavenu');
insert into Teams values('ARG', 'Argos-Shimano','NED', 'Dutch oil company, bicyle component manufacturer','Arend Scheppink');
insert into Teams values('AST', 'Astana','KAZ', 'Kazakh business consortium', 'Giuseppe Martinelli');
insert into Teams values('BMC', 'BMC Racing', 'USA', 'Swiss bicycle manufacturer', 'John Lelangue');
insert into Teams values('COF', 'Cofidis', 'FRA', 'Money-lending company', 'Yvon Sanquer');
insert into Teams values('EUC', 'Europcar', 'FRA', 'Car-rental company', 'Jean-Rene Bernaudeau');
insert into Teams values('EUS', 'Euskaltel-Euskadi', 'ESP', 'Basque telecoms and regional development agency', 'Miguel Madariaga');
insert into Teams values('FDJ', 'FDJ-BigMat', 'FRA', 'French national lottery and French building merchant', 'Marc Madiot');
insert into Teams values('GRS', 'Garmin-Sharp', 'USA', 'GPS technology manufacturer, technology provider and email and web security provider', 'Jonathan Vaughters');
insert into Teams values('KAT', 'Katusha', 'RUS', 'Russian business conglomerate', 'Serge Parsani');
insert into Teams values('LAM', 'Lampre-ISD', 'ITA', 'Sheet metal manufacturer, steel producer', 'Giuseppe Saronni');
insert into Teams values('LIQ', 'Liquigas-Cannondale', 'ITA', 'LPG distributor, American bicycle manufacturer', 'Roberto Amadio');
insert into Teams values('LTB', 'Lotto-Belisol', 'BEL', 'Pharmaceutical company, Belgian national lottery', 'Marc Sergeant');
insert into Teams values('MOV', 'Movistar', 'ESP', 'Spanish telecom provider', 'Eusebio Unzue');
insert into Teams values('OPQ', 'Omega Pharma-Quick Step', 'BEL', 'Belgian pharmaceutical company, floor coverings manufacturer', 'Patrick Lefevere');
insert into Teams values('OGE', 'Orica-GreenEdge', 'AUS', 'Chemicals and explosives provider for the mining industry', 'Shayne Bannan');
insert into Teams values('RAB', 'Rabobank', 'NED', 'Dutch bank', 'Erik Breukink');
insert into Teams values('RNT', 'RadioShack-Nissan', 'USA', 'Electronic goods retail chain/car manufacturer', 'Johan Bruyneel');
insert into Teams values('SAU', 'Saur-Sojasun', 'FRA', 'Environmental support group and innovative biological growth company', 'Stephane Heulot');
insert into Teams values('STB', 'Saxo Bank-Tinkoff Bank', 'DEN', 'Danish bank', 'Bjarne Riis');
insert into Teams values('SKY', 'Team Sky', 'GBR', 'Broadcast network', 'David Brailsford');
insert into Teams values('VCD', 'Vacansoleil-DCM', 'NED', 'Luxury camping holidays, Belgian farm supply company', 'Hilaire Van der Schueren');

insert into Riders values('R1','EVANS Cadel','BMC',1977,174,64,'AUS',21.1);
insert into Riders values('R2','BURGHARDT Marcus','BMC',1983,189,75,'GER',21);
insert into Riders values('R3','CUMMINGS Stephen','BMC',1981,189,73,'GBR',20.4);
insert into Riders values('R4','GILBERT Philippe','BMC',1982,179,67,'BEL',20.9);
insert into Riders values('R5','HINCAPIE George','BMC',1973,191,83,'USA',22.8);
insert into Riders values('R6','MOINARD Amael','BMC',1982,180,69,'FRA',21.3);
insert into Riders values('R7','QUINZIATO Manuel','BMC',1979,185,74,'ITA',21.6);
insert into Riders values('R8','SCHAR Michael','BMC',1986,196,74,'SUI',19.3);
insert into Riders values('R9','VAN GARDEREN Tejay','BMC',1988,186,72,'USA',20.8);
insert into Riders values('R10','SCHLECK Frank','RNT',1980,186,65,'LUX',18.8);
insert into Riders values('R11','CANCELLARA Fabian','RNT',1981,186,80,'SUI',23.1);
insert into Riders values('R12','GALLOPIN Tony','RNT',1988,180,70,'FRA',21.6);
insert into Riders values('R13','HORNER Christopher','RNT',1971,180,70,'USA',21.6);
insert into Riders values('R14','KLODEN Andreas','RNT',1975,183,63,'GER',18.8);
insert into Riders values('R15','MONFORT Maxime','RNT',1983,181,66,'BEL',20.1);
insert into Riders values('R16','POPOVYCH Yaroslav','RNT',1980,175,64,'UKR',20.9);
insert into Riders values('R17','VOIGT Jens','RNT',1971,189,76,'GER',21.3);
insert into Riders values('R18','ZUBELDIA Haimar','RNT',1977,179,68,'ESP',21.2);
insert into Riders values('R19','VOECKLER Thomas','EUC',1979,174,71,'FRA',23.5);
insert into Riders values('R20','ARASHIRO Yukiya','EUC',1984,170,64,'JPN',22.1);
insert into Riders values('R21','BERNAUDEAU Giovanni','EUC',1983,175,62,'FRA',20.2);
insert into Riders values('R22','GAUTIER Cyril','EUC',1987,168,64,'FRA',22.7);
insert into Riders values('R23','GENE Yohann','EUC',1981,175,67,'FRA',21.9);
insert into Riders values('R24','JEROME Vincent','EUC',1984,174,65,'FRA',21.5);
insert into Riders values('R25','KERN Christophe','EUC',1981,185,72,'FRA',21);
insert into Riders values('R26','MALACARNE Davide','EUC',1987,171,63,'ITA',21.5);
insert into Riders values('R27','ROLLAND Pierre','EUC',1986,184,67,'FRA',19.8);
insert into Riders values('R28','SANCHEZ Samuel','EUS',1978,175,65,'ESP',21.2);
insert into Riders values('R29','ASTARLOZA Mikel','EUS',1979,185,72,'ESP',21);
insert into Riders values('R30','AZANZA SOTO Jorge','EUS',1982,185,68,'ESP',19.9);
insert into Riders values('R31','IZAGUIRRE INSAUSTI Gorka','EUS',1987,null,null,'ESP',null);
insert into Riders values('R32','MARTINEZ Egoi','EUS',1978,181,70,'ESP',21.4);
insert into Riders values('R33','PEREZ MORENO Ruben','EUS',1981,173,65,'ESP',21.7);
insert into Riders values('R34','TXURRUKA Amets','EUS',1982,171,56,'ESP',19.2);
insert into Riders values('R35','URTASUN PEREZ Pablo','EUS',1980,null,null,'ESP',null);
insert into Riders values('R36','VERDUGO Gorka','EUS',1978,181,71,'ESP',21.7);
insert into Riders values('R37','SCARPONI Michele','LAM',1979,174,62,'ITA',20.5);
insert into Riders values('R38','BOLE Grega','LAM',1985,177,68,'SLO',21.7);
insert into Riders values('R39','HONDO Danilo','LAM',1974,184,73,'GER',21.6);
insert into Riders values('R40','KRIVTSOV Yuriy','LAM',1979,178,72,'UKR',22.7);
insert into Riders values('R41','LLOYD Matthew','LAM',1983,171,62,'AUS',21.2);
insert into Riders values('R42','MARZANO Marco','LAM',1980,171,58,'ITA',19.8);
insert into Riders values('R43','PETACCHI Alessandro','LAM',1974,185,70,'ITA',20.5);
insert into Riders values('R44','STORTONI Simone','LAM',1985,null,null,'ITA',null);
insert into Riders values('R45','VIGANO Davide','LAM',1984,182,67,'ITA',20.2);
insert into Riders values('R46','NIBALI Vincenzo','LIQ',1984,181,65,'ITA',19.8);
insert into Riders values('R47','BASSO Ivan','LIQ',1977,182,70,'ITA',21.1);
insert into Riders values('R48','CANUTI Federico','LIQ',1985,null,null,'ITA',null);
insert into Riders values('R49','KOREN Kristijan','LIQ',1986,null,null,'SLO',null);
insert into Riders values('R50','NERZ Dominik','LIQ',1989,null,null,'GER',null);
insert into Riders values('R51','OSS Daniel','LIQ',1987,190,75,'ITA',20.8);
insert into Riders values('R52','SAGAN Peter','LIQ',1990,184,73,'SVK',21.6);
insert into Riders values('R53','SZMYD Sylvester','LIQ',1978,179,60,'POL',18.7);
insert into Riders values('R54','VANOTTI Alessandro','LIQ',1980,185,70,'ITA',20.5);
insert into Riders values('R55','HESJEDAL Ryder','GRS',1980,187,73,'CAN',20.9);
insert into Riders values('R56','DANIELSON Thomas','GRS',1978,null,null,'USA',null);
insert into Riders values('R57','FARRAR Tyler','GRS',1984,183,73,'USA',21.8);
insert into Riders values('R58','HUNTER Robert','GRS',1977,178,72,'RSA',22.7);
insert into Riders values('R59','MARTIN Daniel','GRS',1986,175,59,'IRL',19.3);
insert into Riders values('R60','MILLAR David','GRS',1977,190,77,'GBR',21.3);
insert into Riders values('R61','VAN SUMMEREN Johan','GRS',1981,197,79,'BEL',20.4);
insert into Riders values('R62','VANDE VELDE Christian','GRS',1976,180,69,'USA',21.3);
insert into Riders values('R63','ZABRISKIE David','GRS',1979,183,67,'USA',20);
insert into Riders values('R64','PERAUD Jean-Christophe','ALM',1977,172,62,'FRA',21);
insert into Riders values('R65','BOUET Maxime','ALM',1986,184,67,'FRA',19.8);
insert into Riders values('R66','CHEREL Mikael','ALM',1986,185,65,'FRA',19);
insert into Riders values('R67','DUPONT Hubert','ALM',1980,174,58,'FRA',19.2);
insert into Riders values('R68','HINAULT Sabastien','ALM',1974,175,63,'FRA',20.6);
insert into Riders values('R69','KADRI Blel','ALM',1986,176,66,'FRA',21.3);
insert into Riders values('R70','MINARD Sabastien','ALM',1982,177,65,'FRA',20.7);
insert into Riders values('R71','RIBLON Christophe','ALM',1981,180,65,'FRA',20.1);
insert into Riders values('R72','ROCHE Nicolas','ALM',1984,178,70,'IRL',22.1);
insert into Riders values('R73','TAARAMAE Rein','COF',1987,184,67,'EST',19.8);
insert into Riders values('R74','DI GREGORIO Remy','COF',1985,180,67,'FRA',20.7);
insert into Riders values('R75','DUMOULIN Samuel','COF',1980,159,56,'FRA',22.2);
insert into Riders values('R76','EDET Nicolas','COF',1987,176,60,'FRA',19.4);
insert into Riders values('R77','FOUCHARD Julien','COF',1986,187,74,'FRA',21.2);
insert into Riders values('R78','GHYSELINCK Jan','COF',1988,183,74,'BEL',22.1);
insert into Riders values('R79','MATE MARDONES Luis Angel','COF',1984,177,69,'ESP',22);
insert into Riders values('R80','MONCOUTIE David','COF',1975,180,69,'FRA',21.3);
insert into Riders values('R81','ZINGLE Romain','COF',1987,175,67,'BEL',21.9);
insert into Riders values('R82','COPPEL Jerome','SAU',1986,174,68,'FRA',22.5);
insert into Riders values('R83','DELAPLACE Anthony','SAU',1989,181,65,'FRA',19.8);
insert into Riders values('R84','ENGOULVENT Jimmy','SAU',1979,187,82,'FRA',23.4);
insert into Riders values('R85','FEILLU Brice','SAU',1985,188,66,'FRA',18.7);
insert into Riders values('R86','JEANDESBOZ Fabrice','SAU',1984,179,69,'FRA',21.5);
insert into Riders values('R87','LEMOINE Cyril','SAU',1983,181,70,'FRA',21.4);
insert into Riders values('R88','LEVARLET Guillaume','SAU',1985,183,67,'FRA',20);
insert into Riders values('R89','MARINO Jean Marc','SAU',1983,177,65,'FRA',20.7);
insert into Riders values('R90','SIMON Julien','SAU',1985,176,65,'FRA',21);
insert into Riders values('R91','WIGGINS Bradley','SKY',1980,189,76,'GBR',21.3);
insert into Riders values('R92','BOASSON HAGEN Edvald','SKY',1987,null,null,'NOR',null);
insert into Riders values('R93','CAVENDISH Mark','SKY',1985,175,70,'GBR',22.9);
insert into Riders values('R94','EISEL Bernhard','SKY',1981,183,74,'AUT',22.1);
insert into Riders values('R95','FROOME Christopher','SKY',1985,186,72,'GBR',20.8);
insert into Riders values('R96','KNEES Christian','SKY',1981,194,81,'GER',21.5);
insert into Riders values('R97','PORTE Richie','SKY',1985,172,62,'AUS',21);
insert into Riders values('R98','ROGERS Michael','SKY',1979,185,74,'AUS',21.6);
insert into Riders values('R99','SIVTSOV Kanstantsin','SKY',1982,183,68,'BLR',20.3);
insert into Riders values('R100','VAN DEN BROECK Jurgen','LTB',1983,183,68,'BEL',20.3);
insert into Riders values('R101','BAK Lars','LTB',1980,190,76,'DEN',21.1);
insert into Riders values('R102','DE GREEF Francis','LTB',1985,192,77,'BEL',20.9);
insert into Riders values('R103','GREIPEL Andre','LTB',1982,184,75,'GER',22.2);
insert into Riders values('R104','HANSEN Adam','LTB',1981,186,75,'AUS',21.7);
insert into Riders values('R105','HENDERSON Gregory','LTB',1976,187,75,'NZL',21.4);
insert into Riders values('R106','ROELANDTS Jurgen','LTB',1985,184,78,'BEL',23);
insert into Riders values('R107','SIEBERG Marcel','LTB',1982,198,80,'GER',20.4);
insert into Riders values('R108','VANENDERT Jelle','LTB',1985,184,62,'BEL',18.3);
insert into Riders values('R109','WESTRA Lieuwe','VCD',1982,185,74,'NED',21.6);
insert into Riders values('R110','BOECKMANS Kris','VCD',1987,180,74,'BEL',22.8);
insert into Riders values('R111','HOOGERLAND Johnny','VCD',1983,null,null,'NED',null);
insert into Riders values('R112','LARSSON Gustav','VCD',1980,195,77,'SWE',20.2);
insert into Riders values('R113','MARCATO Marco','VCD',1984,174,67,'ITA',22.1);
insert into Riders values('R114','POELS Wouter','VCD',1987,183,66,'NED',19.7);
insert into Riders values('R115','RUIJGH Rob','VCD',1986,175,63,'NED',20.6);
insert into Riders values('R116','VALLS FERRI Rafael','VCD',1987,171,59,'ESP',20.2);
insert into Riders values('R117','VAN HUMMEL Kenny Robert','VCD',1982,176,64,'NED',20.7);
insert into Riders values('R118','MENCHOV Denis','KAT',1978,180,65,'RUS',20.1);
insert into Riders values('R119','CARUSO Gianpaolo','KAT',1980,173,60,'ITA',20);
insert into Riders values('R120','FREIRE Oscar','KAT',1976,171,63,'ESP',21.5);
insert into Riders values('R121','GUSEV Vladimir','KAT',1982,176,67,'RUS',21.6);
insert into Riders values('R122','HORRACH Joan','KAT',1974,179,70,'ESP',21.8);
insert into Riders values('R123','KUCHYNSKI Aliaksandr','KAT',1979,null,null,'BLR',null);
insert into Riders values('R124','PAOLINI Luca','KAT',1977,174,66,'ITA',21.8);
insert into Riders values('R125','TROFIMOV Yury','KAT',1984,169,59,'RUS',20.7);
insert into Riders values('R126','VORGANOV Eduard','KAT',1982,178,66,'RUS',20.8);
insert into Riders values('R127','CASAR Sandy','FDJ',1979,179,63,'FRA',19.7);
insert into Riders values('R128','FEDRIGO Pierrick','FDJ',1978,172,66,'FRA',22.3);
insert into Riders values('R129','HUTAROVICH Yauheni','FDJ',1983,178,71,'BLR',22.4);
insert into Riders values('R130','LADAGNOUS Matthieu','FDJ',1984,182,73,'FRA',22);
insert into Riders values('R131','PINEAU Cedric','FDJ',1985,177,68,'FRA',21.7);
insert into Riders values('R132','PINOT Thibaut','FDJ',1990,180,63,'FRA',19.4);
insert into Riders values('R133','ROUX Anthony','FDJ',1987,189,70,'FRA',19.6);
insert into Riders values('R134','ROY Jeremy','FDJ',1983,186,70,'FRA',20.2);
insert into Riders values('R135','VICHOT Arthur','FDJ',1988,180,69,'FRA',21.3);
insert into Riders values('R136','GESINK Robert','RAB',1986,187,68,'NED',19.4);
insert into Riders values('R137','KRUIJSWIJK Steven','RAB',1987,178,66,'NED',20.8);
insert into Riders values('R138','MOLLEMA Bauke','RAB',1986,181,64,'NED',19.5);
insert into Riders values('R139','RENSHAW Mark','RAB',1982,179,72,'AUS',22.5);
insert into Riders values('R140','SANCHEZ Luis-Leon','RAB',1983,187,74,'ESP',21.2);
insert into Riders values('R141','TANKINK Bram','RAB',1978,181,71,'NED',21.7);
insert into Riders values('R142','TEN DAM Laurens','RAB',1980,184,67,'NED',19.8);
insert into Riders values('R143','TJALLINGII Maarten','RAB',1977,186,71,'NED',20.5);
insert into Riders values('R144','WYNANTS Maarten','RAB',1982,187,79,'BEL',22.6);
insert into Riders values('R145','VALVERDE Alejandro','MOV',1980,178,61,'ESP',19.3);
insert into Riders values('R146','COBO ACEBO Juan Jose','MOV',1981,175,62,'ESP',20.2);
insert into Riders values('R147','COSTA Rui Alberto','MOV',1986,183,69,'POR',20.6);
insert into Riders values('R148','ERVITI Imanol','MOV',1983,183,75,'ESP',22.4);
insert into Riders values('R149','GUTIERREZ Ivan','MOV',1978,181,71,'ESP',21.7);
insert into Riders values('R150','KARPETS Vladimir','MOV',1980,190,79,'RUS',21.9);
insert into Riders values('R151','KIRYIENKA Vasili','MOV',1981,null,null,'BLR',null);
insert into Riders values('R152','PLAZA MOLINA Ruben','MOV',1980,191,77,'ESP',21.1);
insert into Riders values('R153','ROJAS Jose Joaquin','MOV',1985,179,69,'ESP',21.5);
insert into Riders values('R154','CANTWELL Jonathan','STB',1992,null,null,'AUS',null);
insert into Riders values('R155','HAEDO Juan Jose','STB',1981,180,73,'ARG',22.5);
insert into Riders values('R156','KROON Karsten','STB',1976,180,67,'NED',20.7);
insert into Riders values('R157','LUND Anders','STB',1985,167,65,'DEN',23.3);
insert into Riders values('R158','MORKOV Michael','STB',1985,183,69,'DEN',20.6);
insert into Riders values('R159','NUYENS Nick','STB',1980,177,68,'BEL',21.7);
insert into Riders values('R160','PAULINHO Sergio Miguel Moreira','STB',1980,172,64,'POR',21.6);
insert into Riders values('R161','SORENSEN Chris Anker','STB',1984,null,null,'DEN',null);
insert into Riders values('R162','SORENSEN Nicki','STB',1975,182,71,'DEN',21.4);
insert into Riders values('R163','BRAJKOVIC Janez','AST',1983,175,65,'SLO',21.2);
insert into Riders values('R164','BOZIC Borut','AST',1980,180,67,'SLO',20.7);
insert into Riders values('R165','FOFONOV Dmitriy','AST',1976,175,65,'KAZ',21.2);
insert into Riders values('R166','GRIVKO Andriy','AST',1983,181,63,'UKR',19.2);
insert into Riders values('R167','IGLINSKIY Maxim','AST',1981,171,67,'KAZ',22.9);
insert into Riders values('R168','KASHECHKIN Andrey','AST',1980,185,70,'KAZ',20.5);
insert into Riders values('R169','KESSIAKOFF Fredrik','AST',1980,175,61,'SWE',19.9);
insert into Riders values('R170','KISERLOVSKI Robert','AST',1986,180,72,'CRO',22.2);
insert into Riders values('R171','VINOKOUROV Alexandre','AST',1973,177,68,'KAZ',21.7);
insert into Riders values('R172','LEIPHEIMER Levi','OPQ',1973,170,62,'USA',21.5);
insert into Riders values('R173','CHAVANEL Sylvain','OPQ',1979,180,70,'FRA',21.6);
insert into Riders values('R174','DE WEERT Kevin','OPQ',1982,182,70,'BEL',21.1);
insert into Riders values('R175','DEVENYNS Dries','OPQ',1983,176,66,'BEL',21.3);
insert into Riders values('R176','GRABSCH Bert','OPQ',1975,179,78,'GER',24.3);
insert into Riders values('R177','MARTIN Tony','OPQ',1985,185,75,'GER',21.9);
insert into Riders values('R178','PINEAU Jerome','OPQ',1980,176,71,'FRA',22.9);
insert into Riders values('R179','VELITS Martin','OPQ',1985,185,70,'SVK',20.5);
insert into Riders values('R180','VELITS Peter','OPQ',1985,181,63,'SVK',19.2);
insert into Riders values('R181','GERRANS Simon','OGE',1980,169,62,'AUS',21.7);
insert into Riders values('R182','ALBASINI Michael','OGE',1980,172,65,'SUI',22);
insert into Riders values('R183','COOKE Baden','OGE',1978,178,73,'AUS',23);
insert into Riders values('R184','GOSS Matthew Harley','OGE',1986,178,70,'AUS',22.1);
insert into Riders values('R185','IMPEY Daryl','OGE',1984,181,70,'RSA',21.4);
insert into Riders values('R186','LANCASTER Brett Daniel','OGE',1979,188,78,'AUS',22.1);
insert into Riders values('R187','LANGEVELD Sebastian','OGE',1985,178,67,'NED',21.1);
insert into Riders values('R188','OGRADY Stuart','OGE',1973,176,73,'AUS',23.6);
insert into Riders values('R189','WEENING Pieter','OGE',1981,186,66,'NED',19.1);
insert into Riders values('R190','KITTEL Marcel','ARG',1988,188,82,'GER',23.2);
insert into Riders values('R191','CURVERS Roy','ARG',1979,188,73,'NED',20.7);
insert into Riders values('R192','DE KORT Koen','ARG',1982,179,69,'NED',21.5);
insert into Riders values('R193','FROHLINGER Johannes','ARG',1985,173,62,'GER',20.7);
insert into Riders values('R194','GRETSCH Patrick','ARG',1987,187,69,'GER',19.7);
insert into Riders values('R195','HUGUET Yann','ARG',1984,177,66,'FRA',21.1);
insert into Riders values('R196','SPRICK Matthieu','ARG',1981,181,71,'FRA',21.7);
insert into Riders values('R197','TIMMER Albert','ARG',1985,186,71,'NED',20.5);
insert into Riders values('R198','VEELERS Tom','ARG',1984,184,75,'NED',22.2);

insert into Results values('S0','R1',450);
insert into Results values('S0','R2',482);
insert into Results values('S0','R3',451);
insert into Results values('S0','R4',446);
insert into Results values('S0','R5',453);
insert into Results values('S0','R6',463);
insert into Results values('S0','R7',461);
insert into Results values('S0','R8',462);
insert into Results values('S0','R9',443);
insert into Results values('S0','R10',471);
insert into Results values('S0','R11',433);
insert into Results values('S0','R12',462);
insert into Results values('S0','R13',467);
insert into Results values('S0','R14',452);
insert into Results values('S0','R15',455);
insert into Results values('S0','R16',469);
insert into Results values('S0','R17',452);
insert into Results values('S0','R18',457);
insert into Results values('S0','R19',466);
insert into Results values('S0','R20',471);
insert into Results values('S0','R21',478);
insert into Results values('S0','R22',479);
insert into Results values('S0','R23',477);
insert into Results values('S0','R24',490);
insert into Results values('S0','R25',469);
insert into Results values('S0','R26',479);
insert into Results values('S0','R27',478);
insert into Results values('S0','R28',473);
insert into Results values('S0','R29',456);
insert into Results values('S0','R30',474);
insert into Results values('S0','R31',466);
insert into Results values('S0','R32',483);
insert into Results values('S0','R33',495);
insert into Results values('S0','R34',485);
insert into Results values('S0','R35',468);
insert into Results values('S0','R36',494);
insert into Results values('S0','R37',470);
insert into Results values('S0','R38',485);
insert into Results values('S0','R39',461);
insert into Results values('S0','R40',483);
insert into Results values('S0','R41',498);
insert into Results values('S0','R42',485);
insert into Results values('S0','R43',469);
insert into Results values('S0','R44',478);
insert into Results values('S0','R45',495);
insert into Results values('S0','R46',451);
insert into Results values('S0','R47',462);
insert into Results values('S0','R48',476);
insert into Results values('S0','R49',455);
insert into Results values('S0','R50',470);
insert into Results values('S0','R51',461);
insert into Results values('S0','R52',457);
insert into Results values('S0','R53',467);
insert into Results values('S0','R54',459);
insert into Results values('S0','R55',451);
insert into Results values('S0','R56',464);
insert into Results values('S0','R57',454);
insert into Results values('S0','R58',466);
insert into Results values('S0','R59',457);
insert into Results values('S0','R60',451);
insert into Results values('S0','R61',463);
insert into Results values('S0','R62',455);
insert into Results values('S0','R63',459);
insert into Results values('S0','R64',456);
insert into Results values('S0','R65',464);
insert into Results values('S0','R66',499);
insert into Results values('S0','R67',477);
insert into Results values('S0','R68',478);
insert into Results values('S0','R69',461);
insert into Results values('S0','R70',471);
insert into Results values('S0','R71',462);
insert into Results values('S0','R72',458);
insert into Results values('S0','R73',455);
insert into Results values('S0','R74',480);
insert into Results values('S0','R75',479);
insert into Results values('S0','R76',480);
insert into Results values('S0','R77',477);
insert into Results values('S0','R78',464);
insert into Results values('S0','R79',490);
insert into Results values('S0','R80',472);
insert into Results values('S0','R81',481);
insert into Results values('S0','R82',458);
insert into Results values('S0','R83',473);
insert into Results values('S0','R84',469);
insert into Results values('S0','R85',474);
insert into Results values('S0','R86',474);
insert into Results values('S0','R87',458);
insert into Results values('S0','R88',484);
insert into Results values('S0','R89',494);
insert into Results values('S0','R90',479);
insert into Results values('S0','R91',440);
insert into Results values('S0','R92',444);
insert into Results values('S0','R93',456);
insert into Results values('S0','R94',465);
insert into Results values('S0','R95',449);
insert into Results values('S0','R96',454);
insert into Results values('S0','R97',455);
insert into Results values('S0','R98',458);
insert into Results values('S0','R99',458);
insert into Results values('S0','R100',461);
insert into Results values('S0','R101',470);
insert into Results values('S0','R102',475);
insert into Results values('S0','R103',456);
insert into Results values('S0','R104',461);
insert into Results values('S0','R105',453);
insert into Results values('S0','R106',478);
insert into Results values('S0','R107',461);
insert into Results values('S0','R108',473);
insert into Results values('S0','R109',453);
insert into Results values('S0','R110',472);
insert into Results values('S0','R111',480);
insert into Results values('S0','R112',457);
insert into Results values('S0','R113',456);
insert into Results values('S0','R114',457);
insert into Results values('S0','R115',465);
insert into Results values('S0','R116',477);
insert into Results values('S0','R117',476);
insert into Results values('S0','R118',446);
insert into Results values('S0','R119',488);
insert into Results values('S0','R120',469);
insert into Results values('S0','R121',457);
insert into Results values('S0','R122',475);
insert into Results values('S0','R123',475);
insert into Results values('S0','R124',471);
insert into Results values('S0','R125',475);
insert into Results values('S0','R126',468);
insert into Results values('S0','R127',462);
insert into Results values('S0','R128',476);
insert into Results values('S0','R129',482);
insert into Results values('S0','R130',454);
insert into Results values('S0','R131',483);
insert into Results values('S0','R132',457);
insert into Results values('S0','R133',460);
insert into Results values('S0','R134',455);
insert into Results values('S0','R135',467);
insert into Results values('S0','R136',459);
insert into Results values('S0','R137',463);
insert into Results values('S0','R138',454);
insert into Results values('S0','R139',477);
insert into Results values('S0','R140',460);
insert into Results values('S0','R141',458);
insert into Results values('S0','R142',468);
insert into Results values('S0','R143',463);
insert into Results values('S0','R144',463);
insert into Results values('S0','R145',468);
insert into Results values('S0','R146',477);
insert into Results values('S0','R147',458);
insert into Results values('S0','R148',466);
insert into Results values('S0','R149',459);
insert into Results values('S0','R150',464);
insert into Results values('S0','R151',458);
insert into Results values('S0','R152',454);
insert into Results values('S0','R153',466);
insert into Results values('S0','R154',470);
insert into Results values('S0','R155',467);
insert into Results values('S0','R156',473);
insert into Results values('S0','R157',496);
insert into Results values('S0','R158',457);
insert into Results values('S0','R159',453);
insert into Results values('S0','R160',457);
insert into Results values('S0','R161',471);
insert into Results values('S0','R162',466);
insert into Results values('S0','R163',455);
insert into Results values('S0','R164',471);
insert into Results values('S0','R165',469);
insert into Results values('S0','R166',448);
insert into Results values('S0','R167',465);
insert into Results values('S0','R168',472);
insert into Results values('S0','R169',459);
insert into Results values('S0','R170',475);
insert into Results values('S0','R171',459);
insert into Results values('S0','R172',461);
insert into Results values('S0','R173',440);
insert into Results values('S0','R174',470);
insert into Results values('S0','R175',462);
insert into Results values('S0','R176',459);
insert into Results values('S0','R177',456);
insert into Results values('S0','R178',464);
insert into Results values('S0','R179',469);
insert into Results values('S0','R180',450);
insert into Results values('S0','R181',462);
insert into Results values('S0','R182',453);
insert into Results values('S0','R183',472);
insert into Results values('S0','R184',462);
insert into Results values('S0','R185',455);
insert into Results values('S0','R186',444);
insert into Results values('S0','R187',455);
insert into Results values('S0','R188',456);
insert into Results values('S0','R189',458);
insert into Results values('S0','R190',454);
insert into Results values('S0','R191',499);
insert into Results values('S0','R192',460);
insert into Results values('S0','R193',473);
insert into Results values('S0','R194',445);
insert into Results values('S0','R195',470);
insert into Results values('S0','R196',478);
insert into Results values('S0','R197',467);
insert into Results values('S0','R198',467);
insert into Results values('S1','R1',17899);
insert into Results values('S1','R2',17954);
insert into Results values('S1','R3',18160);
insert into Results values('S1','R4',17899);
insert into Results values('S1','R5',18026);
insert into Results values('S1','R6',17975);
insert into Results values('S1','R7',18160);
insert into Results values('S1','R8',18080);
insert into Results values('S1','R9',17899);
insert into Results values('S1','R10',17899);
insert into Results values('S1','R11',17899);
insert into Results values('S1','R12',17922);
insert into Results values('S1','R13',17954);
insert into Results values('S1','R14',17899);
insert into Results values('S1','R15',17899);
insert into Results values('S1','R16',18026);
insert into Results values('S1','R17',18080);
insert into Results values('S1','R18',17899);
insert into Results values('S1','R19',17899);
insert into Results values('S1','R20',17984);
insert into Results values('S1','R21',17922);
insert into Results values('S1','R22',17922);
insert into Results values('S1','R23',18160);
insert into Results values('S1','R24',18026);
insert into Results values('S1','R25',17984);
insert into Results values('S1','R26',17975);
insert into Results values('S1','R27',17899);
insert into Results values('S1','R28',17899);
insert into Results values('S1','R29',17913);
insert into Results values('S1','R30',17944);
insert into Results values('S1','R31',18026);
insert into Results values('S1','R32',17939);
insert into Results values('S1','R33',18026);
insert into Results values('S1','R34',18080);
insert into Results values('S1','R35',18270);
insert into Results values('S1','R36',18270);
insert into Results values('S1','R37',17899);
insert into Results values('S1','R38',18160);
insert into Results values('S1','R39',17954);
insert into Results values('S1','R40',18239);
insert into Results values('S1','R41',18160);
insert into Results values('S1','R42',18026);
insert into Results values('S1','R43',17944);
insert into Results values('S1','R44',17975);
insert into Results values('S1','R45',18026);
insert into Results values('S1','R46',17899);
insert into Results values('S1','R47',17899);
insert into Results values('S1','R48',17964);
insert into Results values('S1','R49',18026);
insert into Results values('S1','R50',17899);
insert into Results values('S1','R51',18026);
insert into Results values('S1','R52',17899);
insert into Results values('S1','R53',18026);
insert into Results values('S1','R54',18026);
insert into Results values('S1','R55',17899);
insert into Results values('S1','R56',17899);
insert into Results values('S1','R57',18111);
insert into Results values('S1','R58',18111);
insert into Results values('S1','R59',17899);
insert into Results values('S1','R60',18080);
insert into Results values('S1','R61',18026);
insert into Results values('S1','R62',17899);
insert into Results values('S1','R63',18160);
insert into Results values('S1','R64',17899);
insert into Results values('S1','R65',17975);
insert into Results values('S1','R66',17899);
insert into Results values('S1','R67',18160);
insert into Results values('S1','R68',17944);
insert into Results values('S1','R69',18160);
insert into Results values('S1','R70',18080);
insert into Results values('S1','R71',17922);
insert into Results values('S1','R72',17899);
insert into Results values('S1','R73',17899);
insert into Results values('S1','R74',18026);
insert into Results values('S1','R75',17899);
insert into Results values('S1','R76',18160);
insert into Results values('S1','R77',18160);
insert into Results values('S1','R78',18160);
insert into Results values('S1','R79',17984);
insert into Results values('S1','R80',18026);
insert into Results values('S1','R81',18026);
insert into Results values('S1','R82',17922);
insert into Results values('S1','R83',18080);
insert into Results values('S1','R84',18080);
insert into Results values('S1','R85',18080);
insert into Results values('S1','R86',17975);
insert into Results values('S1','R87',18026);
insert into Results values('S1','R88',18431);
insert into Results values('S1','R89',18303);
insert into Results values('S1','R90',18152);
insert into Results values('S1','R91',17899);
insert into Results values('S1','R92',17899);
insert into Results values('S1','R93',18026);
insert into Results values('S1','R94',18189);
insert into Results values('S1','R95',17984);
insert into Results values('S1','R96',18160);
insert into Results values('S1','R97',18160);
insert into Results values('S1','R98',17899);
insert into Results values('S1','R99',17899);
insert into Results values('S1','R100',17899);
insert into Results values('S1','R101',18160);
insert into Results values('S1','R102',18303);
insert into Results values('S1','R103',18160);
insert into Results values('S1','R104',18080);
insert into Results values('S1','R105',18160);
insert into Results values('S1','R106',18080);
insert into Results values('S1','R107',18160);
insert into Results values('S1','R108',17899);
insert into Results values('S1','R109',17916);
insert into Results values('S1','R110',18026);
insert into Results values('S1','R111',17922);
insert into Results values('S1','R112',18160);
insert into Results values('S1','R113',17899);
insert into Results values('S1','R114',17899);
insert into Results values('S1','R115',17920);
insert into Results values('S1','R116',17916);
insert into Results values('S1','R117',18026);
insert into Results values('S1','R118',17899);
insert into Results values('S1','R119',17922);
insert into Results values('S1','R120',17920);
insert into Results values('S1','R121',17899);
insert into Results values('S1','R122',18160);
insert into Results values('S1','R123',18026);
insert into Results values('S1','R124',18026);
insert into Results values('S1','R125',17922);
insert into Results values('S1','R126',17899);
insert into Results values('S1','R127',18021);
insert into Results values('S1','R128',18080);
insert into Results values('S1','R129',18026);
insert into Results values('S1','R130',17916);
insert into Results values('S1','R131',18026);
insert into Results values('S1','R132',17922);
insert into Results values('S1','R133',18160);
insert into Results values('S1','R134',18080);
insert into Results values('S1','R135',17899);
insert into Results values('S1','R136',17899);
insert into Results values('S1','R137',17922);
insert into Results values('S1','R138',17899);
insert into Results values('S1','R139',18026);
insert into Results values('S1','R140',18144);
insert into Results values('S1','R141',17954);
insert into Results values('S1','R142',17979);
insert into Results values('S1','R143',18144);
insert into Results values('S1','R144',18026);
insert into Results values('S1','R145',17899);
insert into Results values('S1','R146',17922);
insert into Results values('S1','R147',17916);
insert into Results values('S1','R148',18026);
insert into Results values('S1','R149',18026);
insert into Results values('S1','R150',18181);
insert into Results values('S1','R151',17939);
insert into Results values('S1','R152',17944);
insert into Results values('S1','R153',18239);
insert into Results values('S1','R154',18026);
insert into Results values('S1','R155',18160);
insert into Results values('S1','R156',18026);
insert into Results values('S1','R157',18026);
insert into Results values('S1','R158',18160);
insert into Results values('S1','R159',17922);
insert into Results values('S1','R160',18026);
insert into Results values('S1','R161',17922);
insert into Results values('S1','R162',18026);
insert into Results values('S1','R163',17899);
insert into Results values('S1','R164',18026);
insert into Results values('S1','R165',17944);
insert into Results values('S1','R166',17922);
insert into Results values('S1','R167',17984);
insert into Results values('S1','R168',17944);
insert into Results values('S1','R169',17975);
insert into Results values('S1','R170',17899);
insert into Results values('S1','R171',18160);
insert into Results values('S1','R172',17916);
insert into Results values('S1','R173',17899);
insert into Results values('S1','R174',18026);
insert into Results values('S1','R175',17899);
insert into Results values('S1','R176',18080);
insert into Results values('S1','R177',17899);
insert into Results values('S1','R178',18160);
insert into Results values('S1','R179',18152);
insert into Results values('S1','R180',18011);
insert into Results values('S1','R181',17899);
insert into Results values('S1','R182',17913);
insert into Results values('S1','R183',18026);
insert into Results values('S1','R184',18026);
insert into Results values('S1','R185',18026);
insert into Results values('S1','R186',18026);
insert into Results values('S1','R187',18026);
insert into Results values('S1','R188',18026);
insert into Results values('S1','R189',17899);
insert into Results values('S1','R190',18162);
insert into Results values('S1','R191',17975);
insert into Results values('S1','R192',17899);
insert into Results values('S1','R193',17975);
insert into Results values('S1','R194',18080);
insert into Results values('S1','R195',17944);
insert into Results values('S1','R196',18026);
insert into Results values('S1','R197',18160);
insert into Results values('S1','R198',18160);
insert into Results values('S2','R1',17819);
insert into Results values('S2','R2',17976);
insert into Results values('S2','R3',17839);
insert into Results values('S2','R4',17819);
insert into Results values('S2','R5',17819);
insert into Results values('S2','R6',17819);
insert into Results values('S2','R7',17949);
insert into Results values('S2','R8',17839);
insert into Results values('S2','R9',17819);
insert into Results values('S2','R10',17819);
insert into Results values('S2','R11',17819);
insert into Results values('S2','R12',17819);
insert into Results values('S2','R13',17819);
insert into Results values('S2','R14',17819);
insert into Results values('S2','R15',17819);
insert into Results values('S2','R16',17819);
insert into Results values('S2','R17',17819);
insert into Results values('S2','R18',17819);
insert into Results values('S2','R19',17839);
insert into Results values('S2','R20',17819);
insert into Results values('S2','R21',17819);
insert into Results values('S2','R22',17819);
insert into Results values('S2','R23',17839);
insert into Results values('S2','R24',17819);
insert into Results values('S2','R25',17839);
insert into Results values('S2','R26',17819);
insert into Results values('S2','R27',17819);
insert into Results values('S2','R28',17819);
insert into Results values('S2','R29',17819);
insert into Results values('S2','R30',17819);
insert into Results values('S2','R31',17819);
insert into Results values('S2','R32',17819);
insert into Results values('S2','R33',17819);
insert into Results values('S2','R34',17839);
insert into Results values('S2','R35',17819);
insert into Results values('S2','R36',17949);
insert into Results values('S2','R37',17819);
insert into Results values('S2','R38',17819);
insert into Results values('S2','R39',17819);
insert into Results values('S2','R40',17819);
insert into Results values('S2','R41',17839);
insert into Results values('S2','R42',17839);
insert into Results values('S2','R43',17819);
insert into Results values('S2','R44',17819);
insert into Results values('S2','R45',17819);
insert into Results values('S2','R46',17819);
insert into Results values('S2','R47',17819);
insert into Results values('S2','R48',17819);
insert into Results values('S2','R49',17819);
insert into Results values('S2','R50',17819);
insert into Results values('S2','R51',17848);
insert into Results values('S2','R52',17819);
insert into Results values('S2','R53',17839);
insert into Results values('S2','R54',17819);
insert into Results values('S2','R55',17819);
insert into Results values('S2','R56',17819);
insert into Results values('S2','R57',17819);
insert into Results values('S2','R58',17819);
insert into Results values('S2','R59',17819);
insert into Results values('S2','R60',17870);
insert into Results values('S2','R61',17819);
insert into Results values('S2','R62',17819);
insert into Results values('S2','R63',17839);
insert into Results values('S2','R64',17819);
insert into Results values('S2','R65',17819);
insert into Results values('S2','R66',17819);
insert into Results values('S2','R67',17819);
insert into Results values('S2','R68',17819);
insert into Results values('S2','R69',18081);
insert into Results values('S2','R70',17819);
insert into Results values('S2','R71',17819);
insert into Results values('S2','R72',17819);
insert into Results values('S2','R73',17819);
insert into Results values('S2','R74',17819);
insert into Results values('S2','R75',17819);
insert into Results values('S2','R76',17839);
insert into Results values('S2','R77',17819);
insert into Results values('S2','R78',17819);
insert into Results values('S2','R79',17819);
insert into Results values('S2','R80',17839);
insert into Results values('S2','R81',17819);
insert into Results values('S2','R82',17819);
insert into Results values('S2','R83',17819);
insert into Results values('S2','R84',17839);
insert into Results values('S2','R85',18414);
insert into Results values('S2','R86',17819);
insert into Results values('S2','R87',17819);
insert into Results values('S2','R88',17819);
insert into Results values('S2','R89',17819);
insert into Results values('S2','R90',17839);
insert into Results values('S2','R91',17819);
insert into Results values('S2','R92',17819);
insert into Results values('S2','R93',17819);
insert into Results values('S2','R94',17819);
insert into Results values('S2','R95',17819);
insert into Results values('S2','R96',17857);
insert into Results values('S2','R97',17839);
insert into Results values('S2','R98',17819);
insert into Results values('S2','R99',17819);
insert into Results values('S2','R100',17819);
insert into Results values('S2','R101',17839);
insert into Results values('S2','R102',17949);
insert into Results values('S2','R103',17819);
insert into Results values('S2','R104',17949);
insert into Results values('S2','R105',17819);
insert into Results values('S2','R106',17847);
insert into Results values('S2','R107',17887);
insert into Results values('S2','R108',17839);
insert into Results values('S2','R109',17819);
insert into Results values('S2','R110',17876);
insert into Results values('S2','R111',17819);
insert into Results values('S2','R112',17839);
insert into Results values('S2','R113',17819);
insert into Results values('S2','R114',17819);
insert into Results values('S2','R115',17819);
insert into Results values('S2','R116',17819);
insert into Results values('S2','R117',17819);
insert into Results values('S2','R118',17819);
insert into Results values('S2','R119',17839);
insert into Results values('S2','R120',17819);
insert into Results values('S2','R121',17819);
insert into Results values('S2','R122',17839);
insert into Results values('S2','R123',17839);
insert into Results values('S2','R124',17819);
insert into Results values('S2','R125',17819);
insert into Results values('S2','R126',17819);
insert into Results values('S2','R127',17819);
insert into Results values('S2','R128',17819);
insert into Results values('S2','R129',17819);
insert into Results values('S2','R130',17819);
insert into Results values('S2','R131',17839);
insert into Results values('S2','R132',17819);
insert into Results values('S2','R133',18081);
insert into Results values('S2','R134',17839);
insert into Results values('S2','R135',17819);
insert into Results values('S2','R136',17819);
insert into Results values('S2','R137',17819);
insert into Results values('S2','R138',17819);
insert into Results values('S2','R139',17819);
insert into Results values('S2','R140',18081);
insert into Results values('S2','R141',17819);
insert into Results values('S2','R142',17819);
insert into Results values('S2','R143',17819);
insert into Results values('S2','R144',17819);
insert into Results values('S2','R145',17819);
insert into Results values('S2','R146',17819);
insert into Results values('S2','R147',17819);
insert into Results values('S2','R148',17819);
insert into Results values('S2','R149',17819);
insert into Results values('S2','R150',17839);
insert into Results values('S2','R151',17819);
insert into Results values('S2','R152',17819);
insert into Results values('S2','R153',17819);
insert into Results values('S2','R154',17819);
insert into Results values('S2','R155',17819);
insert into Results values('S2','R156',17819);
insert into Results values('S2','R157',17819);
insert into Results values('S2','R158',17873);
insert into Results values('S2','R159',17819);
insert into Results values('S2','R160',17839);
insert into Results values('S2','R161',17819);
insert into Results values('S2','R162',17819);
insert into Results values('S2','R163',17819);
insert into Results values('S2','R164',17819);
insert into Results values('S2','R165',17819);
insert into Results values('S2','R166',17819);
insert into Results values('S2','R167',17819);
insert into Results values('S2','R168',17819);
insert into Results values('S2','R169',17819);
insert into Results values('S2','R170',17819);
insert into Results values('S2','R171',17839);
insert into Results values('S2','R172',17819);
insert into Results values('S2','R173',17819);
insert into Results values('S2','R174',17819);
insert into Results values('S2','R175',17819);
insert into Results values('S2','R176',17819);
insert into Results values('S2','R177',18081);
insert into Results values('S2','R178',17819);
insert into Results values('S2','R179',17819);
insert into Results values('S2','R180',17819);
insert into Results values('S2','R181',17819);
insert into Results values('S2','R182',17839);
insert into Results values('S2','R183',17819);
insert into Results values('S2','R184',17819);
insert into Results values('S2','R185',17819);
insert into Results values('S2','R186',17819);
insert into Results values('S2','R187',18212);
insert into Results values('S2','R188',17819);
insert into Results values('S2','R189',17819);
insert into Results values('S2','R190',18212);
insert into Results values('S2','R191',17839);
insert into Results values('S2','R192',17819);
insert into Results values('S2','R193',17839);
insert into Results values('S2','R194',17819);
insert into Results values('S2','R195',18212);
insert into Results values('S2','R196',18212);
insert into Results values('S2','R197',17949);
insert into Results values('S2','R198',17819);
insert into Results values('S3','R1',16979);
insert into Results values('S3','R2',16979);
insert into Results values('S3','R3',17425);
insert into Results values('S3','R4',17444);
insert into Results values('S3','R5',16979);
insert into Results values('S3','R6',17305);
insert into Results values('S3','R7',17380);
insert into Results values('S3','R8',16979);
insert into Results values('S3','R9',16979);
insert into Results values('S3','R10',16979);
insert into Results values('S3','R11',16979);
insert into Results values('S3','R12',17025);
insert into Results values('S3','R13',16979);
insert into Results values('S3','R14',16979);
insert into Results values('S3','R15',16979);
insert into Results values('S3','R16',17219);
insert into Results values('S3','R17',17305);
insert into Results values('S3','R18',16979);
insert into Results values('S3','R19',17425);
insert into Results values('S3','R20',16979);
insert into Results values('S3','R21',17425);
insert into Results values('S3','R22',17425);
insert into Results values('S3','R23',17425);
insert into Results values('S3','R24',17425);
insert into Results values('S3','R25',17425);
insert into Results values('S3','R26',17071);
insert into Results values('S3','R27',16979);
insert into Results values('S3','R28',16979);
insert into Results values('S3','R29',16979);
insert into Results values('S3','R30',17401);
insert into Results values('S3','R31',16979);
insert into Results values('S3','R32',16979);
insert into Results values('S3','R33',17212);
insert into Results values('S3','R34',17106);
insert into Results values('S3','R35',17964);
insert into Results values('S3','R36',17425);
insert into Results values('S3','R37',16979);
insert into Results values('S3','R38',17425);
insert into Results values('S3','R39',17425);
insert into Results values('S3','R40',17425);
insert into Results values('S3','R41',17425);
insert into Results values('S3','R42',17425);
insert into Results values('S3','R43',17425);
insert into Results values('S3','R44',17964);
insert into Results values('S3','R45',17212);
insert into Results values('S3','R46',16979);
insert into Results values('S3','R47',16979);
insert into Results values('S3','R48',17069);
insert into Results values('S3','R49',17212);
insert into Results values('S3','R50',17425);
insert into Results values('S3','R51',17452);
insert into Results values('S3','R52',16978);
insert into Results values('S3','R53',17053);
insert into Results values('S3','R54',17142);
insert into Results values('S3','R55',16979);
insert into Results values('S3','R56',17529);
insert into Results values('S3','R57',17518);
insert into Results values('S3','R58',17518);
insert into Results values('S3','R59',17283);
insert into Results values('S3','R60',17500);
insert into Results values('S3','R61',17615);
insert into Results values('S3','R62',17106);
insert into Results values('S3','R63',17518);
insert into Results values('S3','R64',16979);
insert into Results values('S3','R65',17425);
insert into Results values('S3','R66',17425);
insert into Results values('S3','R67',17106);
insert into Results values('S3','R68',17425);
insert into Results values('S3','R69',17425);
insert into Results values('S3','R70',17425);
insert into Results values('S3','R71',17106);
insert into Results values('S3','R72',16979);
insert into Results values('S3','R73',16979);
insert into Results values('S3','R74',16979);
insert into Results values('S3','R75',17425);
insert into Results values('S3','R76',17425);
insert into Results values('S3','R77',17425);
insert into Results values('S3','R78',17425);
insert into Results values('S3','R79',16979);
insert into Results values('S3','R80',17425);
insert into Results values('S3','R81',17401);
insert into Results values('S3','R82',16979);
insert into Results values('S3','R83',17425);
insert into Results values('S3','R84',17615);
insert into Results values('S3','R85',17967);
insert into Results values('S3','R86',17106);
insert into Results values('S3','R87',17417);
insert into Results values('S3','R88',17106);
insert into Results values('S3','R89',17417);
insert into Results values('S3','R90',17425);
insert into Results values('S3','R91',16979);
insert into Results values('S3','R92',16979);
insert into Results values('S3','R93',17425);
insert into Results values('S3','R94',17196);
insert into Results values('S3','R95',16979);
insert into Results values('S3','R96',17440);
insert into Results values('S3','R97',17106);
insert into Results values('S3','R98',16979);
insert into Results values('S3','R100',16979);
insert into Results values('S3','R101',17184);
insert into Results values('S3','R102',17425);
insert into Results values('S3','R103',16979);
insert into Results values('S3','R104',17415);
insert into Results values('S3','R105',16979);
insert into Results values('S3','R106',17191);
insert into Results values('S3','R107',17190);
insert into Results values('S3','R108',16979);
insert into Results values('S3','R109',17425);
insert into Results values('S3','R110',16979);
insert into Results values('S3','R111',17425);
insert into Results values('S3','R112',17425);
insert into Results values('S3','R113',16979);
insert into Results values('S3','R114',16979);
insert into Results values('S3','R115',16979);
insert into Results values('S3','R116',16979);
insert into Results values('S3','R117',17425);
insert into Results values('S3','R118',16979);
insert into Results values('S3','R119',17964);
insert into Results values('S3','R120',16979);
insert into Results values('S3','R121',17056);
insert into Results values('S3','R122',17212);
insert into Results values('S3','R123',17212);
insert into Results values('S3','R124',17228);
insert into Results values('S3','R125',17212);
insert into Results values('S3','R126',16979);
insert into Results values('S3','R127',17025);
insert into Results values('S3','R128',16979);
insert into Results values('S3','R129',17425);
insert into Results values('S3','R130',17425);
insert into Results values('S3','R131',17425);
insert into Results values('S3','R132',16979);
insert into Results values('S3','R133',17425);
insert into Results values('S3','R134',17425);
insert into Results values('S3','R135',17305);
insert into Results values('S3','R136',16979);
insert into Results values('S3','R137',16979);
insert into Results values('S3','R138',16979);
insert into Results values('S3','R139',17425);
insert into Results values('S3','R140',17615);
insert into Results values('S3','R141',17071);
insert into Results values('S3','R142',16979);
insert into Results values('S3','R143',17615);
insert into Results values('S3','R144',17425);
insert into Results values('S3','R145',16979);
insert into Results values('S3','R146',17615);
insert into Results values('S3','R147',16979);
insert into Results values('S3','R148',17401);
insert into Results values('S3','R149',17138);
insert into Results values('S3','R150',17425);
insert into Results values('S3','R151',17450);
insert into Results values('S3','R152',17212);
insert into Results values('S3','R154',17425);
insert into Results values('S3','R155',17417);
insert into Results values('S3','R156',17615);
insert into Results values('S3','R157',17425);
insert into Results values('S3','R158',17305);
insert into Results values('S3','R159',16979);
insert into Results values('S3','R160',17425);
insert into Results values('S3','R161',17106);
insert into Results values('S3','R162',17069);
insert into Results values('S3','R163',16979);
insert into Results values('S3','R164',17548);
insert into Results values('S3','R165',17425);
insert into Results values('S3','R166',16979);
insert into Results values('S3','R167',17116);
insert into Results values('S3','R168',16979);
insert into Results values('S3','R169',16979);
insert into Results values('S3','R170',16979);
insert into Results values('S3','R171',17036);
insert into Results values('S3','R172',16979);
insert into Results values('S3','R173',16979);
insert into Results values('S3','R174',17039);
insert into Results values('S3','R175',16979);
insert into Results values('S3','R176',17425);
insert into Results values('S3','R177',17615);
insert into Results values('S3','R178',17615);
insert into Results values('S3','R179',17115);
insert into Results values('S3','R180',16979);
insert into Results values('S3','R181',17615);
insert into Results values('S3','R182',16979);
insert into Results values('S3','R183',16979);
insert into Results values('S3','R184',17212);
insert into Results values('S3','R185',17100);
insert into Results values('S3','R186',17615);
insert into Results values('S3','R187',17615);
insert into Results values('S3','R188',17212);
insert into Results values('S3','R189',17212);
insert into Results values('S3','R190',17967);
insert into Results values('S3','R191',17967);
insert into Results values('S3','R192',17401);
insert into Results values('S3','R193',17130);
insert into Results values('S3','R194',17967);
insert into Results values('S3','R195',17425);
insert into Results values('S3','R196',17425);
insert into Results values('S3','R197',17967);
insert into Results values('S3','R198',17615);
insert into Results values('S4','R1',19112);
insert into Results values('S4','R2',19112);
insert into Results values('S4','R3',19112);
insert into Results values('S4','R4',19112);
insert into Results values('S4','R5',19112);
insert into Results values('S4','R6',19112);
insert into Results values('S4','R7',19112);
insert into Results values('S4','R8',19112);
insert into Results values('S4','R9',19112);
insert into Results values('S4','R10',19112);
insert into Results values('S4','R11',19112);
insert into Results values('S4','R12',19112);
insert into Results values('S4','R13',19112);
insert into Results values('S4','R14',19112);
insert into Results values('S4','R15',19112);
insert into Results values('S4','R16',19112);
insert into Results values('S4','R17',19112);
insert into Results values('S4','R18',19112);
insert into Results values('S4','R19',19112);
insert into Results values('S4','R20',19112);
insert into Results values('S4','R21',19112);
insert into Results values('S4','R22',19112);
insert into Results values('S4','R23',19112);
insert into Results values('S4','R24',19112);
insert into Results values('S4','R25',19112);
insert into Results values('S4','R26',19112);
insert into Results values('S4','R27',19112);
insert into Results values('S4','R28',19112);
insert into Results values('S4','R29',19112);
insert into Results values('S4','R30',19112);
insert into Results values('S4','R31',19112);
insert into Results values('S4','R32',19112);
insert into Results values('S4','R33',19112);
insert into Results values('S4','R34',19112);
insert into Results values('S4','R35',19295);
insert into Results values('S4','R36',19371);
insert into Results values('S4','R37',19112);
insert into Results values('S4','R38',19112);
insert into Results values('S4','R39',19112);
insert into Results values('S4','R40',19112);
insert into Results values('S4','R41',19112);
insert into Results values('S4','R42',19112);
insert into Results values('S4','R43',19112);
insert into Results values('S4','R44',19112);
insert into Results values('S4','R45',19112);
insert into Results values('S4','R46',19112);
insert into Results values('S4','R47',19112);
insert into Results values('S4','R48',19112);
insert into Results values('S4','R49',19112);
insert into Results values('S4','R50',19112);
insert into Results values('S4','R51',19112);
insert into Results values('S4','R52',19112);
insert into Results values('S4','R53',19112);
insert into Results values('S4','R54',19112);
insert into Results values('S4','R55',19112);
insert into Results values('S4','R56',19253);
insert into Results values('S4','R57',19112);
insert into Results values('S4','R58',19112);
insert into Results values('S4','R59',19112);
insert into Results values('S4','R60',19112);
insert into Results values('S4','R61',19112);
insert into Results values('S4','R62',19112);
insert into Results values('S4','R63',19112);
insert into Results values('S4','R64',19112);
insert into Results values('S4','R65',19112);
insert into Results values('S4','R66',19112);
insert into Results values('S4','R67',19112);
insert into Results values('S4','R68',19112);
insert into Results values('S4','R69',19112);
insert into Results values('S4','R70',19112);
insert into Results values('S4','R71',19112);
insert into Results values('S4','R72',19112);
insert into Results values('S4','R73',19112);
insert into Results values('S4','R74',19112);
insert into Results values('S4','R75',19300);
insert into Results values('S4','R76',19112);
insert into Results values('S4','R77',19112);
insert into Results values('S4','R78',19112);
insert into Results values('S4','R79',19112);
insert into Results values('S4','R80',19298);
insert into Results values('S4','R81',19112);
insert into Results values('S4','R82',19112);
insert into Results values('S4','R83',19112);
insert into Results values('S4','R84',19112);
insert into Results values('S4','R85',19410);
insert into Results values('S4','R86',19112);
insert into Results values('S4','R87',19112);
insert into Results values('S4','R88',19112);
insert into Results values('S4','R89',19348);
insert into Results values('S4','R90',19112);
insert into Results values('S4','R91',19112);
insert into Results values('S4','R92',19112);
insert into Results values('S4','R93',19112);
insert into Results values('S4','R94',19112);
insert into Results values('S4','R95',19112);
insert into Results values('S4','R96',19112);
insert into Results values('S4','R97',19112);
insert into Results values('S4','R98',19112);
insert into Results values('S4','R100',19112);
insert into Results values('S4','R101',19112);
insert into Results values('S4','R102',19292);
insert into Results values('S4','R103',19112);
insert into Results values('S4','R104',19112);
insert into Results values('S4','R105',19112);
insert into Results values('S4','R106',19112);
insert into Results values('S4','R107',19112);
insert into Results values('S4','R108',19112);
insert into Results values('S4','R109',19112);
insert into Results values('S4','R110',19112);
insert into Results values('S4','R111',19112);
insert into Results values('S4','R112',19112);
insert into Results values('S4','R113',19112);
insert into Results values('S4','R114',19112);
insert into Results values('S4','R115',19112);
insert into Results values('S4','R116',19112);
insert into Results values('S4','R117',19112);
insert into Results values('S4','R118',19112);
insert into Results values('S4','R119',19112);
insert into Results values('S4','R120',19112);
insert into Results values('S4','R121',19112);
insert into Results values('S4','R122',19112);
insert into Results values('S4','R123',19112);
insert into Results values('S4','R124',19112);
insert into Results values('S4','R125',19112);
insert into Results values('S4','R126',19112);
insert into Results values('S4','R127',19112);
insert into Results values('S4','R128',19112);
insert into Results values('S4','R129',19112);
insert into Results values('S4','R130',19112);
insert into Results values('S4','R131',19410);
insert into Results values('S4','R132',19112);
insert into Results values('S4','R133',19112);
insert into Results values('S4','R134',19410);
insert into Results values('S4','R135',19112);
insert into Results values('S4','R136',19112);
insert into Results values('S4','R137',19112);
insert into Results values('S4','R138',19112);
insert into Results values('S4','R139',19112);
insert into Results values('S4','R140',19253);
insert into Results values('S4','R141',19112);
insert into Results values('S4','R142',19112);
insert into Results values('S4','R144',19112);
insert into Results values('S4','R145',19112);
insert into Results values('S4','R146',19112);
insert into Results values('S4','R147',19112);
insert into Results values('S4','R148',19112);
insert into Results values('S4','R149',19112);
insert into Results values('S4','R150',19112);
insert into Results values('S4','R151',19112);
insert into Results values('S4','R152',19112);
insert into Results values('S4','R154',19112);
insert into Results values('S4','R155',19112);
insert into Results values('S4','R156',19112);
insert into Results values('S4','R157',19112);
insert into Results values('S4','R158',19112);
insert into Results values('S4','R159',19112);
insert into Results values('S4','R160',19112);
insert into Results values('S4','R161',19112);
insert into Results values('S4','R162',19112);
insert into Results values('S4','R163',19112);
insert into Results values('S4','R164',19112);
insert into Results values('S4','R165',19112);
insert into Results values('S4','R166',19112);
insert into Results values('S4','R167',19112);
insert into Results values('S4','R168',19112);
insert into Results values('S4','R169',19112);
insert into Results values('S4','R170',19112);
insert into Results values('S4','R171',19112);
insert into Results values('S4','R172',19112);
insert into Results values('S4','R173',19112);
insert into Results values('S4','R174',19112);
insert into Results values('S4','R175',19112);
insert into Results values('S4','R176',19112);
insert into Results values('S4','R177',19253);
insert into Results values('S4','R178',19112);
insert into Results values('S4','R179',19112);
insert into Results values('S4','R180',19112);
insert into Results values('S4','R181',19112);
insert into Results values('S4','R182',19365);
insert into Results values('S4','R183',19112);
insert into Results values('S4','R184',19112);
insert into Results values('S4','R185',19112);
insert into Results values('S4','R186',19112);
insert into Results values('S4','R187',19533);
insert into Results values('S4','R188',19112);
insert into Results values('S4','R189',19112);
insert into Results values('S4','R190',19410);
insert into Results values('S4','R191',19112);
insert into Results values('S4','R192',19112);
insert into Results values('S4','R193',19112);
insert into Results values('S4','R194',19112);
insert into Results values('S4','R195',19253);
insert into Results values('S4','R196',19253);
insert into Results values('S4','R197',19112);
insert into Results values('S4','R198',19112);
insert into Results values('S5','R1',16890);
insert into Results values('S5','R2',16890);
insert into Results values('S5','R3',16890);
insert into Results values('S5','R4',16890);
insert into Results values('S5','R5',16890);
insert into Results values('S5','R6',16890);
insert into Results values('S5','R7',16890);
insert into Results values('S5','R8',16890);
insert into Results values('S5','R9',16890);
insert into Results values('S5','R10',16890);
insert into Results values('S5','R11',16890);
insert into Results values('S5','R12',16890);
insert into Results values('S5','R13',16890);
insert into Results values('S5','R14',16890);
insert into Results values('S5','R15',16890);
insert into Results values('S5','R16',16890);
insert into Results values('S5','R17',16890);
insert into Results values('S5','R18',16890);
insert into Results values('S5','R19',16890);
insert into Results values('S5','R20',16890);
insert into Results values('S5','R21',16890);
insert into Results values('S5','R22',16890);
insert into Results values('S5','R23',16890);
insert into Results values('S5','R24',16890);
insert into Results values('S5','R25',16890);
insert into Results values('S5','R26',16890);
insert into Results values('S5','R27',16890);
insert into Results values('S5','R28',16890);
insert into Results values('S5','R29',16890);
insert into Results values('S5','R30',16890);
insert into Results values('S5','R31',16890);
insert into Results values('S5','R32',16890);
insert into Results values('S5','R33',16890);
insert into Results values('S5','R34',16890);
insert into Results values('S5','R35',16890);
insert into Results values('S5','R36',16890);
insert into Results values('S5','R37',16890);
insert into Results values('S5','R38',16890);
insert into Results values('S5','R39',16890);
insert into Results values('S5','R40',16890);
insert into Results values('S5','R41',16890);
insert into Results values('S5','R42',16890);
insert into Results values('S5','R43',16890);
insert into Results values('S5','R44',16890);
insert into Results values('S5','R45',16890);
insert into Results values('S5','R46',16890);
insert into Results values('S5','R47',16890);
insert into Results values('S5','R48',16890);
insert into Results values('S5','R49',16890);
insert into Results values('S5','R50',16890);
insert into Results values('S5','R51',16890);
insert into Results values('S5','R52',16890);
insert into Results values('S5','R53',16890);
insert into Results values('S5','R54',16890);
insert into Results values('S5','R55',16890);
insert into Results values('S5','R56',16890);
insert into Results values('S5','R57',16890);
insert into Results values('S5','R58',16890);
insert into Results values('S5','R59',16890);
insert into Results values('S5','R60',16890);
insert into Results values('S5','R61',16890);
insert into Results values('S5','R62',16890);
insert into Results values('S5','R63',16890);
insert into Results values('S5','R64',16890);
insert into Results values('S5','R65',16890);
insert into Results values('S5','R66',16890);
insert into Results values('S5','R67',16890);
insert into Results values('S5','R68',16890);
insert into Results values('S5','R69',16890);
insert into Results values('S5','R70',16890);
insert into Results values('S5','R71',16890);
insert into Results values('S5','R72',16890);
insert into Results values('S5','R73',16890);
insert into Results values('S5','R74',16890);
insert into Results values('S5','R75',16890);
insert into Results values('S5','R76',16890);
insert into Results values('S5','R77',16890);
insert into Results values('S5','R78',16890);
insert into Results values('S5','R79',16890);
insert into Results values('S5','R80',16890);
insert into Results values('S5','R81',16890);
insert into Results values('S5','R82',16890);
insert into Results values('S5','R83',16890);
insert into Results values('S5','R84',16890);
insert into Results values('S5','R85',17137);
insert into Results values('S5','R86',16890);
insert into Results values('S5','R87',16890);
insert into Results values('S5','R88',16890);
insert into Results values('S5','R89',16890);
insert into Results values('S5','R90',16890);
insert into Results values('S5','R91',16890);
insert into Results values('S5','R92',16890);
insert into Results values('S5','R93',16890);
insert into Results values('S5','R94',16890);
insert into Results values('S5','R95',16890);
insert into Results values('S5','R96',16890);
insert into Results values('S5','R97',16890);
insert into Results values('S5','R98',16890);
insert into Results values('S5','R100',16890);
insert into Results values('S5','R101',16890);
insert into Results values('S5','R102',16890);
insert into Results values('S5','R103',16890);
insert into Results values('S5','R104',16890);
insert into Results values('S5','R105',16890);
insert into Results values('S5','R106',16890);
insert into Results values('S5','R107',16890);
insert into Results values('S5','R108',16890);
insert into Results values('S5','R109',16890);
insert into Results values('S5','R110',16890);
insert into Results values('S5','R111',16890);
insert into Results values('S5','R112',16890);
insert into Results values('S5','R113',16890);
insert into Results values('S5','R114',16890);
insert into Results values('S5','R115',16890);
insert into Results values('S5','R116',16890);
insert into Results values('S5','R117',16890);
insert into Results values('S5','R118',16890);
insert into Results values('S5','R119',16890);
insert into Results values('S5','R120',16890);
insert into Results values('S5','R121',16890);
insert into Results values('S5','R122',16890);
insert into Results values('S5','R123',16890);
insert into Results values('S5','R124',16890);
insert into Results values('S5','R125',16890);
insert into Results values('S5','R126',16890);
insert into Results values('S5','R127',16890);
insert into Results values('S5','R128',16890);
insert into Results values('S5','R129',16890);
insert into Results values('S5','R130',16890);
insert into Results values('S5','R131',16890);
insert into Results values('S5','R132',16890);
insert into Results values('S5','R133',17071);
insert into Results values('S5','R134',16890);
insert into Results values('S5','R135',16890);
insert into Results values('S5','R136',16890);
insert into Results values('S5','R137',16890);
insert into Results values('S5','R138',16890);
insert into Results values('S5','R139',16890);
insert into Results values('S5','R140',16890);
insert into Results values('S5','R141',16890);
insert into Results values('S5','R142',16890);
insert into Results values('S5','R144',16890);
insert into Results values('S5','R145',16890);
insert into Results values('S5','R146',16890);
insert into Results values('S5','R147',16890);
insert into Results values('S5','R148',16890);
insert into Results values('S5','R149',16890);
insert into Results values('S5','R150',16890);
insert into Results values('S5','R151',16890);
insert into Results values('S5','R152',16890);
insert into Results values('S5','R154',16890);
insert into Results values('S5','R155',16890);
insert into Results values('S5','R156',16890);
insert into Results values('S5','R157',16890);
insert into Results values('S5','R158',16890);
insert into Results values('S5','R159',16890);
insert into Results values('S5','R160',16890);
insert into Results values('S5','R161',16890);
insert into Results values('S5','R162',16890);
insert into Results values('S5','R163',16890);
insert into Results values('S5','R164',16890);
insert into Results values('S5','R165',16890);
insert into Results values('S5','R166',16890);
insert into Results values('S5','R167',16890);
insert into Results values('S5','R168',16890);
insert into Results values('S5','R169',16890);
insert into Results values('S5','R170',16890);
insert into Results values('S5','R171',16890);
insert into Results values('S5','R172',16890);
insert into Results values('S5','R173',16890);
insert into Results values('S5','R174',16890);
insert into Results values('S5','R175',16890);
insert into Results values('S5','R176',16890);
insert into Results values('S5','R177',16890);
insert into Results values('S5','R178',16890);
insert into Results values('S5','R179',16890);
insert into Results values('S5','R180',16890);
insert into Results values('S5','R181',16890);
insert into Results values('S5','R182',16890);
insert into Results values('S5','R183',16890);
insert into Results values('S5','R184',16890);
insert into Results values('S5','R185',16890);
insert into Results values('S5','R186',16890);
insert into Results values('S5','R187',16890);
insert into Results values('S5','R188',16890);
insert into Results values('S5','R189',16890);
insert into Results values('S5','R191',16890);
insert into Results values('S5','R192',16890);
insert into Results values('S5','R193',16890);
insert into Results values('S5','R194',16890);
insert into Results values('S5','R195',16890);
insert into Results values('S5','R196',16890);
insert into Results values('S5','R197',16890);
insert into Results values('S5','R198',16890);
insert into Results values('S6','R1',16624);
insert into Results values('S6','R2',16652);
insert into Results values('S6','R3',16652);
insert into Results values('S6','R4',16624);
insert into Results values('S6','R5',16624);
insert into Results values('S6','R6',16749);
insert into Results values('S6','R7',16690);
insert into Results values('S6','R8',16624);
insert into Results values('S6','R9',16624);
insert into Results values('S6','R10',16749);
insert into Results values('S6','R11',16624);
insert into Results values('S6','R12',16624);
insert into Results values('S6','R13',16624);
insert into Results values('S6','R14',16624);
insert into Results values('S6','R15',16624);
insert into Results values('S6','R16',16982);
insert into Results values('S6','R17',16624);
insert into Results values('S6','R18',16624);
insert into Results values('S6','R19',16982);
insert into Results values('S6','R20',17424);
insert into Results values('S6','R21',16749);
insert into Results values('S6','R22',16749);
insert into Results values('S6','R23',16982);
insert into Results values('S6','R24',16982);
insert into Results values('S6','R25',17424);
insert into Results values('S6','R26',16652);
insert into Results values('S6','R27',16749);
insert into Results values('S6','R28',16624);
insert into Results values('S6','R30',16624);
insert into Results values('S6','R31',16624);
insert into Results values('S6','R32',16624);
insert into Results values('S6','R33',16624);
insert into Results values('S6','R34',17424);
insert into Results values('S6','R35',16652);
insert into Results values('S6','R36',17424);
insert into Results values('S6','R37',16749);
insert into Results values('S6','R38',17424);
insert into Results values('S6','R39',16636);
insert into Results values('S6','R40',16982);
insert into Results values('S6','R41',17104);
insert into Results values('S6','R42',16749);
insert into Results values('S6','R43',16620);
insert into Results values('S6','R44',17424);
insert into Results values('S6','R46',16624);
insert into Results values('S6','R47',16624);
insert into Results values('S6','R48',17424);
insert into Results values('S6','R49',16758);
insert into Results values('S6','R50',17424);
insert into Results values('S6','R51',16982);
insert into Results values('S6','R52',16620);
insert into Results values('S6','R53',16749);
insert into Results values('S6','R54',16635);
insert into Results values('S6','R55',17424);
insert into Results values('S6','R57',17424);
insert into Results values('S6','R58',17424);
insert into Results values('S6','R59',17424);
insert into Results values('S6','R60',17424);
insert into Results values('S6','R61',17592);
insert into Results values('S6','R62',17424);
insert into Results values('S6','R63',16675);
insert into Results values('S6','R64',16749);
insert into Results values('S6','R65',16624);
insert into Results values('S6','R66',16624);
insert into Results values('S6','R67',17424);
insert into Results values('S6','R68',16624);
insert into Results values('S6','R69',16813);
insert into Results values('S6','R70',16624);
insert into Results values('S6','R71',16749);
insert into Results values('S6','R72',16624);
insert into Results values('S6','R73',16624);
insert into Results values('S6','R74',16624);
insert into Results values('S6','R75',16624);
insert into Results values('S6','R76',16749);
insert into Results values('S6','R77',17424);
insert into Results values('S6','R78',17221);
insert into Results values('S6','R79',17424);
insert into Results values('S6','R80',16982);
insert into Results values('S6','R81',16719);
insert into Results values('S6','R82',16624);
insert into Results values('S6','R83',17104);
insert into Results values('S6','R84',17424);
insert into Results values('S6','R85',17424);
insert into Results values('S6','R86',17270);
insert into Results values('S6','R87',17424);
insert into Results values('S6','R88',17221);
insert into Results values('S6','R89',16652);
insert into Results values('S6','R90',16624);
insert into Results values('S6','R91',16624);
insert into Results values('S6','R92',16749);
insert into Results values('S6','R93',16982);
insert into Results values('S6','R94',16624);
insert into Results values('S6','R95',16624);
insert into Results values('S6','R96',16624);
insert into Results values('S6','R97',17424);
insert into Results values('S6','R98',16624);
insert into Results values('S6','R100',16624);
insert into Results values('S6','R101',16700);
insert into Results values('S6','R102',17424);
insert into Results values('S6','R103',16620);
insert into Results values('S6','R104',16677);
insert into Results values('S6','R105',16620);
insert into Results values('S6','R106',16624);
insert into Results values('S6','R107',16641);
insert into Results values('S6','R108',16749);
insert into Results values('S6','R109',17424);
insert into Results values('S6','R110',16624);
insert into Results values('S6','R111',16982);
insert into Results values('S6','R112',17270);
insert into Results values('S6','R113',16624);
insert into Results values('S6','R115',17424);
insert into Results values('S6','R116',16749);
insert into Results values('S6','R117',16620);
insert into Results values('S6','R118',16624);
insert into Results values('S6','R119',16982);
insert into Results values('S6','R120',16982);
insert into Results values('S6','R121',16624);
insert into Results values('S6','R122',16982);
insert into Results values('S6','R123',17424);
insert into Results values('S6','R124',16620);
insert into Results values('S6','R125',17424);
insert into Results values('S6','R126',16624);
insert into Results values('S6','R127',16931);
insert into Results values('S6','R128',16982);
insert into Results values('S6','R129',16749);
insert into Results values('S6','R130',16749);
insert into Results values('S6','R131',16982);
insert into Results values('S6','R132',16749);
insert into Results values('S6','R133',17104);
insert into Results values('S6','R134',16624);
insert into Results values('S6','R135',16749);
insert into Results values('S6','R136',16831);
insert into Results values('S6','R137',16831);
insert into Results values('S6','R138',16749);
insert into Results values('S6','R139',16982);
insert into Results values('S6','R140',16982);
insert into Results values('S6','R141',17424);
insert into Results values('S6','R142',17424);
insert into Results values('S6','R144',17424);
insert into Results values('S6','R145',16749);
insert into Results values('S6','R146',16761);
insert into Results values('S6','R147',16624);
insert into Results values('S6','R148',17424);
insert into Results values('S6','R149',17221);
insert into Results values('S6','R150',17424);
insert into Results values('S6','R151',17221);
insert into Results values('S6','R152',17424);
insert into Results values('S6','R154',16624);
insert into Results values('S6','R155',16620);
insert into Results values('S6','R156',16675);
insert into Results values('S6','R157',17424);
insert into Results values('S6','R158',16652);
insert into Results values('S6','R159',16749);
insert into Results values('S6','R160',16749);
insert into Results values('S6','R161',16749);
insert into Results values('S6','R162',17424);
insert into Results values('S6','R163',16749);
insert into Results values('S6','R164',16852);
insert into Results values('S6','R165',17424);
insert into Results values('S6','R166',16982);
insert into Results values('S6','R167',17424);
insert into Results values('S6','R168',16982);
insert into Results values('S6','R169',17424);
insert into Results values('S6','R170',17424);
insert into Results values('S6','R171',17424);
insert into Results values('S6','R172',16624);
insert into Results values('S6','R173',16624);
insert into Results values('S6','R174',16624);
insert into Results values('S6','R175',17040);
insert into Results values('S6','R176',16624);
insert into Results values('S6','R177',16749);
insert into Results values('S6','R178',16624);
insert into Results values('S6','R179',16749);
insert into Results values('S6','R180',16624);
insert into Results values('S6','R181',16702);
insert into Results values('S6','R182',16913);
insert into Results values('S6','R183',16624);
insert into Results values('S6','R184',16620);
insert into Results values('S6','R185',16620);
insert into Results values('S6','R186',16624);
insert into Results values('S6','R187',16913);
insert into Results values('S6','R188',16702);
insert into Results values('S6','R189',16982);
insert into Results values('S6','R191',16624);
insert into Results values('S6','R192',16982);
insert into Results values('S6','R193',17424);
insert into Results values('S6','R194',16749);
insert into Results values('S6','R195',17221);
insert into Results values('S6','R196',17424);
insert into Results values('S6','R197',16982);
insert into Results values('S6','R198',16982);
insert into Results values('S7','R1',17917);
insert into Results values('S7','R2',18395);
insert into Results values('S7','R3',18471);
insert into Results values('S7','R4',18223);
insert into Results values('S7','R5',18395);
insert into Results values('S7','R6',18454);
insert into Results values('S7','R7',18725);
insert into Results values('S7','R8',18395);
insert into Results values('S7','R9',18103);
insert into Results values('S7','R10',17984);
insert into Results values('S7','R11',18027);
insert into Results values('S7','R12',18019);
insert into Results values('S7','R13',18054);
insert into Results values('S7','R14',18054);
insert into Results values('S7','R15',17971);
insert into Results values('S7','R16',18671);
insert into Results values('S7','R17',18503);
insert into Results values('S7','R18',17959);
insert into Results values('S7','R19',18040);
insert into Results values('S7','R20',18497);
insert into Results values('S7','R21',18262);
insert into Results values('S7','R22',18586);
insert into Results values('S7','R23',18814);
insert into Results values('S7','R24',18454);
insert into Results values('S7','R25',18185);
insert into Results values('S7','R26',18214);
insert into Results values('S7','R27',17961);
insert into Results values('S7','R28',18006);
insert into Results values('S7','R30',18223);
insert into Results values('S7','R31',18014);
insert into Results values('S7','R32',18167);
insert into Results values('S7','R33',18575);
insert into Results values('S7','R35',18776);
insert into Results values('S7','R36',19144);
insert into Results values('S7','R37',18040);
insert into Results values('S7','R38',18776);
insert into Results values('S7','R39',18575);
insert into Results values('S7','R40',18905);
insert into Results values('S7','R41',18533);
insert into Results values('S7','R42',18098);
insert into Results values('S7','R43',18575);
insert into Results values('S7','R44',18368);
insert into Results values('S7','R46',17922);
insert into Results values('S7','R47',18088);
insert into Results values('S7','R48',18368);
insert into Results values('S7','R49',18969);
insert into Results values('S7','R50',18162);
insert into Results values('S7','R51',18636);
insert into Results values('S7','R52',18636);
insert into Results values('S7','R53',18183);
insert into Results values('S7','R54',18458);
insert into Results values('S7','R57',19144);
insert into Results values('S7','R59',18014);
insert into Results values('S7','R60',18533);
insert into Results values('S7','R61',18984);
insert into Results values('S7','R62',18712);
insert into Results values('S7','R63',18716);
insert into Results values('S7','R64',18162);
insert into Results values('S7','R65',18357);
insert into Results values('S7','R66',18162);
insert into Results values('S7','R68',18660);
insert into Results values('S7','R69',18969);
insert into Results values('S7','R70',18660);
insert into Results values('S7','R71',18162);
insert into Results values('S7','R72',17981);
insert into Results values('S7','R73',17934);
insert into Results values('S7','R74',18302);
insert into Results values('S7','R75',18660);
insert into Results values('S7','R76',18660);
insert into Results values('S7','R77',18969);
insert into Results values('S7','R78',18876);
insert into Results values('S7','R79',18660);
insert into Results values('S7','R80',18136);
insert into Results values('S7','R81',18660);
insert into Results values('S7','R82',18098);
insert into Results values('S7','R84',18969);
insert into Results values('S7','R85',18098);
insert into Results values('S7','R86',18153);
insert into Results values('S7','R87',18969);
insert into Results values('S7','R88',18340);
insert into Results values('S7','R89',18475);
insert into Results values('S7','R90',18660);
insert into Results values('S7','R91',17917);
insert into Results values('S7','R92',18368);
insert into Results values('S7','R93',18776);
insert into Results values('S7','R94',18969);
insert into Results values('S7','R95',17915);
insert into Results values('S7','R96',18454);
insert into Results values('S7','R97',17989);
insert into Results values('S7','R98',17999);
insert into Results values('S7','R100',18027);
insert into Results values('S7','R101',18660);
insert into Results values('S7','R102',18533);
insert into Results values('S7','R103',18969);
insert into Results values('S7','R104',18575);
insert into Results values('S7','R105',18591);
insert into Results values('S7','R106',18673);
insert into Results values('S7','R107',18969);
insert into Results values('S7','R108',18027);
insert into Results values('S7','R109',18214);
insert into Results values('S7','R110',18660);
insert into Results values('S7','R111',18776);
insert into Results values('S7','R112',18660);
insert into Results values('S7','R113',18189);
insert into Results values('S7','R115',18712);
insert into Results values('S7','R116',18054);
insert into Results values('S7','R117',18969);
insert into Results values('S7','R118',17965);
insert into Results values('S7','R119',18088);
insert into Results values('S7','R121',18106);
insert into Results values('S7','R122',18776);
insert into Results values('S7','R123',18969);
insert into Results values('S7','R124',18977);
insert into Results values('S7','R125',18533);
insert into Results values('S7','R126',18088);
insert into Results values('S7','R127',18088);
insert into Results values('S7','R128',18458);
insert into Results values('S7','R129',18969);
insert into Results values('S7','R130',18969);
insert into Results values('S7','R131',18660);
insert into Results values('S7','R132',17999);
insert into Results values('S7','R133',18273);
insert into Results values('S7','R134',18246);
insert into Results values('S7','R135',18305);
insert into Results values('S7','R136',18088);
insert into Results values('S7','R137',18175);
insert into Results values('S7','R138',18054);
insert into Results values('S7','R139',18969);
insert into Results values('S7','R140',18673);
insert into Results values('S7','R141',18969);
insert into Results values('S7','R142',18088);
insert into Results values('S7','R145',18054);
insert into Results values('S7','R146',18393);
insert into Results values('S7','R147',18027);
insert into Results values('S7','R150',18660);
insert into Results values('S7','R151',18067);
insert into Results values('S7','R152',18310);
insert into Results values('S7','R154',18969);
insert into Results values('S7','R155',18776);
insert into Results values('S7','R156',18976);
insert into Results values('S7','R157',18423);
insert into Results values('S7','R158',18530);
insert into Results values('S7','R159',18575);
insert into Results values('S7','R160',18310);
insert into Results values('S7','R161',18136);
insert into Results values('S7','R162',18423);
insert into Results values('S7','R163',17961);
insert into Results values('S7','R164',18969);
insert into Results values('S7','R165',18310);
insert into Results values('S7','R166',18305);
insert into Results values('S7','R167',18660);
insert into Results values('S7','R168',18106);
insert into Results values('S7','R169',18162);
insert into Results values('S7','R170',18088);
insert into Results values('S7','R171',18052);
insert into Results values('S7','R172',18106);
insert into Results values('S7','R173',18059);
insert into Results values('S7','R174',18464);
insert into Results values('S7','R175',18464);
insert into Results values('S7','R176',18551);
insert into Results values('S7','R177',18216);
insert into Results values('S7','R178',18351);
insert into Results values('S7','R179',18270);
insert into Results values('S7','R180',18085);
insert into Results values('S7','R181',18454);
insert into Results values('S7','R182',18522);
insert into Results values('S7','R183',18776);
insert into Results values('S7','R184',18969);
insert into Results values('S7','R185',18776);
insert into Results values('S7','R186',18776);
insert into Results values('S7','R187',18776);
insert into Results values('S7','R188',18660);
insert into Results values('S7','R189',18054);
insert into Results values('S7','R191',18533);
insert into Results values('S7','R192',18393);
insert into Results values('S7','R193',18969);
insert into Results values('S7','R194',18712);
insert into Results values('S7','R195',18660);
insert into Results values('S7','R196',18288);
insert into Results values('S7','R197',18969);
insert into Results values('S7','R198',18969);
insert into Results values('S8','R1',14196);
insert into Results values('S8','R2',15171);
insert into Results values('S8','R3',15171);
insert into Results values('S8','R4',15171);
insert into Results values('S8','R5',14787);
insert into Results values('S8','R6',14909);
insert into Results values('S8','R7',14909);
insert into Results values('S8','R8',14787);
insert into Results values('S8','R9',14255);
insert into Results values('S8','R10',14200);
insert into Results values('S8','R11',14909);
insert into Results values('S8','R12',14196);
insert into Results values('S8','R13',14200);
insert into Results values('S8','R14',14311);
insert into Results values('S8','R15',14255);
insert into Results values('S8','R16',14615);
insert into Results values('S8','R17',14909);
insert into Results values('S8','R18',14196);
insert into Results values('S8','R19',14468);
insert into Results values('S8','R20',15171);
insert into Results values('S8','R21',15171);
insert into Results values('S8','R22',14468);
insert into Results values('S8','R23',15171);
insert into Results values('S8','R24',15581);
insert into Results values('S8','R25',14468);
insert into Results values('S8','R26',14468);
insert into Results values('S8','R27',14255);
insert into Results values('S8','R30',15171);
insert into Results values('S8','R31',14311);
insert into Results values('S8','R32',14468);
insert into Results values('S8','R33',15171);
insert into Results values('S8','R35',15171);
insert into Results values('S8','R37',14255);
insert into Results values('S8','R38',15160);
insert into Results values('S8','R39',14615);
insert into Results values('S8','R40',15581);
insert into Results values('S8','R41',15509);
insert into Results values('S8','R42',15160);
insert into Results values('S8','R43',15171);
insert into Results values('S8','R44',14468);
insert into Results values('S8','R46',14196);
insert into Results values('S8','R47',14255);
insert into Results values('S8','R48',14787);
insert into Results values('S8','R49',14787);
insert into Results values('S8','R50',14468);
insert into Results values('S8','R51',15486);
insert into Results values('S8','R52',14468);
insert into Results values('S8','R53',14615);
insert into Results values('S8','R54',15007);
insert into Results values('S8','R57',15581);
insert into Results values('S8','R59',14615);
insert into Results values('S8','R60',14909);
insert into Results values('S8','R61',15171);
insert into Results values('S8','R62',14255);
insert into Results values('S8','R63',14909);
insert into Results values('S8','R64',14909);
insert into Results values('S8','R65',14615);
insert into Results values('S8','R66',14909);
insert into Results values('S8','R68',15509);
insert into Results values('S8','R69',14311);
insert into Results values('S8','R70',14615);
insert into Results values('S8','R71',15171);
insert into Results values('S8','R72',14255);
insert into Results values('S8','R73',14311);
insert into Results values('S8','R74',14311);
insert into Results values('S8','R75',15581);
insert into Results values('S8','R76',15171);
insert into Results values('S8','R77',15171);
insert into Results values('S8','R78',15581);
insert into Results values('S8','R79',15509);
insert into Results values('S8','R80',14311);
insert into Results values('S8','R81',14909);
insert into Results values('S8','R82',14311);
insert into Results values('S8','R84',15581);
insert into Results values('S8','R85',15171);
insert into Results values('S8','R86',14909);
insert into Results values('S8','R87',15171);
insert into Results values('S8','R88',14468);
insert into Results values('S8','R89',15171);
insert into Results values('S8','R90',15581);
insert into Results values('S8','R91',14196);
insert into Results values('S8','R92',14787);
insert into Results values('S8','R93',15509);
insert into Results values('S8','R94',15509);
insert into Results values('S8','R95',14196);
insert into Results values('S8','R96',14909);
insert into Results values('S8','R97',14468);
insert into Results values('S8','R98',14468);
insert into Results values('S8','R100',14196);
insert into Results values('S8','R101',14909);
insert into Results values('S8','R102',15171);
insert into Results values('S8','R103',15581);
insert into Results values('S8','R104',15171);
insert into Results values('S8','R105',15171);
insert into Results values('S8','R106',15171);
insert into Results values('S8','R107',15171);
insert into Results values('S8','R108',14255);
insert into Results values('S8','R109',15509);
insert into Results values('S8','R110',15171);
insert into Results values('S8','R111',14468);
insert into Results values('S8','R112',15581);
insert into Results values('S8','R113',14615);
insert into Results values('S8','R115',14909);
insert into Results values('S8','R116',15007);
insert into Results values('S8','R117',15581);
insert into Results values('S8','R118',14196);
insert into Results values('S8','R119',14311);
insert into Results values('S8','R121',15581);
insert into Results values('S8','R122',15171);
insert into Results values('S8','R123',15509);
insert into Results values('S8','R124',14909);
insert into Results values('S8','R125',14468);
insert into Results values('S8','R126',14468);
insert into Results values('S8','R127',14468);
insert into Results values('S8','R128',14468);
insert into Results values('S8','R129',15581);
insert into Results values('S8','R130',15581);
insert into Results values('S8','R131',15171);
insert into Results values('S8','R132',14170);
insert into Results values('S8','R133',15341);
insert into Results values('S8','R134',14909);
insert into Results values('S8','R135',14468);
insert into Results values('S8','R136',15171);
insert into Results values('S8','R137',14909);
insert into Results values('S8','R138',14787);
insert into Results values('S8','R139',15581);
insert into Results values('S8','R140',15171);
insert into Results values('S8','R141',15581);
insert into Results values('S8','R142',14311);
insert into Results values('S8','R145',14311);
insert into Results values('S8','R146',14311);
insert into Results values('S8','R147',14255);
insert into Results values('S8','R150',14615);
insert into Results values('S8','R151',15007);
insert into Results values('S8','R152',15581);
insert into Results values('S8','R154',15509);
insert into Results values('S8','R155',15509);
insert into Results values('S8','R156',15509);
insert into Results values('S8','R157',14615);
insert into Results values('S8','R158',14909);
insert into Results values('S8','R159',15171);
insert into Results values('S8','R160',14468);
insert into Results values('S8','R161',14255);
insert into Results values('S8','R162',15171);
insert into Results values('S8','R163',14255);
insert into Results values('S8','R164',15509);
insert into Results values('S8','R165',14311);
insert into Results values('S8','R166',15171);
insert into Results values('S8','R167',15581);
insert into Results values('S8','R168',14468);
insert into Results values('S8','R169',14217);
insert into Results values('S8','R170',14311);
insert into Results values('S8','R171',14311);
insert into Results values('S8','R172',14255);
insert into Results values('S8','R173',14468);
insert into Results values('S8','R174',14468);
insert into Results values('S8','R175',15171);
insert into Results values('S8','R176',15171);
insert into Results values('S8','R177',14909);
insert into Results values('S8','R178',15171);
insert into Results values('S8','R179',15171);
insert into Results values('S8','R180',14311);
insert into Results values('S8','R181',14468);
insert into Results values('S8','R182',14717);
insert into Results values('S8','R183',14909);
insert into Results values('S8','R184',15171);
insert into Results values('S8','R185',15171);
insert into Results values('S8','R186',15171);
insert into Results values('S8','R187',14909);
insert into Results values('S8','R188',14468);
insert into Results values('S8','R189',15160);
insert into Results values('S8','R191',15509);
insert into Results values('S8','R192',14909);
insert into Results values('S8','R194',15171);
insert into Results values('S8','R195',15509);
insert into Results values('S8','R196',15171);
insert into Results values('S8','R197',15509);
insert into Results values('S8','R198',15581);
insert into Results values('S9','R1',3187);
insert into Results values('S9','R2',3417);
insert into Results values('S9','R3',3347);
insert into Results values('S9','R4',3311);
insert into Results values('S9','R5',3400);
insert into Results values('S9','R6',3520);
insert into Results values('S9','R8',3368);
insert into Results values('S9','R9',3150);
insert into Results values('S9','R10',3356);
insert into Results values('S9','R11',3141);
insert into Results values('S9','R12',3250);
insert into Results values('S9','R13',3408);
insert into Results values('S9','R14',3213);
insert into Results values('S9','R15',3219);
insert into Results values('S9','R16',3433);
insert into Results values('S9','R17',3248);
insert into Results values('S9','R18',3224);
insert into Results values('S9','R19',3406);
insert into Results values('S9','R20',3518);
insert into Results values('S9','R22',3400);
insert into Results values('S9','R23',3506);
insert into Results values('S9','R24',3562);
insert into Results values('S9','R26',3429);
insert into Results values('S9','R27',3418);
insert into Results values('S9','R30',3432);
insert into Results values('S9','R31',3344);
insert into Results values('S9','R32',3397);
insert into Results values('S9','R33',3518);
insert into Results values('S9','R35',3571);
insert into Results values('S9','R37',3374);
insert into Results values('S9','R39',3418);
insert into Results values('S9','R40',3503);
insert into Results values('S9','R42',3550);
insert into Results values('S9','R43',3500);
insert into Results values('S9','R44',3514);
insert into Results values('S9','R46',3211);
insert into Results values('S9','R47',3378);
insert into Results values('S9','R48',3510);
insert into Results values('S9','R49',3424);
insert into Results values('S9','R50',3344);
insert into Results values('S9','R52',3490);
insert into Results values('S9','R53',3509);
insert into Results values('S9','R54',3562);
insert into Results values('S9','R59',3370);
insert into Results values('S9','R60',3338);
insert into Results values('S9','R61',3581);
insert into Results values('S9','R62',3464);
insert into Results values('S9','R63',3374);
insert into Results values('S9','R64',3303);
insert into Results values('S9','R65',3330);
insert into Results values('S9','R66',3595);
insert into Results values('S9','R68',3597);
insert into Results values('S9','R69',3530);
insert into Results values('S9','R70',3471);
insert into Results values('S9','R71',3321);
insert into Results values('S9','R72',3272);
insert into Results values('S9','R73',3293);
insert into Results values('S9','R74',3504);
insert into Results values('S9','R75',3531);
insert into Results values('S9','R76',3594);
insert into Results values('S9','R77',3511);
insert into Results values('S9','R78',3579);
insert into Results values('S9','R79',3510);
insert into Results values('S9','R80',3483);
insert into Results values('S9','R81',3527);
insert into Results values('S9','R82',3258);
insert into Results values('S9','R85',3453);
insert into Results values('S9','R86',3487);
insert into Results values('S9','R87',3430);
insert into Results values('S9','R88',3571);
insert into Results values('S9','R90',3475);
insert into Results values('S9','R91',3084);
insert into Results values('S9','R92',3473);
insert into Results values('S9','R94',3589);
insert into Results values('S9','R95',3119);
insert into Results values('S9','R96',3448);
insert into Results values('S9','R97',3477);
insert into Results values('S9','R98',3284);
insert into Results values('S9','R100',3273);
insert into Results values('S9','R101',3375);
insert into Results values('S9','R102',3526);
insert into Results values('S9','R103',3590);
insert into Results values('S9','R104',3557);
insert into Results values('S9','R105',3544);
insert into Results values('S9','R106',3478);
insert into Results values('S9','R107',3581);
insert into Results values('S9','R108',3480);
insert into Results values('S9','R109',3249);
insert into Results values('S9','R110',3514);
insert into Results values('S9','R111',3521);
insert into Results values('S9','R112',3259);
insert into Results values('S9','R113',3362);
insert into Results values('S9','R115',3485);
insert into Results values('S9','R116',3405);
insert into Results values('S9','R117',3568);
insert into Results values('S9','R118',3212);
insert into Results values('S9','R119',3560);
insert into Results values('S9','R121',3400);
insert into Results values('S9','R122',3563);
insert into Results values('S9','R123',3516);
insert into Results values('S9','R124',3355);
insert into Results values('S9','R125',3498);
insert into Results values('S9','R126',3349);
insert into Results values('S9','R127',3273);
insert into Results values('S9','R128',3358);
insert into Results values('S9','R130',3498);
insert into Results values('S9','R132',3396);
insert into Results values('S9','R133',3371);
insert into Results values('S9','R134',3256);
insert into Results values('S9','R135',3433);
insert into Results values('S9','R136',3399);
insert into Results values('S9','R137',3388);
insert into Results values('S9','R138',3511);
insert into Results values('S9','R140',3272);
insert into Results values('S9','R141',3499);
insert into Results values('S9','R142',3354);
insert into Results values('S9','R145',3325);
insert into Results values('S9','R146',3415);
insert into Results values('S9','R147',3226);
insert into Results values('S9','R150',3429);
insert into Results values('S9','R151',3368);
insert into Results values('S9','R152',3492);
insert into Results values('S9','R154',3582);
insert into Results values('S9','R158',3414);
insert into Results values('S9','R160',3389);
insert into Results values('S9','R161',3350);
insert into Results values('S9','R162',3518);
insert into Results values('S9','R163',3230);
insert into Results values('S9','R165',3421);
insert into Results values('S9','R166',3262);
insert into Results values('S9','R168',3438);
insert into Results values('S9','R169',3366);
insert into Results values('S9','R170',3486);
insert into Results values('S9','R171',3311);
insert into Results values('S9','R172',3312);
insert into Results values('S9','R173',3168);
insert into Results values('S9','R174',3490);
insert into Results values('S9','R175',3496);
insert into Results values('S9','R176',3430);
insert into Results values('S9','R177',3220);
insert into Results values('S9','R178',3434);
insert into Results values('S9','R179',3466);
insert into Results values('S9','R180',3203);
insert into Results values('S9','R181',3415);
insert into Results values('S9','R182',3430);
insert into Results values('S9','R183',3575);
insert into Results values('S9','R184',3531);
insert into Results values('S9','R185',3518);
insert into Results values('S9','R186',3483);
insert into Results values('S9','R187',3531);
insert into Results values('S9','R188',3452);
insert into Results values('S9','R189',3473);
insert into Results values('S9','R192',3591);
insert into Results values('S9','R194',3359);
insert into Results values('S9','R195',3504);
insert into Results values('S9','R196',3522);
insert into Results values('S9','R197',3486);
insert into Results values('S9','R198',3570);
insert into Results values('S10','R1',17382);
insert into Results values('S10','R2',17450);
insert into Results values('S10','R3',17887);
insert into Results values('S10','R4',17887);
insert into Results values('S10','R5',17887);
insert into Results values('S10','R6',17887);
insert into Results values('S10','R7',18833);
insert into Results values('S10','R8',18331);
insert into Results values('S10','R9',17399);
insert into Results values('S10','R10',17382);
insert into Results values('S10','R11',18833);
insert into Results values('S10','R12',19101);
insert into Results values('S10','R13',17420);
insert into Results values('S10','R14',17382);
insert into Results values('S10','R15',17382);
insert into Results values('S10','R16',17887);
insert into Results values('S10','R17',17193);
insert into Results values('S10','R18',17382);
insert into Results values('S10','R19',17186);
insert into Results values('S10','R20',18090);
insert into Results values('S10','R21',18331);
insert into Results values('S10','R22',18833);
insert into Results values('S10','R23',18833);
insert into Results values('S10','R24',18833);
insert into Results values('S10','R25',18833);
insert into Results values('S10','R26',18331);
insert into Results values('S10','R27',17350);
insert into Results values('S10','R30',18833);
insert into Results values('S10','R31',19101);
insert into Results values('S10','R32',17350);
insert into Results values('S10','R33',18833);
insert into Results values('S10','R35',19101);
insert into Results values('S10','R37',17189);
insert into Results values('S10','R38',19101);
insert into Results values('S10','R39',18833);
insert into Results values('S10','R40',18833);
insert into Results values('S10','R42',18090);
insert into Results values('S10','R43',18833);
insert into Results values('S10','R44',18090);
insert into Results values('S10','R46',17382);
insert into Results values('S10','R47',17406);
insert into Results values('S10','R48',18833);
insert into Results values('S10','R49',18833);
insert into Results values('S10','R50',18090);
insert into Results values('S10','R51',18833);
insert into Results values('S10','R52',17931);
insert into Results values('S10','R53',18090);
insert into Results values('S10','R54',18232);
insert into Results values('S10','R57',19101);
insert into Results values('S10','R59',18331);
insert into Results values('S10','R60',18090);
insert into Results values('S10','R61',19101);
insert into Results values('S10','R62',18331);
insert into Results values('S10','R63',17887);
insert into Results values('S10','R64',17733);
insert into Results values('S10','R65',18331);
insert into Results values('S10','R66',18833);
insert into Results values('S10','R68',19101);
insert into Results values('S10','R69',19101);
insert into Results values('S10','R70',18331);
insert into Results values('S10','R71',18331);
insert into Results values('S10','R72',17382);
insert into Results values('S10','R73',17382);
insert into Results values('S10','R75',18833);
insert into Results values('S10','R76',18833);
insert into Results values('S10','R77',19101);
insert into Results values('S10','R78',19101);
insert into Results values('S10','R79',18833);
insert into Results values('S10','R80',18090);
insert into Results values('S10','R81',19101);
insert into Results values('S10','R82',17382);
insert into Results values('S10','R84',19101);
insert into Results values('S10','R85',18090);
insert into Results values('S10','R86',17733);
insert into Results values('S10','R87',18833);
insert into Results values('S10','R88',18090);
insert into Results values('S10','R89',19101);
insert into Results values('S10','R90',19101);
insert into Results values('S10','R91',17382);
insert into Results values('S10','R92',18232);
insert into Results values('S10','R93',19101);
insert into Results values('S10','R94',19101);
insert into Results values('S10','R95',17382);
insert into Results values('S10','R96',18833);
insert into Results values('S10','R97',17406);
insert into Results values('S10','R98',17733);
insert into Results values('S10','R100',17350);
insert into Results values('S10','R101',18833);
insert into Results values('S10','R102',18833);
insert into Results values('S10','R103',18833);
insert into Results values('S10','R104',18833);
insert into Results values('S10','R105',19101);
insert into Results values('S10','R106',18833);
insert into Results values('S10','R107',19101);
insert into Results values('S10','R108',17682);
insert into Results values('S10','R109',18833);
insert into Results values('S10','R110',18833);
insert into Results values('S10','R111',18090);
insert into Results values('S10','R112',19101);
insert into Results values('S10','R113',18331);
insert into Results values('S10','R115',19101);
insert into Results values('S10','R116',17406);
insert into Results values('S10','R117',19101);
insert into Results values('S10','R118',17382);
insert into Results values('S10','R119',17733);
insert into Results values('S10','R121',18090);
insert into Results values('S10','R122',18331);
insert into Results values('S10','R123',19101);
insert into Results values('S10','R124',18833);
insert into Results values('S10','R125',17733);
insert into Results values('S10','R126',17887);
insert into Results values('S10','R127',17350);
insert into Results values('S10','R128',18331);
insert into Results values('S10','R129',18331);
insert into Results values('S10','R130',17733);
insert into Results values('S10','R131',18833);
insert into Results values('S10','R132',17382);
insert into Results values('S10','R133',18833);
insert into Results values('S10','R134',18331);
insert into Results values('S10','R135',18331);
insert into Results values('S10','R136',18090);
insert into Results values('S10','R137',17887);
insert into Results values('S10','R138',19101);
insert into Results values('S10','R139',19101);
insert into Results values('S10','R140',17209);
insert into Results values('S10','R141',18833);
insert into Results values('S10','R142',17406);
insert into Results values('S10','R145',17382);
insert into Results values('S10','R146',17887);
insert into Results values('S10','R147',17382);
insert into Results values('S10','R150',18090);
insert into Results values('S10','R151',18833);
insert into Results values('S10','R152',19101);
insert into Results values('S10','R154',18833);
insert into Results values('S10','R155',19101);
insert into Results values('S10','R156',18090);
insert into Results values('S10','R157',18833);
insert into Results values('S10','R158',17887);
insert into Results values('S10','R159',19101);
insert into Results values('S10','R160',18090);
insert into Results values('S10','R161',17733);
insert into Results values('S10','R162',18833);
insert into Results values('S10','R163',17382);
insert into Results values('S10','R164',18833);
insert into Results values('S10','R165',17358);
insert into Results values('S10','R166',17432);
insert into Results values('S10','R167',18833);
insert into Results values('S10','R168',18833);
insert into Results values('S10','R169',18833);
insert into Results values('S10','R170',17406);
insert into Results values('S10','R171',17733);
insert into Results values('S10','R172',17406);
insert into Results values('S10','R173',18331);
insert into Results values('S10','R174',19101);
insert into Results values('S10','R175',17216);
insert into Results values('S10','R176',19101);
insert into Results values('S10','R178',18331);
insert into Results values('S10','R179',18833);
insert into Results values('S10','R180',18090);
insert into Results values('S10','R181',18090);
insert into Results values('S10','R182',19101);
insert into Results values('S10','R183',19101);
insert into Results values('S10','R184',18833);
insert into Results values('S10','R185',19101);
insert into Results values('S10','R186',19101);
insert into Results values('S10','R187',19101);
insert into Results values('S10','R188',18833);
insert into Results values('S10','R189',19101);
insert into Results values('S10','R191',18833);
insert into Results values('S10','R192',18833);
insert into Results values('S10','R194',19101);
insert into Results values('S10','R195',18833);
insert into Results values('S10','R196',19101);
insert into Results values('S10','R197',18833);
insert into Results values('S10','R198',19101);
insert into Results values('S11','R1',17177);
insert into Results values('S11','R2',19034);
insert into Results values('S11','R3',19034);
insert into Results values('S11','R4',19034);
insert into Results values('S11','R5',18145);
insert into Results values('S11','R6',18145);
insert into Results values('S11','R7',18806);
insert into Results values('S11','R8',18145);
insert into Results values('S11','R9',17177);
insert into Results values('S11','R10',17177);
insert into Results values('S11','R12',19034);
insert into Results values('S11','R13',17267);
insert into Results values('S11','R14',17267);
insert into Results values('S11','R15',17889);
insert into Results values('S11','R16',19034);
insert into Results values('S11','R17',19034);
insert into Results values('S11','R18',17267);
insert into Results values('S11','R19',18724);
insert into Results values('S11','R20',19085);
insert into Results values('S11','R21',19034);
insert into Results values('S11','R22',17889);
insert into Results values('S11','R23',19049);
insert into Results values('S11','R24',19034);
insert into Results values('S11','R25',18214);
insert into Results values('S11','R26',18582);
insert into Results values('S11','R27',17034);
insert into Results values('S11','R30',18577);
insert into Results values('S11','R31',18577);
insert into Results values('S11','R32',17758);
insert into Results values('S11','R33',19034);
insert into Results values('S11','R35',18806);
insert into Results values('S11','R37',17889);
insert into Results values('S11','R38',19034);
insert into Results values('S11','R39',19034);
insert into Results values('S11','R42',18472);
insert into Results values('S11','R44',18568);
insert into Results values('S11','R46',17091);
insert into Results values('S11','R47',18145);
insert into Results values('S11','R48',18806);
insert into Results values('S11','R49',19034);
insert into Results values('S11','R50',17713);
insert into Results values('S11','R51',19034);
insert into Results values('S11','R52',19034);
insert into Results values('S11','R53',18472);
insert into Results values('S11','R54',19089);
insert into Results values('S11','R57',19100);
insert into Results values('S11','R59',17889);
insert into Results values('S11','R60',18462);
insert into Results values('S11','R61',19034);
insert into Results values('S11','R62',17984);
insert into Results values('S11','R63',19034);
insert into Results values('S11','R64',18458);
insert into Results values('S11','R65',18344);
insert into Results values('S11','R66',17784);
insert into Results values('S11','R68',19034);
insert into Results values('S11','R69',17655);
insert into Results values('S11','R70',18806);
insert into Results values('S11','R71',18684);
insert into Results values('S11','R72',17411);
insert into Results values('S11','R73',18582);
insert into Results values('S11','R75',19034);
insert into Results values('S11','R76',19034);
insert into Results values('S11','R77',19034);
insert into Results values('S11','R78',19049);
insert into Results values('S11','R79',19058);
insert into Results values('S11','R80',18806);
insert into Results values('S11','R81',18472);
insert into Results values('S11','R82',17267);
insert into Results values('S11','R84',19034);
insert into Results values('S11','R85',18472);
insert into Results values('S11','R86',17917);
insert into Results values('S11','R87',19034);
insert into Results values('S11','R88',18472);
insert into Results values('S11','R89',19034);
insert into Results values('S11','R90',19034);
insert into Results values('S11','R91',17091);
insert into Results values('S11','R92',19034);
insert into Results values('S11','R93',19049);
insert into Results values('S11','R94',19049);
insert into Results values('S11','R95',17089);
insert into Results values('S11','R96',18582);
insert into Results values('S11','R97',17984);
insert into Results values('S11','R98',18145);
insert into Results values('S11','R100',17091);
insert into Results values('S11','R101',19034);
insert into Results values('S11','R102',18605);
insert into Results values('S11','R103',19034);
insert into Results values('S11','R104',19034);
insert into Results values('S11','R105',19034);
insert into Results values('S11','R106',19034);
insert into Results values('S11','R107',19049);
insert into Results values('S11','R108',17889);
insert into Results values('S11','R110',19034);
insert into Results values('S11','R111',18377);
insert into Results values('S11','R113',18806);
insert into Results values('S11','R116',17887);
insert into Results values('S11','R117',19229);
insert into Results values('S11','R118',17889);
insert into Results values('S11','R119',17962);
insert into Results values('S11','R121',18472);
insert into Results values('S11','R122',19034);
insert into Results values('S11','R123',19129);
insert into Results values('S11','R124',19034);
insert into Results values('S11','R125',17889);
insert into Results values('S11','R126',17889);
insert into Results values('S11','R127',17820);
insert into Results values('S11','R128',18806);
insert into Results values('S11','R129',19089);
insert into Results values('S11','R130',18979);
insert into Results values('S11','R131',19034);
insert into Results values('S11','R132',17089);
insert into Results values('S11','R133',18979);
insert into Results values('S11','R134',17889);
insert into Results values('S11','R135',18806);
insert into Results values('S11','R136',18806);
insert into Results values('S11','R137',17758);
insert into Results values('S11','R140',19034);
insert into Results values('S11','R141',19049);
insert into Results values('S11','R142',17481);
insert into Results values('S11','R145',17535);
insert into Results values('S11','R146',17267);
insert into Results values('S11','R147',17887);
insert into Results values('S11','R150',18173);
insert into Results values('S11','R151',17167);
insert into Results values('S11','R152',18806);
insert into Results values('S11','R154',19034);
insert into Results values('S11','R155',19125);
insert into Results values('S11','R156',19034);
insert into Results values('S11','R157',19034);
insert into Results values('S11','R158',19034);
insert into Results values('S11','R159',19034);
insert into Results values('S11','R160',18979);
insert into Results values('S11','R161',17102);
insert into Results values('S11','R162',18979);
insert into Results values('S11','R163',17152);
insert into Results values('S11','R164',19034);
insert into Results values('S11','R165',18806);
insert into Results values('S11','R166',19034);
insert into Results values('S11','R167',19034);
insert into Results values('S11','R168',19034);
insert into Results values('S11','R169',17820);
insert into Results values('S11','R170',17267);
insert into Results values('S11','R171',17655);
insert into Results values('S11','R172',18472);
insert into Results values('S11','R173',19034);
insert into Results values('S11','R174',17889);
insert into Results values('S11','R175',19034);
insert into Results values('S11','R176',19082);
insert into Results values('S11','R178',18806);
insert into Results values('S11','R179',19034);
insert into Results values('S11','R180',17516);
insert into Results values('S11','R181',19034);
insert into Results values('S11','R182',19034);
insert into Results values('S11','R183',19034);
insert into Results values('S11','R184',19034);
insert into Results values('S11','R185',19034);
insert into Results values('S11','R186',19034);
insert into Results values('S11','R187',19034);
insert into Results values('S11','R188',19034);
insert into Results values('S11','R189',17889);
insert into Results values('S11','R191',19034);
insert into Results values('S11','R192',19034);
insert into Results values('S11','R194',19034);
insert into Results values('S11','R195',19034);
insert into Results values('S11','R196',19034);
insert into Results values('S11','R197',19034);
insert into Results values('S11','R198',19049);
insert into Results values('S12','R1',21040);
insert into Results values('S12','R2',21181);
insert into Results values('S12','R3',21181);
insert into Results values('S12','R4',21040);
insert into Results values('S12','R5',21100);
insert into Results values('S12','R6',21181);
insert into Results values('S12','R7',21181);
insert into Results values('S12','R8',21114);
insert into Results values('S12','R9',21040);
insert into Results values('S12','R10',21040);
insert into Results values('S12','R12',21101);
insert into Results values('S12','R13',21040);
insert into Results values('S12','R14',21040);
insert into Results values('S12','R15',21040);
insert into Results values('S12','R16',21155);
insert into Results values('S12','R17',21040);
insert into Results values('S12','R18',21040);
insert into Results values('S12','R19',21285);
insert into Results values('S12','R20',21181);
insert into Results values('S12','R21',21285);
insert into Results values('S12','R22',20571);
insert into Results values('S12','R23',21285);
insert into Results values('S12','R24',21202);
insert into Results values('S12','R25',21721);
insert into Results values('S12','R26',21285);
insert into Results values('S12','R27',21040);
insert into Results values('S12','R30',21114);
insert into Results values('S12','R31',21285);
insert into Results values('S12','R32',20571);
insert into Results values('S12','R33',21285);
insert into Results values('S12','R35',21285);
insert into Results values('S12','R37',21040);
insert into Results values('S12','R38',21285);
insert into Results values('S12','R39',21181);
insert into Results values('S12','R42',21181);
insert into Results values('S12','R44',21114);
insert into Results values('S12','R46',21040);
insert into Results values('S12','R47',21285);
insert into Results values('S12','R48',21285);
insert into Results values('S12','R49',21202);
insert into Results values('S12','R50',21040);
insert into Results values('S12','R51',21149);
insert into Results values('S12','R52',21039);
insert into Results values('S12','R53',21202);
insert into Results values('S12','R54',21285);
insert into Results values('S12','R57',21285);
insert into Results values('S12','R59',21181);
insert into Results values('S12','R60',20566);
insert into Results values('S12','R61',21285);
insert into Results values('S12','R62',21285);
insert into Results values('S12','R63',21285);
insert into Results values('S12','R64',20566);
insert into Results values('S12','R65',21085);
insert into Results values('S12','R66',21085);
insert into Results values('S12','R68',21040);
insert into Results values('S12','R69',21285);
insert into Results values('S12','R70',21101);
insert into Results values('S12','R71',21085);
insert into Results values('S12','R72',21040);
insert into Results values('S12','R73',21285);
insert into Results values('S12','R75',21101);
insert into Results values('S12','R76',21285);
insert into Results values('S12','R77',21181);
insert into Results values('S12','R78',21285);
insert into Results values('S12','R79',21285);
insert into Results values('S12','R81',21181);
insert into Results values('S12','R82',21040);
insert into Results values('S12','R84',21047);
insert into Results values('S12','R85',21285);
insert into Results values('S12','R86',21114);
insert into Results values('S12','R87',21186);
insert into Results values('S12','R88',21077);
insert into Results values('S12','R89',21186);
insert into Results values('S12','R90',21040);
insert into Results values('S12','R91',21040);
insert into Results values('S12','R92',21100);
insert into Results values('S12','R93',21285);
insert into Results values('S12','R94',21285);
insert into Results values('S12','R95',21040);
insert into Results values('S12','R96',21202);
insert into Results values('S12','R97',21285);
insert into Results values('S12','R98',21047);
insert into Results values('S12','R100',21040);
insert into Results values('S12','R101',21077);
insert into Results values('S12','R102',21181);
insert into Results values('S12','R103',21285);
insert into Results values('S12','R104',21155);
insert into Results values('S12','R105',21285);
insert into Results values('S12','R106',21040);
insert into Results values('S12','R107',21285);
insert into Results values('S12','R108',21040);
insert into Results values('S12','R110',21114);
insert into Results values('S12','R111',21063);
insert into Results values('S12','R113',21040);
insert into Results values('S12','R116',21285);
insert into Results values('S12','R117',21285);
insert into Results values('S12','R118',21101);
insert into Results values('S12','R119',21077);
insert into Results values('S12','R121',21181);
insert into Results values('S12','R122',21181);
insert into Results values('S12','R123',21202);
insert into Results values('S12','R124',21040);
insert into Results values('S12','R125',21181);
insert into Results values('S12','R126',21040);
insert into Results values('S12','R127',21114);
insert into Results values('S12','R128',21063);
insert into Results values('S12','R129',21181);
insert into Results values('S12','R130',21285);
insert into Results values('S12','R131',21181);
insert into Results values('S12','R132',21040);
insert into Results values('S12','R133',21285);
insert into Results values('S12','R134',21285);
insert into Results values('S12','R135',21285);
insert into Results values('S12','R137',21285);
insert into Results values('S12','R140',21285);
insert into Results values('S12','R141',21181);
insert into Results values('S12','R142',21063);
insert into Results values('S12','R145',21085);
insert into Results values('S12','R146',21040);
insert into Results values('S12','R147',21040);
insert into Results values('S12','R150',21114);
insert into Results values('S12','R151',21285);
insert into Results values('S12','R152',21285);
insert into Results values('S12','R154',21202);
insert into Results values('S12','R155',21285);
insert into Results values('S12','R156',21285);
insert into Results values('S12','R157',21285);
insert into Results values('S12','R158',21285);
insert into Results values('S12','R159',21040);
insert into Results values('S12','R160',21285);
insert into Results values('S12','R161',21040);
insert into Results values('S12','R162',21285);
insert into Results values('S12','R163',21040);
insert into Results values('S12','R164',21285);
insert into Results values('S12','R165',21155);
insert into Results values('S12','R166',21063);
insert into Results values('S12','R167',21181);
insert into Results values('S12','R168',21285);
insert into Results values('S12','R169',21155);
insert into Results values('S12','R170',20571);
insert into Results values('S12','R171',21285);
insert into Results values('S12','R172',21114);
insert into Results values('S12','R173',21181);
insert into Results values('S12','R174',21101);
insert into Results values('S12','R175',21285);
insert into Results values('S12','R176',21114);
insert into Results values('S12','R178',21285);
insert into Results values('S12','R179',21181);
insert into Results values('S12','R180',21040);
insert into Results values('S12','R181',21077);
insert into Results values('S12','R182',21285);
insert into Results values('S12','R183',21103);
insert into Results values('S12','R184',21039);
insert into Results values('S12','R185',21040);
insert into Results values('S12','R186',21144);
insert into Results values('S12','R187',21181);
insert into Results values('S12','R188',21181);
insert into Results values('S12','R189',21181);
insert into Results values('S12','R191',21114);
insert into Results values('S12','R192',21040);
insert into Results values('S12','R194',21202);
insert into Results values('S12','R195',21114);
insert into Results values('S12','R196',21114);
insert into Results values('S12','R197',21285);
insert into Results values('S13','R1',17879);
insert into Results values('S13','R2',18723);
insert into Results values('S13','R3',18723);
insert into Results values('S13','R4',17879);
insert into Results values('S13','R5',18630);
insert into Results values('S13','R6',18362);
insert into Results values('S13','R7',18630);
insert into Results values('S13','R8',18630);
insert into Results values('S13','R9',17879);
insert into Results values('S13','R10',17879);
insert into Results values('S13','R13',17879);
insert into Results values('S13','R14',17879);
insert into Results values('S13','R15',17879);
insert into Results values('S13','R16',18395);
insert into Results values('S13','R17',18395);
insert into Results values('S13','R18',17879);
insert into Results values('S13','R19',17984);
insert into Results values('S13','R20',17984);
insert into Results values('S13','R21',18630);
insert into Results values('S13','R22',18723);
insert into Results values('S13','R23',18630);
insert into Results values('S13','R24',18630);
insert into Results values('S13','R25',18731);
insert into Results values('S13','R26',18395);
insert into Results values('S13','R27',17879);
insert into Results values('S13','R30',18723);
insert into Results values('S13','R31',18723);
insert into Results values('S13','R32',17879);
insert into Results values('S13','R33',18395);
insert into Results values('S13','R35',18630);
insert into Results values('S13','R37',17879);
insert into Results values('S13','R38',18723);
insert into Results values('S13','R39',17879);
insert into Results values('S13','R42',18723);
insert into Results values('S13','R44',18723);
insert into Results values('S13','R46',17879);
insert into Results values('S13','R47',18723);
insert into Results values('S13','R48',18630);
insert into Results values('S13','R49',18723);
insert into Results values('S13','R50',18630);
insert into Results values('S13','R51',18395);
insert into Results values('S13','R52',17879);
insert into Results values('S13','R53',18723);
insert into Results values('S13','R54',18630);
insert into Results values('S13','R57',18630);
insert into Results values('S13','R59',18723);
insert into Results values('S13','R60',18723);
insert into Results values('S13','R61',18723);
insert into Results values('S13','R62',17879);
insert into Results values('S13','R63',18723);
insert into Results values('S13','R64',18723);
insert into Results values('S13','R65',18395);
insert into Results values('S13','R66',17879);
insert into Results values('S13','R68',17879);
insert into Results values('S13','R69',18723);
insert into Results values('S13','R70',18630);
insert into Results values('S13','R71',18723);
insert into Results values('S13','R72',17879);
insert into Results values('S13','R73',18723);
insert into Results values('S13','R75',18395);
insert into Results values('S13','R76',18723);
insert into Results values('S13','R77',18630);
insert into Results values('S13','R78',18723);
insert into Results values('S13','R79',18723);
insert into Results values('S13','R81',18395);
insert into Results values('S13','R82',17879);
insert into Results values('S13','R84',18630);
insert into Results values('S13','R85',18723);
insert into Results values('S13','R86',18395);
insert into Results values('S13','R87',18395);
insert into Results values('S13','R88',18723);
insert into Results values('S13','R89',18630);
insert into Results values('S13','R90',17879);
insert into Results values('S13','R91',17879);
insert into Results values('S13','R92',17879);
insert into Results values('S13','R93',18395);
insert into Results values('S13','R94',18630);
insert into Results values('S13','R95',17879);
insert into Results values('S13','R96',18630);
insert into Results values('S13','R97',18723);
insert into Results values('S13','R98',17888);
insert into Results values('S13','R100',17879);
insert into Results values('S13','R101',17958);
insert into Results values('S13','R102',18395);
insert into Results values('S13','R103',17879);
insert into Results values('S13','R104',17947);
insert into Results values('S13','R105',18630);
insert into Results values('S13','R106',17879);
insert into Results values('S13','R107',18395);
insert into Results values('S13','R108',18723);
insert into Results values('S13','R110',18723);
insert into Results values('S13','R111',18723);
insert into Results values('S13','R113',17879);
insert into Results values('S13','R116',18723);
insert into Results values('S13','R117',18630);
insert into Results values('S13','R118',17879);
insert into Results values('S13','R119',17879);
insert into Results values('S13','R121',18723);
insert into Results values('S13','R122',18723);
insert into Results values('S13','R123',18630);
insert into Results values('S13','R124',18723);
insert into Results values('S13','R125',18630);
insert into Results values('S13','R126',17879);
insert into Results values('S13','R127',18630);
insert into Results values('S13','R128',17879);
insert into Results values('S13','R129',18395);
insert into Results values('S13','R130',18395);
insert into Results values('S13','R131',18723);
insert into Results values('S13','R132',17879);
insert into Results values('S13','R133',18630);
insert into Results values('S13','R134',18395);
insert into Results values('S13','R135',18723);
insert into Results values('S13','R137',18630);
insert into Results values('S13','R140',17879);
insert into Results values('S13','R141',18395);
insert into Results values('S13','R142',18395);
insert into Results values('S13','R145',18723);
insert into Results values('S13','R146',18723);
insert into Results values('S13','R147',17879);
insert into Results values('S13','R150',17879);
insert into Results values('S13','R151',18723);
insert into Results values('S13','R152',18723);
insert into Results values('S13','R154',18395);
insert into Results values('S13','R155',18395);
insert into Results values('S13','R156',18723);
insert into Results values('S13','R157',18723);
insert into Results values('S13','R158',18395);
insert into Results values('S13','R159',18723);
insert into Results values('S13','R160',18723);
insert into Results values('S13','R161',17879);
insert into Results values('S13','R162',18723);
insert into Results values('S13','R163',17879);
insert into Results values('S13','R164',18395);
insert into Results values('S13','R165',18723);
insert into Results values('S13','R166',18395);
insert into Results values('S13','R167',18723);
insert into Results values('S13','R168',18630);
insert into Results values('S13','R169',18630);
insert into Results values('S13','R170',17879);
insert into Results values('S13','R171',17925);
insert into Results values('S13','R172',18723);
insert into Results values('S13','R173',18395);
insert into Results values('S13','R174',17879);
insert into Results values('S13','R175',18630);
insert into Results values('S13','R176',18395);
insert into Results values('S13','R178',18395);
insert into Results values('S13','R179',18395);
insert into Results values('S13','R180',17879);
insert into Results values('S13','R181',17879);
insert into Results values('S13','R182',18028);
insert into Results values('S13','R183',18395);
insert into Results values('S13','R184',18630);
insert into Results values('S13','R185',17879);
insert into Results values('S13','R186',18630);
insert into Results values('S13','R187',18723);
insert into Results values('S13','R188',18630);
insert into Results values('S13','R189',18630);
insert into Results values('S13','R191',18550);
insert into Results values('S13','R192',18395);
insert into Results values('S13','R194',18723);
insert into Results values('S13','R195',18630);
insert into Results values('S13','R196',17879);
insert into Results values('S13','R197',18630);
insert into Results values('S14','R1',18524);
insert into Results values('S14','R2',18524);
insert into Results values('S14','R3',18990);
insert into Results values('S14','R4',17476);
insert into Results values('S14','R5',18524);
insert into Results values('S14','R6',18524);
insert into Results values('S14','R7',18524);
insert into Results values('S14','R8',18524);
insert into Results values('S14','R9',18524);
insert into Results values('S14','R10',18524);
insert into Results values('S14','R13',18524);
insert into Results values('S14','R14',18524);
insert into Results values('S14','R15',18524);
insert into Results values('S14','R16',18524);
insert into Results values('S14','R17',18708);
insert into Results values('S14','R18',18524);
insert into Results values('S14','R19',18536);
insert into Results values('S14','R20',19127);
insert into Results values('S14','R21',19127);
insert into Results values('S14','R22',18322);
insert into Results values('S14','R23',19139);
insert into Results values('S14','R24',19139);
insert into Results values('S14','R25',19342);
insert into Results values('S14','R26',18524);
insert into Results values('S14','R27',18524);
insert into Results values('S14','R30',18842);
insert into Results values('S14','R31',17476);
insert into Results values('S14','R32',18524);
insert into Results values('S14','R33',18708);
insert into Results values('S14','R35',19127);
insert into Results values('S14','R37',18524);
insert into Results values('S14','R38',19127);
insert into Results values('S14','R39',19127);
insert into Results values('S14','R42',18990);
insert into Results values('S14','R44',18708);
insert into Results values('S14','R46',18524);
insert into Results values('S14','R47',18524);
insert into Results values('S14','R48',18524);
insert into Results values('S14','R49',18524);
insert into Results values('S14','R50',19127);
insert into Results values('S14','R51',18524);
insert into Results values('S14','R52',17476);
insert into Results values('S14','R53',18524);
insert into Results values('S14','R54',19127);
insert into Results values('S14','R57',19127);
insert into Results values('S14','R59',18708);
insert into Results values('S14','R60',19127);
insert into Results values('S14','R61',19127);
insert into Results values('S14','R62',19127);
insert into Results values('S14','R63',19127);
insert into Results values('S14','R64',18708);
insert into Results values('S14','R65',18524);
insert into Results values('S14','R66',18524);
insert into Results values('S14','R68',19127);
insert into Results values('S14','R69',19127);
insert into Results values('S14','R70',17600);
insert into Results values('S14','R71',19127);
insert into Results values('S14','R72',18524);
insert into Results values('S14','R73',19127);
insert into Results values('S14','R75',18842);
insert into Results values('S14','R76',18708);
insert into Results values('S14','R77',19127);
insert into Results values('S14','R78',19127);
insert into Results values('S14','R79',18524);
insert into Results values('S14','R81',19127);
insert into Results values('S14','R82',18524);
insert into Results values('S14','R84',19127);
insert into Results values('S14','R85',18524);
insert into Results values('S14','R86',18990);
insert into Results values('S14','R87',19127);
insert into Results values('S14','R88',18990);
insert into Results values('S14','R89',19127);
insert into Results values('S14','R90',18524);
insert into Results values('S14','R91',18524);
insert into Results values('S14','R92',18524);
insert into Results values('S14','R93',19127);
insert into Results values('S14','R94',19127);
insert into Results values('S14','R95',18524);
insert into Results values('S14','R96',18524);
insert into Results values('S14','R97',18524);
insert into Results values('S14','R98',18524);
insert into Results values('S14','R100',18524);
insert into Results values('S14','R101',19127);
insert into Results values('S14','R102',18524);
insert into Results values('S14','R103',19127);
insert into Results values('S14','R104',18524);
insert into Results values('S14','R105',19127);
insert into Results values('S14','R106',19127);
insert into Results values('S14','R107',19127);
insert into Results values('S14','R108',18524);
insert into Results values('S14','R110',19139);
insert into Results values('S14','R111',18524);
insert into Results values('S14','R113',19127);
insert into Results values('S14','R116',19127);
insert into Results values('S14','R117',19127);
insert into Results values('S14','R118',18524);
insert into Results values('S14','R119',18708);
insert into Results values('S14','R121',18708);
insert into Results values('S14','R122',19127);
insert into Results values('S14','R123',19127);
insert into Results values('S14','R124',18990);
insert into Results values('S14','R125',18990);
insert into Results values('S14','R126',17720);
insert into Results values('S14','R127',17476);
insert into Results values('S14','R128',18708);
insert into Results values('S14','R129',19127);
insert into Results values('S14','R130',18524);
insert into Results values('S14','R131',19127);
insert into Results values('S14','R132',18524);
insert into Results values('S14','R133',18708);
insert into Results values('S14','R134',19127);
insert into Results values('S14','R135',18708);
insert into Results values('S14','R137',17722);
insert into Results values('S14','R140',17429);
insert into Results values('S14','R141',19127);
insert into Results values('S14','R142',18842);
insert into Results values('S14','R145',18524);
insert into Results values('S14','R146',18524);
insert into Results values('S14','R147',18524);
insert into Results values('S14','R150',18524);
insert into Results values('S14','R151',19127);
insert into Results values('S14','R152',19127);
insert into Results values('S14','R154',19127);
insert into Results values('S14','R155',19127);
insert into Results values('S14','R156',19127);
insert into Results values('S14','R157',19127);
insert into Results values('S14','R158',19127);
insert into Results values('S14','R159',19127);
insert into Results values('S14','R160',17600);
insert into Results values('S14','R161',18524);
insert into Results values('S14','R162',18708);
insert into Results values('S14','R163',18524);
insert into Results values('S14','R164',19127);
insert into Results values('S14','R165',18524);
insert into Results values('S14','R166',18524);
insert into Results values('S14','R167',19127);
insert into Results values('S14','R168',18524);
insert into Results values('S14','R169',18524);
insert into Results values('S14','R171',19127);
insert into Results values('S14','R172',18524);
insert into Results values('S14','R173',19127);
insert into Results values('S14','R174',18990);
insert into Results values('S14','R175',19127);
insert into Results values('S14','R176',19127);
insert into Results values('S14','R178',19127);
insert into Results values('S14','R179',17658);
insert into Results values('S14','R180',18524);
insert into Results values('S14','R181',19127);
insert into Results values('S14','R182',19127);
insert into Results values('S14','R183',19127);
insert into Results values('S14','R184',19127);
insert into Results values('S14','R185',19127);
insert into Results values('S14','R186',19127);
insert into Results values('S14','R187',19127);
insert into Results values('S14','R188',19127);
insert into Results values('S14','R189',18524);
insert into Results values('S14','R191',19127);
insert into Results values('S14','R192',19127);
insert into Results values('S14','R194',19127);
insert into Results values('S14','R195',19127);
insert into Results values('S14','R196',19127);
insert into Results values('S14','R197',19127);
insert into Results values('S15','R1',13925);
insert into Results values('S15','R2',13925);
insert into Results values('S15','R3',13925);
insert into Results values('S15','R4',13925);
insert into Results values('S15','R5',13925);
insert into Results values('S15','R6',13925);
insert into Results values('S15','R7',13925);
insert into Results values('S15','R8',13925);
insert into Results values('S15','R9',13925);
insert into Results values('S15','R10',13925);
insert into Results values('S15','R13',13925);
insert into Results values('S15','R14',13925);
insert into Results values('S15','R15',13925);
insert into Results values('S15','R16',13925);
insert into Results values('S15','R17',13956);
insert into Results values('S15','R18',13925);
insert into Results values('S15','R19',13227);
insert into Results values('S15','R20',13925);
insert into Results values('S15','R22',13925);
insert into Results values('S15','R23',13925);
insert into Results values('S15','R25',13970);
insert into Results values('S15','R26',13925);
insert into Results values('S15','R27',13925);
insert into Results values('S15','R30',13925);
insert into Results values('S15','R31',13925);
insert into Results values('S15','R32',13925);
insert into Results values('S15','R33',13925);
insert into Results values('S15','R35',13925);
insert into Results values('S15','R37',13925);
insert into Results values('S15','R38',13925);
insert into Results values('S15','R39',13925);
insert into Results values('S15','R42',13925);
insert into Results values('S15','R44',13925);
insert into Results values('S15','R46',13925);
insert into Results values('S15','R47',13925);
insert into Results values('S15','R48',13925);
insert into Results values('S15','R49',13925);
insert into Results values('S15','R50',13925);
insert into Results values('S15','R51',13925);
insert into Results values('S15','R52',13925);
insert into Results values('S15','R53',13925);
insert into Results values('S15','R54',14146);
insert into Results values('S15','R57',13925);
insert into Results values('S15','R59',13925);
insert into Results values('S15','R60',13956);
insert into Results values('S15','R61',13925);
insert into Results values('S15','R62',13215);
insert into Results values('S15','R63',13956);
insert into Results values('S15','R64',13925);
insert into Results values('S15','R65',13925);
insert into Results values('S15','R66',13925);
insert into Results values('S15','R68',13925);
insert into Results values('S15','R69',13925);
insert into Results values('S15','R70',13925);
insert into Results values('S15','R71',13925);
insert into Results values('S15','R72',13925);
insert into Results values('S15','R73',13925);
insert into Results values('S15','R75',13283);
insert into Results values('S15','R76',13925);
insert into Results values('S15','R77',13925);
insert into Results values('S15','R78',13925);
insert into Results values('S15','R79',13925);
insert into Results values('S15','R81',13925);
insert into Results values('S15','R82',13925);
insert into Results values('S15','R84',13925);
insert into Results values('S15','R85',13925);
insert into Results values('S15','R86',13925);
insert into Results values('S15','R87',13925);
insert into Results values('S15','R88',13925);
insert into Results values('S15','R89',13925);
insert into Results values('S15','R90',13925);
insert into Results values('S15','R91',13925);
insert into Results values('S15','R92',13925);
insert into Results values('S15','R93',13925);
insert into Results values('S15','R94',13925);
insert into Results values('S15','R95',13925);
insert into Results values('S15','R96',13925);
insert into Results values('S15','R97',13925);
insert into Results values('S15','R98',13925);
insert into Results values('S15','R100',13925);
insert into Results values('S15','R101',13925);
insert into Results values('S15','R102',13925);
insert into Results values('S15','R103',13925);
insert into Results values('S15','R104',13925);
insert into Results values('S15','R105',13925);
insert into Results values('S15','R106',13925);
insert into Results values('S15','R107',13925);
insert into Results values('S15','R108',13925);
insert into Results values('S15','R110',13925);
insert into Results values('S15','R111',13925);
insert into Results values('S15','R113',13925);
insert into Results values('S15','R116',13925);
insert into Results values('S15','R118',13925);
insert into Results values('S15','R119',13925);
insert into Results values('S15','R121',13925);
insert into Results values('S15','R122',13925);
insert into Results values('S15','R123',13925);
insert into Results values('S15','R124',13956);
insert into Results values('S15','R125',13925);
insert into Results values('S15','R126',13925);
insert into Results values('S15','R127',13925);
insert into Results values('S15','R128',13215);
insert into Results values('S15','R130',13925);
insert into Results values('S15','R131',13925);
insert into Results values('S15','R132',13925);
insert into Results values('S15','R133',13925);
insert into Results values('S15','R134',13925);
insert into Results values('S15','R135',13925);
insert into Results values('S15','R137',13925);
insert into Results values('S15','R140',13925);
insert into Results values('S15','R141',13968);
insert into Results values('S15','R142',13925);
insert into Results values('S15','R145',13925);
insert into Results values('S15','R146',13925);
insert into Results values('S15','R147',13925);
insert into Results values('S15','R150',13925);
insert into Results values('S15','R151',13925);
insert into Results values('S15','R152',13925);
insert into Results values('S15','R154',13925);
insert into Results values('S15','R155',13925);
insert into Results values('S15','R156',13925);
insert into Results values('S15','R157',13925);
insert into Results values('S15','R158',13925);
insert into Results values('S15','R159',13925);
insert into Results values('S15','R160',13925);
insert into Results values('S15','R161',13925);
insert into Results values('S15','R162',13227);
insert into Results values('S15','R163',13925);
insert into Results values('S15','R164',13925);
insert into Results values('S15','R165',13925);
insert into Results values('S15','R166',13925);
insert into Results values('S15','R167',13925);
insert into Results values('S15','R168',13925);
insert into Results values('S15','R169',13925);
insert into Results values('S15','R171',13970);
insert into Results values('S15','R172',13925);
insert into Results values('S15','R174',13925);
insert into Results values('S15','R175',13236);
insert into Results values('S15','R176',13925);
insert into Results values('S15','R178',13925);
insert into Results values('S15','R179',13925);
insert into Results values('S15','R180',13925);
insert into Results values('S15','R181',13925);
insert into Results values('S15','R182',13925);
insert into Results values('S15','R183',13925);
insert into Results values('S15','R184',13925);
insert into Results values('S15','R185',13925);
insert into Results values('S15','R187',13972);
insert into Results values('S15','R188',13925);
insert into Results values('S15','R189',13925);
insert into Results values('S15','R191',13925);
insert into Results values('S15','R192',13925);
insert into Results values('S15','R194',13925);
insert into Results values('S15','R195',13955);
insert into Results values('S15','R196',13925);
insert into Results values('S15','R197',13925);
insert into Results values('S16','R1',20818);
insert into Results values('S16','R2',21100);
insert into Results values('S16','R3',21327);
insert into Results values('S16','R4',21755);
insert into Results values('S16','R5',20818);
insert into Results values('S16','R6',20818);
insert into Results values('S16','R7',21776);
insert into Results values('S16','R8',21437);
insert into Results values('S16','R9',20589);
insert into Results values('S16','R13',20589);
insert into Results values('S16','R14',20756);
insert into Results values('S16','R15',20756);
insert into Results values('S16','R16',21755);
insert into Results values('S16','R17',20360);
insert into Results values('S16','R18',20589);
insert into Results values('S16','R19',20102);
insert into Results values('S16','R20',21437);
insert into Results values('S16','R22',21940);
insert into Results values('S16','R23',21940);
insert into Results values('S16','R25',20748);
insert into Results values('S16','R26',21393);
insert into Results values('S16','R27',20630);
insert into Results values('S16','R30',21019);
insert into Results values('S16','R31',20304);
insert into Results values('S16','R32',20748);
insert into Results values('S16','R33',21755);
insert into Results values('S16','R35',20818);
insert into Results values('S16','R37',22086);
insert into Results values('S16','R39',21682);
insert into Results values('S16','R42',20756);
insert into Results values('S16','R44',20470);
insert into Results values('S16','R46',20531);
insert into Results values('S16','R47',20949);
insert into Results values('S16','R48',21755);
insert into Results values('S16','R49',22086);
insert into Results values('S16','R50',21019);
insert into Results values('S16','R51',21755);
insert into Results values('S16','R52',21437);
insert into Results values('S16','R53',21755);
insert into Results values('S16','R54',21755);
insert into Results values('S16','R57',22086);
insert into Results values('S16','R59',20470);
insert into Results values('S16','R60',22086);
insert into Results values('S16','R61',21755);
insert into Results values('S16','R62',21437);
insert into Results values('S16','R63',21913);
insert into Results values('S16','R64',21755);
insert into Results values('S16','R65',21599);
insert into Results values('S16','R66',21940);
insert into Results values('S16','R68',22134);
insert into Results values('S16','R69',21940);
insert into Results values('S16','R70',21755);
insert into Results values('S16','R71',21940);
insert into Results values('S16','R72',20589);
insert into Results values('S16','R73',21183);
insert into Results values('S16','R75',21755);
insert into Results values('S16','R76',22086);
insert into Results values('S16','R77',22086);
insert into Results values('S16','R78',22720);
insert into Results values('S16','R79',22086);
insert into Results values('S16','R81',21755);
insert into Results values('S16','R82',21056);
insert into Results values('S16','R84',22086);
insert into Results values('S16','R85',20380);
insert into Results values('S16','R86',21056);
insert into Results values('S16','R87',22086);
insert into Results values('S16','R88',21437);
insert into Results values('S16','R89',21437);
insert into Results values('S16','R90',22086);
insert into Results values('S16','R91',20531);
insert into Results values('S16','R92',21755);
insert into Results values('S16','R93',22086);
insert into Results values('S16','R94',22086);
insert into Results values('S16','R95',20531);
insert into Results values('S16','R96',21437);
insert into Results values('S16','R97',20756);
insert into Results values('S16','R98',21327);
insert into Results values('S16','R100',20589);
insert into Results values('S16','R101',22086);
insert into Results values('S16','R102',21755);
insert into Results values('S16','R103',22086);
insert into Results values('S16','R104',21437);
insert into Results values('S16','R105',22086);
insert into Results values('S16','R106',22134);
insert into Results values('S16','R107',22086);
insert into Results values('S16','R108',20748);
insert into Results values('S16','R110',21755);
insert into Results values('S16','R111',20818);
insert into Results values('S16','R113',21755);
insert into Results values('S16','R116',20818);
insert into Results values('S16','R118',20756);
insert into Results values('S16','R119',20470);
insert into Results values('S16','R122',21755);
insert into Results values('S16','R123',22086);
insert into Results values('S16','R124',21776);
insert into Results values('S16','R125',21437);
insert into Results values('S16','R126',20756);
insert into Results values('S16','R127',21019);
insert into Results values('S16','R128',21437);
insert into Results values('S16','R130',21755);
insert into Results values('S16','R131',21436);
insert into Results values('S16','R132',20703);
insert into Results values('S16','R133',21755);
insert into Results values('S16','R134',21755);
insert into Results values('S16','R135',22086);
insert into Results values('S16','R137',20818);
insert into Results values('S16','R140',21755);
insert into Results values('S16','R141',21913);
insert into Results values('S16','R142',20473);
insert into Results values('S16','R145',20589);
insert into Results values('S16','R146',20589);
insert into Results values('S16','R147',20756);
insert into Results values('S16','R150',21019);
insert into Results values('S16','R151',21379);
insert into Results values('S16','R152',21379);
insert into Results values('S16','R154',22086);
insert into Results values('S16','R155',22086);
insert into Results values('S16','R156',22086);
insert into Results values('S16','R157',21940);
insert into Results values('S16','R158',21437);
insert into Results values('S16','R159',21755);
insert into Results values('S16','R160',21183);
insert into Results values('S16','R161',20202);
insert into Results values('S16','R162',21755);
insert into Results values('S16','R163',20630);
insert into Results values('S16','R164',21755);
insert into Results values('S16','R165',21755);
insert into Results values('S16','R166',20818);
insert into Results values('S16','R167',22086);
insert into Results values('S16','R168',20818);
insert into Results values('S16','R169',20959);
insert into Results values('S16','R171',20304);
insert into Results values('S16','R172',20756);
insert into Results values('S16','R174',21437);
insert into Results values('S16','R175',21327);
insert into Results values('S16','R176',22086);
insert into Results values('S16','R178',21755);
insert into Results values('S16','R179',22086);
insert into Results values('S16','R180',21437);
insert into Results values('S16','R181',21755);
insert into Results values('S16','R182',21755);
insert into Results values('S16','R183',22086);
insert into Results values('S16','R184',21755);
insert into Results values('S16','R185',22086);
insert into Results values('S16','R187',21913);
insert into Results values('S16','R188',21437);
insert into Results values('S16','R189',22086);
insert into Results values('S16','R191',21755);
insert into Results values('S16','R192',21755);
insert into Results values('S16','R194',22086);
insert into Results values('S16','R195',21437);
insert into Results values('S16','R196',21056);
insert into Results values('S16','R197',21755);
insert into Results values('S17','R1',15261);
insert into Results values('S17','R2',16097);
insert into Results values('S17','R3',16988);
insert into Results values('S17','R4',16097);
insert into Results values('S17','R5',16097);
insert into Results values('S17','R6',16097);
insert into Results values('S17','R7',16988);
insert into Results values('S17','R8',15708);
insert into Results values('S17','R9',15185);
insert into Results values('S17','R13',15193);
insert into Results values('S17','R14',15205);
insert into Results values('S17','R15',15328);
insert into Results values('S17','R16',16467);
insert into Results values('S17','R17',16988);
insert into Results values('S17','R18',15328);
insert into Results values('S17','R19',16092);
insert into Results values('S17','R20',16097);
insert into Results values('S17','R22',16097);
insert into Results values('S17','R23',16988);
insert into Results values('S17','R25',15261);
insert into Results values('S17','R26',16467);
insert into Results values('S17','R27',15157);
insert into Results values('S17','R30',16097);
insert into Results values('S17','R31',15773);
insert into Results values('S17','R32',15381);
insert into Results values('S17','R33',16097);
insert into Results values('S17','R35',16988);
insert into Results values('S17','R37',15519);
insert into Results values('S17','R39',16988);
insert into Results values('S17','R42',16988);
insert into Results values('S17','R44',16033);
insert into Results values('S17','R46',15168);
insert into Results values('S17','R47',15288);
insert into Results values('S17','R48',16988);
insert into Results values('S17','R49',16487);
insert into Results values('S17','R50',15803);
insert into Results values('S17','R51',16531);
insert into Results values('S17','R52',16988);
insert into Results values('S17','R53',16988);
insert into Results values('S17','R54',17023);
insert into Results values('S17','R57',16988);
insert into Results values('S17','R59',15202);
insert into Results values('S17','R60',16988);
insert into Results values('S17','R61',16988);
insert into Results values('S17','R62',16988);
insert into Results values('S17','R63',16988);
insert into Results values('S17','R64',15970);
insert into Results values('S17','R65',16097);
insert into Results values('S17','R66',16097);
insert into Results values('S17','R68',16988);
insert into Results values('S17','R69',15584);
insert into Results values('S17','R70',16097);
insert into Results values('S17','R71',15537);
insert into Results values('S17','R72',15221);
insert into Results values('S17','R73',15812);
insert into Results values('S17','R75',16988);
insert into Results values('S17','R76',16988);
insert into Results values('S17','R77',16988);
insert into Results values('S17','R78',16988);
insert into Results values('S17','R79',16827);
insert into Results values('S17','R81',16097);
insert into Results values('S17','R82',16097);
insert into Results values('S17','R84',16988);
insert into Results values('S17','R85',16097);
insert into Results values('S17','R86',16097);
insert into Results values('S17','R87',16988);
insert into Results values('S17','R88',16097);
insert into Results values('S17','R89',16988);
insert into Results values('S17','R90',16097);
insert into Results values('S17','R91',15150);
insert into Results values('S17','R92',15803);
insert into Results values('S17','R93',17023);
insert into Results values('S17','R94',17023);
insert into Results values('S17','R95',15150);
insert into Results values('S17','R96',16097);
insert into Results values('S17','R97',15237);
insert into Results values('S17','R98',15261);
insert into Results values('S17','R100',15157);
insert into Results values('S17','R101',16988);
insert into Results values('S17','R102',16097);
insert into Results values('S17','R103',16988);
insert into Results values('S17','R104',16097);
insert into Results values('S17','R105',16988);
insert into Results values('S17','R106',16988);
insert into Results values('S17','R107',16988);
insert into Results values('S17','R108',15230);
insert into Results values('S17','R110',16988);
insert into Results values('S17','R111',16097);
insert into Results values('S17','R113',16988);
insert into Results values('S17','R116',16097);
insert into Results values('S17','R118',15246);
insert into Results values('S17','R119',16467);
insert into Results values('S17','R122',16827);
insert into Results values('S17','R123',16988);
insert into Results values('S17','R124',16988);
insert into Results values('S17','R125',15328);
insert into Results values('S17','R126',15677);
insert into Results values('S17','R127',15546);
insert into Results values('S17','R128',16097);
insert into Results values('S17','R130',16097);
insert into Results values('S17','R131',16988);
insert into Results values('S17','R132',15153);
insert into Results values('S17','R133',16988);
insert into Results values('S17','R134',16097);
insert into Results values('S17','R135',16988);
insert into Results values('S17','R137',16097);
insert into Results values('S17','R140',16827);
insert into Results values('S17','R141',16988);
insert into Results values('S17','R142',15773);
insert into Results values('S17','R145',15131);
insert into Results values('S17','R146',15537);
insert into Results values('S17','R147',15546);
insert into Results values('S17','R150',16097);
insert into Results values('S17','R151',16988);
insert into Results values('S17','R152',16097);
insert into Results values('S17','R154',16988);
insert into Results values('S17','R155',16988);
insert into Results values('S17','R156',16988);
insert into Results values('S17','R157',16988);
insert into Results values('S17','R158',16988);
insert into Results values('S17','R159',16988);
insert into Results values('S17','R160',16033);
insert into Results values('S17','R161',15381);
insert into Results values('S17','R162',16988);
insert into Results values('S17','R163',15261);
insert into Results values('S17','R164',16827);
insert into Results values('S17','R165',16097);
insert into Results values('S17','R166',16033);
insert into Results values('S17','R167',15546);
insert into Results values('S17','R168',16988);
insert into Results values('S17','R169',15546);
insert into Results values('S17','R171',16033);
insert into Results values('S17','R172',15630);
insert into Results values('S17','R174',16988);
insert into Results values('S17','R175',16988);
insert into Results values('S17','R176',16988);
insert into Results values('S17','R178',16988);
insert into Results values('S17','R179',16988);
insert into Results values('S17','R180',16097);
insert into Results values('S17','R181',16988);
insert into Results values('S17','R182',16988);
insert into Results values('S17','R183',16988);
insert into Results values('S17','R184',16988);
insert into Results values('S17','R185',16988);
insert into Results values('S17','R187',16988);
insert into Results values('S17','R188',16988);
insert into Results values('S17','R189',15733);
insert into Results values('S17','R191',16988);
insert into Results values('S17','R192',16988);
insert into Results values('S17','R194',16988);
insert into Results values('S17','R195',16988);
insert into Results values('S17','R196',16988);
insert into Results values('S17','R197',16988);
insert into Results values('S18','R1',17656);
insert into Results values('S18','R2',17668);
insert into Results values('S18','R3',18122);
insert into Results values('S18','R4',17668);
insert into Results values('S18','R5',17668);
insert into Results values('S18','R6',17685);
insert into Results values('S18','R7',17934);
insert into Results values('S18','R8',17656);
insert into Results values('S18','R9',17656);
insert into Results values('S18','R13',17656);
insert into Results values('S18','R14',17652);
insert into Results values('S18','R15',17656);
insert into Results values('S18','R16',17952);
insert into Results values('S18','R17',17934);
insert into Results values('S18','R18',17656);
insert into Results values('S18','R19',17783);
insert into Results values('S18','R20',17934);
insert into Results values('S18','R22',17664);
insert into Results values('S18','R23',17934);
insert into Results values('S18','R25',18367);
insert into Results values('S18','R26',17723);
insert into Results values('S18','R27',17656);
insert into Results values('S18','R30',17779);
insert into Results values('S18','R31',18367);
insert into Results values('S18','R32',17656);
insert into Results values('S18','R33',17656);
insert into Results values('S18','R35',18186);
insert into Results values('S18','R37',17668);
insert into Results values('S18','R39',17656);
insert into Results values('S18','R42',17685);
insert into Results values('S18','R44',17934);
insert into Results values('S18','R46',17656);
insert into Results values('S18','R47',17656);
insert into Results values('S18','R48',18122);
insert into Results values('S18','R49',17766);
insert into Results values('S18','R50',17656);
insert into Results values('S18','R51',17764);
insert into Results values('S18','R52',17652);
insert into Results values('S18','R53',17743);
insert into Results values('S18','R54',18186);
insert into Results values('S18','R57',17652);
insert into Results values('S18','R59',17668);
insert into Results values('S18','R60',18186);
insert into Results values('S18','R61',17837);
insert into Results values('S18','R62',17656);
insert into Results values('S18','R63',17779);
insert into Results values('S18','R64',17668);
insert into Results values('S18','R65',17695);
insert into Results values('S18','R66',17779);
insert into Results values('S18','R68',17652);
insert into Results values('S18','R69',18186);
insert into Results values('S18','R70',17668);
insert into Results values('S18','R71',17934);
insert into Results values('S18','R72',17652);
insert into Results values('S18','R73',17889);
insert into Results values('S18','R75',17652);
insert into Results values('S18','R76',17779);
insert into Results values('S18','R77',18122);
insert into Results values('S18','R78',17837);
insert into Results values('S18','R79',17837);
insert into Results values('S18','R81',17668);
insert into Results values('S18','R82',17668);
insert into Results values('S18','R84',18186);
insert into Results values('S18','R85',18186);
insert into Results values('S18','R86',17902);
insert into Results values('S18','R87',17699);
insert into Results values('S18','R88',17668);
insert into Results values('S18','R89',17716);
insert into Results values('S18','R90',17656);
insert into Results values('S18','R91',17656);
insert into Results values('S18','R92',17652);
insert into Results values('S18','R93',17652);
insert into Results values('S18','R94',18186);
insert into Results values('S18','R95',17656);
insert into Results values('S18','R96',18007);
insert into Results values('S18','R97',18122);
insert into Results values('S18','R98',17693);
insert into Results values('S18','R100',17656);
insert into Results values('S18','R101',17656);
insert into Results values('S18','R102',17779);
insert into Results values('S18','R103',17652);
insert into Results values('S18','R104',17656);
insert into Results values('S18','R105',17837);
insert into Results values('S18','R106',17656);
insert into Results values('S18','R107',17656);
insert into Results values('S18','R108',18122);
insert into Results values('S18','R110',17934);
insert into Results values('S18','R111',17668);
insert into Results values('S18','R113',17656);
insert into Results values('S18','R116',17779);
insert into Results values('S18','R118',17668);
insert into Results values('S18','R119',17668);
insert into Results values('S18','R122',17779);
insert into Results values('S18','R123',17779);
insert into Results values('S18','R124',17656);
insert into Results values('S18','R125',17668);
insert into Results values('S18','R126',17656);
insert into Results values('S18','R127',17668);
insert into Results values('S18','R128',17668);
insert into Results values('S18','R130',17779);
insert into Results values('S18','R131',17934);
insert into Results values('S18','R132',17656);
insert into Results values('S18','R133',18186);
insert into Results values('S18','R134',17797);
insert into Results values('S18','R135',18186);
insert into Results values('S18','R137',17668);
insert into Results values('S18','R140',17652);
insert into Results values('S18','R141',18122);
insert into Results values('S18','R142',17934);
insert into Results values('S18','R145',17668);
insert into Results values('S18','R146',17668);
insert into Results values('S18','R147',17664);
insert into Results values('S18','R150',17664);
insert into Results values('S18','R151',17741);
insert into Results values('S18','R152',17668);
insert into Results values('S18','R154',17889);
insert into Results values('S18','R155',17652);
insert into Results values('S18','R156',17934);
insert into Results values('S18','R157',17668);
insert into Results values('S18','R158',18186);
insert into Results values('S18','R159',17889);
insert into Results values('S18','R160',17668);
insert into Results values('S18','R161',17668);
insert into Results values('S18','R162',17656);
insert into Results values('S18','R163',17656);
insert into Results values('S18','R164',17652);
insert into Results values('S18','R165',17668);
insert into Results values('S18','R166',17668);
insert into Results values('S18','R167',17664);
insert into Results values('S18','R168',18122);
insert into Results values('S18','R169',17668);
insert into Results values('S18','R171',17656);
insert into Results values('S18','R172',18122);
insert into Results values('S18','R174',18122);
insert into Results values('S18','R175',17668);
insert into Results values('S18','R176',18122);
insert into Results values('S18','R178',18122);
insert into Results values('S18','R179',17934);
insert into Results values('S18','R180',17934);
insert into Results values('S18','R181',17729);
insert into Results values('S18','R182',18122);
insert into Results values('S18','R183',17656);
insert into Results values('S18','R184',17652);
insert into Results values('S18','R185',17652);
insert into Results values('S18','R187',18404);
insert into Results values('S18','R188',17797);
insert into Results values('S18','R189',17779);
insert into Results values('S18','R191',17934);
insert into Results values('S18','R192',17656);
insert into Results values('S18','R194',17934);
insert into Results values('S18','R195',17934);
insert into Results values('S18','R196',17685);
insert into Results values('S18','R197',17934);
insert into Results values('S19','R1',4207);
insert into Results values('S19','R2',4320);
insert into Results values('S19','R3',4324);
insert into Results values('S19','R4',4391);
insert into Results values('S19','R5',4150);
insert into Results values('S19','R6',4231);
insert into Results values('S19','R7',4117);
insert into Results values('S19','R8',4220);
insert into Results values('S19','R9',4007);
insert into Results values('S19','R13',4186);
insert into Results values('S19','R14',4082);
insert into Results values('S19','R15',4099);
insert into Results values('S19','R16',4161);
insert into Results values('S19','R17',4082);
insert into Results values('S19','R18',4185);
insert into Results values('S19','R19',4426);
insert into Results values('S19','R20',4219);
insert into Results values('S19','R22',4312);
insert into Results values('S19','R23',4359);
insert into Results values('S19','R25',4089);
insert into Results values('S19','R26',4287);
insert into Results values('S19','R27',4227);
insert into Results values('S19','R30',4330);
insert into Results values('S19','R31',4379);
insert into Results values('S19','R32',4227);
insert into Results values('S19','R33',4342);
insert into Results values('S19','R35',4343);
insert into Results values('S19','R37',4202);
insert into Results values('S19','R39',4256);
insert into Results values('S19','R42',4485);
insert into Results values('S19','R44',4393);
insert into Results values('S19','R46',4071);
insert into Results values('S19','R47',4168);
insert into Results values('S19','R48',4396);
insert into Results values('S19','R49',4237);
insert into Results values('S19','R50',4107);
insert into Results values('S19','R51',4060);
insert into Results values('S19','R52',4187);
insert into Results values('S19','R53',4285);
insert into Results values('S19','R54',4471);
insert into Results values('S19','R57',4509);
insert into Results values('S19','R59',4134);
insert into Results values('S19','R60',4235);
insert into Results values('S19','R61',4164);
insert into Results values('S19','R62',4073);
insert into Results values('S19','R63',4045);
insert into Results values('S19','R64',4251);
insert into Results values('S19','R65',4125);
insert into Results values('S19','R66',4404);
insert into Results values('S19','R68',4399);
insert into Results values('S19','R69',4392);
insert into Results values('S19','R70',4480);
insert into Results values('S19','R71',4242);
insert into Results values('S19','R72',4252);
insert into Results values('S19','R73',4023);
insert into Results values('S19','R75',4467);
insert into Results values('S19','R76',4391);
insert into Results values('S19','R77',4230);
insert into Results values('S19','R78',4373);
insert into Results values('S19','R79',4407);
insert into Results values('S19','R81',4395);
insert into Results values('S19','R82',4425);
insert into Results values('S19','R84',4369);
insert into Results values('S19','R85',4275);
insert into Results values('S19','R86',4415);
insert into Results values('S19','R87',4237);
insert into Results values('S19','R88',4453);
insert into Results values('S19','R89',4472);
insert into Results values('S19','R90',4381);
insert into Results values('S19','R91',3853);
insert into Results values('S19','R92',4330);
insert into Results values('S19','R93',4271);
insert into Results values('S19','R94',4232);
insert into Results values('S19','R95',3929);
insert into Results values('S19','R96',4220);
insert into Results values('S19','R97',3998);
insert into Results values('S19','R98',4208);
insert into Results values('S19','R100',4115);
insert into Results values('S19','R101',4098);
insert into Results values('S19','R102',4306);
insert into Results values('S19','R103',4397);
insert into Results values('S19','R104',4190);
insert into Results values('S19','R105',4274);
insert into Results values('S19','R106',4335);
insert into Results values('S19','R107',4335);
insert into Results values('S19','R108',4388);
insert into Results values('S19','R110',4188);
insert into Results values('S19','R111',4241);
insert into Results values('S19','R113',4480);
insert into Results values('S19','R116',4357);
insert into Results values('S19','R118',4121);
insert into Results values('S19','R119',4258);
insert into Results values('S19','R122',4327);
insert into Results values('S19','R123',4121);
insert into Results values('S19','R124',4178);
insert into Results values('S19','R125',4308);
insert into Results values('S19','R126',4162);
insert into Results values('S19','R127',4146);
insert into Results values('S19','R128',4324);
insert into Results values('S19','R130',4300);
insert into Results values('S19','R131',4346);
insert into Results values('S19','R132',4184);
insert into Results values('S19','R133',4067);
insert into Results values('S19','R134',4038);
insert into Results values('S19','R135',4517);
insert into Results values('S19','R137',4305);
insert into Results values('S19','R140',3963);
insert into Results values('S19','R141',4257);
insert into Results values('S19','R142',4214);
insert into Results values('S19','R145',4369);
insert into Results values('S19','R146',4275);
insert into Results values('S19','R147',4285);
insert into Results values('S19','R150',4170);
insert into Results values('S19','R151',4019);
insert into Results values('S19','R152',4057);
insert into Results values('S19','R154',4399);
insert into Results values('S19','R155',4395);
insert into Results values('S19','R156',4523);
insert into Results values('S19','R157',4389);
insert into Results values('S19','R158',4404);
insert into Results values('S19','R159',4399);
insert into Results values('S19','R160',4274);
insert into Results values('S19','R161',4254);
insert into Results values('S19','R162',4275);
insert into Results values('S19','R163',4191);
insert into Results values('S19','R164',4225);
insert into Results values('S19','R165',4290);
insert into Results values('S19','R166',4130);
insert into Results values('S19','R167',4219);
insert into Results values('S19','R168',4216);
insert into Results values('S19','R169',4201);
insert into Results values('S19','R171',4222);
insert into Results values('S19','R172',4434);
insert into Results values('S19','R174',4186);
insert into Results values('S19','R175',4090);
insert into Results values('S19','R176',4076);
insert into Results values('S19','R178',4335);
insert into Results values('S19','R179',4391);
insert into Results values('S19','R180',3975);
insert into Results values('S19','R181',4226);
insert into Results values('S19','R182',4225);
insert into Results values('S19','R183',4448);
insert into Results values('S19','R184',4390);
insert into Results values('S19','R185',4321);
insert into Results values('S19','R187',4452);
insert into Results values('S19','R188',4425);
insert into Results values('S19','R189',4334);
insert into Results values('S19','R191',4393);
insert into Results values('S19','R192',4244);
insert into Results values('S19','R194',4001);
insert into Results values('S19','R195',4206);
insert into Results values('S19','R196',4053);
insert into Results values('S19','R197',4237);
insert into Results values('S20','R1',11294);
insert into Results values('S20','R2',11296);
insert into Results values('S20','R3',11331);
insert into Results values('S20','R4',11291);
insert into Results values('S20','R5',11296);
insert into Results values('S20','R6',11296);
insert into Results values('S20','R7',11296);
insert into Results values('S20','R8',11294);
insert into Results values('S20','R9',11296);
insert into Results values('S20','R13',11296);
insert into Results values('S20','R14',11296);
insert into Results values('S20','R15',11296);
insert into Results values('S20','R16',11312);
insert into Results values('S20','R17',11296);
insert into Results values('S20','R18',11294);
insert into Results values('S20','R19',11296);
insert into Results values('S20','R20',11296);
insert into Results values('S20','R22',11296);
insert into Results values('S20','R23',11287);
insert into Results values('S20','R25',11480);
insert into Results values('S20','R26',11331);
insert into Results values('S20','R27',11291);
insert into Results values('S20','R30',11296);
insert into Results values('S20','R31',11331);
insert into Results values('S20','R32',11296);
insert into Results values('S20','R33',11291);
insert into Results values('S20','R35',11296);
insert into Results values('S20','R37',11296);
insert into Results values('S20','R39',11296);
insert into Results values('S20','R42',11344);
insert into Results values('S20','R44',11296);
insert into Results values('S20','R46',11296);
insert into Results values('S20','R47',11296);
insert into Results values('S20','R48',11325);
insert into Results values('S20','R49',11312);
insert into Results values('S20','R50',11296);
insert into Results values('S20','R51',11316);
insert into Results values('S20','R52',11287);
insert into Results values('S20','R53',11312);
insert into Results values('S20','R54',11312);
insert into Results values('S20','R57',11287);
insert into Results values('S20','R59',11296);
insert into Results values('S20','R60',11325);
insert into Results values('S20','R61',11296);
insert into Results values('S20','R62',11294);
insert into Results values('S20','R63',11344);
insert into Results values('S20','R64',11296);
insert into Results values('S20','R65',11296);
insert into Results values('S20','R66',11296);
insert into Results values('S20','R68',11287);
insert into Results values('S20','R69',11331);
insert into Results values('S20','R70',11319);
insert into Results values('S20','R71',11296);
insert into Results values('S20','R72',11296);
insert into Results values('S20','R73',11312);
insert into Results values('S20','R75',11291);
insert into Results values('S20','R76',11331);
insert into Results values('S20','R77',11296);
insert into Results values('S20','R78',11296);
insert into Results values('S20','R79',11296);
insert into Results values('S20','R81',11331);
insert into Results values('S20','R82',11296);
insert into Results values('S20','R84',11287);
insert into Results values('S20','R85',11452);
insert into Results values('S20','R86',11296);
insert into Results values('S20','R87',11296);
insert into Results values('S20','R88',11296);
insert into Results values('S20','R89',11371);
insert into Results values('S20','R90',11291);
insert into Results values('S20','R91',11296);
insert into Results values('S20','R92',11287);
insert into Results values('S20','R93',11287);
insert into Results values('S20','R94',11409);
insert into Results values('S20','R95',11296);
insert into Results values('S20','R96',11325);
insert into Results values('S20','R97',11296);
insert into Results values('S20','R98',11296);
insert into Results values('S20','R100',11296);
insert into Results values('S20','R101',11331);
insert into Results values('S20','R102',11331);
insert into Results values('S20','R103',11287);
insert into Results values('S20','R104',11331);
insert into Results values('S20','R105',11287);
insert into Results values('S20','R106',11296);
insert into Results values('S20','R107',11294);
insert into Results values('S20','R108',11409);
insert into Results values('S20','R110',11287);
insert into Results values('S20','R111',11296);
insert into Results values('S20','R113',11291);
insert into Results values('S20','R116',11312);
insert into Results values('S20','R118',11296);
insert into Results values('S20','R119',11296);
insert into Results values('S20','R122',11325);
insert into Results values('S20','R123',11331);
insert into Results values('S20','R124',11287);
insert into Results values('S20','R125',11296);
insert into Results values('S20','R126',11296);
insert into Results values('S20','R127',11296);
insert into Results values('S20','R128',11296);
insert into Results values('S20','R130',11296);
insert into Results values('S20','R131',11296);
insert into Results values('S20','R132',11296);
insert into Results values('S20','R133',11371);
insert into Results values('S20','R134',11331);
insert into Results values('S20','R135',11296);
insert into Results values('S20','R137',11296);
insert into Results values('S20','R140',11331);
insert into Results values('S20','R141',11331);
insert into Results values('S20','R142',11296);
insert into Results values('S20','R145',11296);
insert into Results values('S20','R146',11296);
insert into Results values('S20','R147',11296);
insert into Results values('S20','R150',11296);
insert into Results values('S20','R151',11291);
insert into Results values('S20','R152',11296);
insert into Results values('S20','R154',11291);
insert into Results values('S20','R155',11287);
insert into Results values('S20','R156',11344);
insert into Results values('S20','R157',11296);
insert into Results values('S20','R158',11331);
insert into Results values('S20','R159',11331);
insert into Results values('S20','R160',11296);
insert into Results values('S20','R161',11296);
insert into Results values('S20','R162',11331);
insert into Results values('S20','R163',11291);
insert into Results values('S20','R164',11287);
insert into Results values('S20','R165',11296);
insert into Results values('S20','R166',11296);
insert into Results values('S20','R167',11291);
insert into Results values('S20','R168',11291);
insert into Results values('S20','R169',11296);
insert into Results values('S20','R171',11344);
insert into Results values('S20','R172',11296);
insert into Results values('S20','R174',11296);
insert into Results values('S20','R175',11296);
insert into Results values('S20','R176',11296);
insert into Results values('S20','R178',11296);
insert into Results values('S20','R179',11296);
insert into Results values('S20','R180',11296);
insert into Results values('S20','R181',11296);
insert into Results values('S20','R182',11316);
insert into Results values('S20','R183',11312);
insert into Results values('S20','R184',11287);
insert into Results values('S20','R185',11296);
insert into Results values('S20','R187',11344);
insert into Results values('S20','R188',11344);
insert into Results values('S20','R189',11296);
insert into Results values('S20','R191',11296);
insert into Results values('S20','R192',11287);
insert into Results values('S20','R194',11331);
insert into Results values('S20','R195',11344);
insert into Results values('S20','R196',11331);
insert into Results values('S20','R197',11325);

USE USER01;
DROP TABLE IF EXISTS SALESPEOPLE;
DROP TABLE IF EXISTS CUSTOMERS;
DROP TABLE IF EXISTS ORDERS;

CREATE TABLE SALESPEOPLE (SNUM INT PRIMARY KEY, SNAME VARCHAR(10), CITY VARCHAR(10), COMM FLOAT);
CREATE TABLE CUSTOMERS (CNUM INT  PRIMARY KEY, CNAME VARCHAR (10), CITY VARCHAR (10), RATING FLOAT, SNUM INT, CONSTRAINT FK_SNUM FOREIGN KEY(SNUM) REFERENCES SALESPEOPLE(SNUM));
CREATE TABLE ORDERS (ONUM INT PRIMARY KEY, AMT FLOAT, ODATE DATETIME, CNUM INT , SNUM INT,  CONSTRAINT FK_CNUM FOREIGN KEY(CNUM) REFERENCES CUSTOMERS(CNUM) , CONSTRAINT FK_ORDERS_SNUM FOREIGN KEY(SNUM) REFERENCES SALESPEOPLE(SNUM));

INSERT into SALESPEOPLE values (1001,'Peel','London',.12);
INSERT into SALESPEOPLE values (1002,'Serres','San Jose',.13);
INSERT into SALESPEOPLE values (1004,'Monika','London',.11);
INSERT into SALESPEOPLE values (1007,'Rifkin','Barcelona',.15);
INSERT into SALESPEOPLE values (1003,'Axelrod','New York',.10);
INSERT into SALESPEOPLE values (1005,'Franc','London',.26);

INSERT into CUSTOMERS values (2001,'Hoffman','London',100,1001);
INSERT into CUSTOMERS values (2002,'Giovanni','Rome',200,1003);
INSERT into CUSTOMERS values (2003,'Liu’,’San Jose',200,1002);
INSERT into CUSTOMERS values (2004,'Grass','Berlin',300,1002);
INSERT into CUSTOMERS values (2006,'Clemens','London',100,1001);
INSERT into CUSTOMERS values (2008,'Cisneros','San Jose',300,1007);
INSERT into CUSTOMERS values (2007,'Pereira','Rome',100,1004);
INSERT into CUSTOMERS values (2009,'Smith','Berlin',300,1007);

INSERT into ORDERS  values (3001,18.69,'1996-10-03 12:30', 2008, 1007);
INSERT into ORDERS  values (3003,767.19,'1996-10-03 13:45', 2001, 1001);
INSERT into ORDERS  values (3002,1900.10,'1996-10-03 12:05',2007,1004);
INSERT into ORDERS  values (3005,5160.45,'1996-10-03 14:00',2003,1002);
INSERT into ORDERS  values (3006,1098.16,'1996-10-03 13:37',2008,1007);
INSERT into ORDERS  values (3009,1713.23,'1996-10-04 15:21',2002,1003);
INSERT into ORDERS  values (3007,75.75,'1996-10-04 16:02',2002,1003);
INSERT into ORDERS  values (3008,4723.00,'1996-10-05 12:07',2006,1001);
INSERT into ORDERS  values (3010,1309.95,'1996-10-06 13:12',2004,1002);
INSERT into ORDERS  values (3011,9891.88,'1996-10-06 13:09',2006,1001);
INSERT into ORDERS  values (3012,3455.78,'1996-10-04 15:21',2002,1003);
INSERT into ORDERS  values (3013,1245.98,'1996-10-04 16:32',2002,1003);
INSERT into ORDERS  values (3014,3721.53,'1996-10-05 12:45',2006,1001);
INSERT into ORDERS  values (3015,734.50,'1996-10-06 13:16',2004,1002);
INSERT into ORDERS  values (3016,1729.67,'1996-10-06 13:07',2006,1001);

INSERT into ORDERS  values (3017,18.69,'1996-10-03 12:30', 2001, 1007);
INSERT into ORDERS  values (3018,767.19,'1996-10-03 13:45', 2002, 1001);
INSERT into ORDERS  values (3019,1900.10,'1996-10-03 12:05',2007,1004);
INSERT into ORDERS  values (3020,5160.45,'1996-10-03 14:00',2003,1007);
INSERT into ORDERS  values (3021,1098.16,'1996-10-03 13:37',2008,1007);
INSERT into ORDERS  values (3022,1713.23,'1996-10-04 15:21',2002,1003);
INSERT into ORDERS  values (3023,75.75,'1996-10-04 16:02',2002,1004);
INSERT into ORDERS  values (3024,4723.00,'1996-10-05 12:07',2006,1002);
INSERT into ORDERS  values (3025,1309.95,'1996-10-06 13:12',2002,1002);
INSERT into ORDERS  values (3026,9891.88,'1996-10-06 13:09',2006,1001);
INSERT into ORDERS  values (3027,3455.78,'1996-10-04 15:21',2002,1003);
INSERT into ORDERS  values (3028,1245.98,'1996-10-04 16:32',2002,1003);
INSERT into ORDERS  values (3029,3721.53,'1996-10-05 12:45',2006,1001);
INSERT into ORDERS  values (3030,734.50,'1996-10-06 13:16',2004,1002);
INSERT into ORDERS  values (3031,1729.67,'1996-10-06 13:07',2006,1007);

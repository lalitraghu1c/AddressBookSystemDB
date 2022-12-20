-- UC-1
CREATE DATABASE AddressBookSystemDB

-- UC-2
CREATE TABLE AddressBook(
FirstName varchar(20) NOT NULL,
LastName varchar(20) NOT NULL,
Address varchar(200) NOT NULL,
City varchar(20) NOT NULL,
Zip bigint NOT NULL,
PhoneNumber bigint Primary Key,
Email varchar(50) NOT NULL
);
SELECT * FROM AddressBook

-- UC-3
INSERT INTO AddressBook VALUES ('Lalit','Raghuwanshi','Shri Ram Nagar Chourah','Vidisha',464001,8358814392,'samrat@gmail.com');
INSERT INTO AddressBook VALUES ('Sid', 'Gandhi', 'Lic Colony Bhopal Naka', 'Sehore', 466001, 74153574154,'sid.jain@gmail.com');
INSERT INTO AddressBook VALUES ('Arpit', 'Kothiya', 'Bhopal Naka', 'Bhopal', 462021, 9827625467,'arpit.kot@gmail.com');
INSERT INTO AddressBook VALUES ('Ajju', 'Jadhao', 'Wassim Naka', 'Wassim', 623001, 9827210170,'ajju.jado@gmail.com');
INSERT INTO AddressBook VALUES ('Raju', 'Barle', 'Raipur Naka', 'Raipur', 511001, 9039204506,'raju.barle@gmail.com');
INSERT INTO AddressBook VALUES ('Agrim', 'Chor', 'Tehsil Chourah', 'Lucknow', 353462, 8770561748,'agrim.chor@gmail.com');
SELECT * FROM AddressBook

-- UC-4
UPDATE AddressBook SET FirstName = 'Ajay' WHERE PhoneNumber=9827210170;
SELECT * FROM AddressBook

-- UC-5
DELETE FROM AddressBook WHERE LastName = 'Chor' ;
SELECT * FROM AddressBook

-- UC-6
SELECT * FROM AddressBook WHERE City = 'Raipur';

-- UC-7
SELECT COUNT (City) FROM AddressBook; 

-- UC-8
SELECT FirstName, LastName, City From AddressBook ORDER BY City asc;
DROP DATABASE IF EXISTS CSF;

CREATE DATABASE CSF;

USE CSF;

CREATE TABLE Coach (
 id  int NOT NULL AUTO_INCREMENT,
 FirstName varchar(25),
 LastName varchar(25),
 Age int NOT NULL,
 Position varchar(25),
 PRIMARY KEY (id)
);
CREATE TABLE Categories (
id int NOT NULL AUTO_INCREMENT,
Year int NOT NULL ,
age int NOT NULL,
PRIMARY KEY (id)
);
CREATE TABLE categ_coach (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Coach_Id int NOT NULL,
Categorie_id int NOT NULL,
FOREIGN KEY (Coach_Id) REFERENCES Coach(id),
FOREIGN KEY (Categorie_id) REFERENCES  Categories(id)
);
CREATE TABLE Player(
id int NOT NULL AUTO_INCREMENT,
Name varchar(25),
Age int NOT NULL,
Categorie_id int NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (Categorie_id) REFERENCES  Categories(id)
);
/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

INSERT INTO Coach(FirstName, LastName, Age, Position) VALUES("Ezzeddine", "Saad", 53, "Owner & Principal Coach" );
INSERT INTO Coach(FirstName, LastName, Age, Position) VALUES("Tarek", "Omri", 40, "GK Coach" );
INSERT INTO Coach(FirstName, LastName, Age, Position) VALUES("Adnen", "Sallemi", 45, "Coach" );
INSERT INTO Coach(FirstName, LastName, Age, Position) VALUES("Aziz", "Saad", 23, "Learner Coach" );
INSERT INTO Coach(FirstName, LastName, Age, Position) VALUES("Dali", "Ben Chaaben", 23, "Assistant GK coach" );

INSERT INTO Categories(year, age) VALUES (2011 , 10);
INSERT INTO Categories(year, age ) VALUES (2009 , 12);
INSERT INTO Categories(year, age ) VALUES (2007 , 14);

INSERT INTO categ_coach(Coach_Id, Categorie_id) VALUES(1,1);
INSERT INTO categ_coach(Coach_Id, Categorie_id) VALUES(1,2);
INSERT INTO categ_coach(Coach_Id, Categorie_id) VALUES(1,3);
INSERT INTO categ_coach(Coach_Id, Categorie_id) VALUES(2,1);
INSERT INTO categ_coach(Coach_Id, Categorie_id) VALUES(2,2);
INSERT INTO categ_coach(Coach_Id, Categorie_id) VALUES(2,3);
INSERT INTO categ_coach(Coach_Id, Categorie_id) VALUES(3,2);
INSERT INTO categ_coach(Coach_Id, Categorie_id) VALUES(3,3);
INSERT INTO categ_coach(Coach_Id, Categorie_id) VALUES(4,1);
INSERT INTO categ_coach(Coach_Id, Categorie_id) VALUES(5,1);
INSERT INTO categ_coach(Coach_Id, Categorie_id) VALUES(5,2);
INSERT INTO categ_coach(Coach_Id, Categorie_id) VALUES(5,3);
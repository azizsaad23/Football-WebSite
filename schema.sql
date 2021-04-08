DROP DATABASE IF EXISTS CSF;

CREATE DATABASE CSF;

USE CSF;

CREATE TABLE Coach (
 id  int NOT NULL AUTO_INCREMENT,
 FirstName varchar(25),
 LastName varchar(25),
 Age int NOT NULL,
 Position varchar(25),
 image_url varchar(250),
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
INSERT INTO Coach(FirstName, LastName, Age, Position, image_url) VALUES("Adnen", "Sallemi", 45, "Coach", "https://scontent.fnbe1-2.fna.fbcdn.net/v/t1.0-9/118147799_1259205641081599_9117165447254325246_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=nhjZC9DH1i8AX_zqTQa&_nc_ht=scontent.fnbe1-2.fna&oh=2e72d3c4c428443f27b68014999b2368&oe=6074303C" );
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
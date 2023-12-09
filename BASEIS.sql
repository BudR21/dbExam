CREATE DATABASE IF NOT EXISTS KoinonikoD_DB;
SHOW DATABASES;
SHOW TABLES;
describe Efarmoges;
USE KoinonikoD_DB;
drop table if exists Fwtografies;

CREATE TABLE IF NOT EXISTS Efarmoges (
Kwdikos VARCHAR(6) PRIMARY KEY,
Glwssa VARCHAR(15),
Egegrammenoi int,
Symbatothta VARCHAR(10),
Kathgoria VARCHAR(15) unique,
Xwritikothta int,
Arithmos_Xrhstwn_Online int,
Arithmo_Ekdoshs VARCHAR(10),
Onoma VARCHAR(25) NOT NULL,
Xrhsths VARCHAR(30),
Bathmologia DOUBLE(1,1), foreign key(Xrhsths) references Xrhstes(Username)
ON DELETE restrict ON UPDATE CASCADE );

CREATE TABLE IF NOT EXISTS Xrhstes (
Username VARCHAR(30) primary KEY,
Pasword VARCHAR(50) NOT NULL,
Epitheto VARCHAR(20) NOT NULL,
Onoma VARCHAR(15) NOT NULL,
Hmeromhnia_Gennhshs DATE,
Sex CHAR,
Phone INT(10) unique NOT NULL,
Bardies INT,
Email VARCHAR(40) ,
Dieuthinsi VARCHAR(30), constraint username primary key(Username) ,constraint emaiL UNIQUE(Email));

CREATE TABLE IF NOT EXISTS Fwtografies (
id VARCHAR(10) primary key,
Width INT(4) NOT NULL,
Height INT(4) NOT NULL,
MB INT NOT NULL,
Onoma VARCHAR (30),
Analysh int,
Hmeromhnia DATE,
Eidos VARCHAR(30),
Xrhsths VARCHAR(30),
Ydatografhma_Syskeuhs VARCHAR(30),foreign key(Xrhsths) references Xrhstes(Username)
ON DELETE restrict ON UPDATE CASCADE );

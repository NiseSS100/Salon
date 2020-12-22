CREATE DATABASE SalonDB;

CREATE TABLE CLIENTS(
ID_CLIENT INT IDENTITY(0,1) PRIMARY KEY NOT NULL,
NAME NVARCHAR(30) NOT NULL,
NUMBER NVARCHAR(20) NOT NULL
);

CREATE TABLE SERVICES(
ID_SERVICE INT IDENTITY(0,1) PRIMARY KEY NOT NULL,
NAME NVARCHAR(30) NOT NULL,
PRICE DECIMAL(6,2) NOT NULL,
FINGERS_DONE INT
);

CREATE TABLE STUDIO(
ID_STUDIO INT IDENTITY(0,1) PRIMARY KEY NOT NULL,
ID_CLIENT INT NOT NULL,
FOREIGN KEY(ID_CLIENT) REFERENCES CLIENTS(ID_CLIENT),
ID_SERVICE INT NOT NULL,
FOREIGN KEY(ID_SERVICE) REFERENCES SERVICES(ID_SERVICE),
DATE NVARCHAR(20) NOT NULL,
TIME NVARCHAR(20) NOT NULL
);

insert into Clients values ('Jane','1441'),
('Karen','6902'),
('Elizabeth','9573'),
('Elizabeth','3476'),
('Jennifer','3830'),
('Jennifer','4063'),
('Lisa','8424'),
('Elizabeth','1350'),
('Jeny','7692'),
('Karen','7480'),
('Jane','3959'),
('Maria','5748'),
('Michaela','1630'),
('Betty','6891'),
('Victoria','4776'),
('Michaela','3316'),
('Maria','7599'),
('Karen','7450'),
('Maria','7130'),
('Betty','4924'),
('Victoria','1763'),
('Jennifer','9240'),
('Karen','5580'),
('Jane','2554'),
('Betty','7759'),
('Lisa','8808'),
('Victoria','6204'),
('Lisa','3375'),
('Maria','7656'),
('Victoria','2864')

insert into services values('Gel Polish',5.63,1),
('Removal',11.00,4),
('Ordinary Polish',9.31,3),
('Building',22.87,8),
('Building',18.86,6),
('Removal',19.9,3),
('Ordinary Polish',23.36,8),
('Ordinary Polish',24.25,10),
('Gel Polish',15.77,5),
('Building',23.28,5),
('Removal',23.38,5),
('Removal',8.92,1),
('Gel Polish',8.74,6),
('Building',19.17,4),
('Ordinary Polish',13.57,9),
('Building',10.14,6),
('Removal',11.2,8),
('Ordinary Polish',13.45,10),
('Ordinary Polish',12.48,6),
('Ordinary Polish',16.53,3)

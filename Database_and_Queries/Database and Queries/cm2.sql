DROP DATABASE IF EXISTS cfarm;

CREATE DATABASE cmrfarm;

USE cfarm;

CREATE TABLE farm(
FNo VARCHAR(4) NOT NULL, 
Street VARCHAR(30),
Area VARCHAR(30),
City VARCHAR(30), 
Eircode VARCHAR(10) NOT NULL, 
TelNo VARCHAR(12) NOT NULL, 
land VARCHAR(30) ,
PRIMARY KEY (FNo)
);

INSERT INTO farm VALUES (
"f1","2 Royal Lodge Rd.","Belfast","County Antrim","SH2 8YG","0153-7493845","100acres" 
);


CREATE TABLE buys( 
BNo VARCHAR(4) NOT NULL, 
product VARCHAR(20) NOT NULL, 
amount VARCHAR(20) NOT NULL, 
orderdate VARCHAR(60), 
arrivaldate VARCHAR(12), 
cost VARCHAR(30) NOT NULL,
FNo VARCHAR(4) NOT NULL,
PRIMARY KEY (BNo),
FOREIGN KEY (FNo) REFERENCES farm (FNo) ON UPDATE CASCADE
);

INSERT INTO buys VALUES (
"IJ62","sheepfeed","90kg","10/04/21","30/04/21","80","f1"
);

INSERT INTO buys VALUES (
"AY74","wheatseeds","50kg","25/12/12","01/01/22","100","f1"
);

INSERT INTO buys VALUES (
"PO90","bull","1","01/12/12","01/01/22","5000","f1"
);



CREATE TABLE sells(
SNo VARCHAR(4) NOT NULL,
product VARCHAR(20) NOT NULL, 
amount VARCHAR(20) NOT NULL, 
orderdate VARCHAR(60), 
arrivaldate VARCHAR(12), 
cost VARCHAR(30) NOT NULL,
deliveryAddress VARCHAR(30) NOT NULL,
PRIMARY KEY (SNo),
FOREIGN KEY (FNo) REFERENCES farm (FNo) ON UPDATE CASCADE
);

INSERT INTO sells VALUES (
"C91","bread","50","20/10/21","28/10/21","50","56 High St, Putney, County Dublin, N66 XH29"
);

INSERT INTO sells VALUES (
"C73","eggs","30","10/10/21","25/10/21","30","64 Fern Dr. Pollock, County Dublin, G42 RT39"
);

INSERT INTO sells VALUES (
"C52","wool","5kg","1/10/21","2/10/21","40","18 Tain St, County Dublin, P01 UI83"
);

INSERT INTO sells VALUES (
"C85","lamb","104kg","19/10/21","2/11/21","80","5 Tarbot Rd, County Dublin, A39 BD93"
);

INSERT INTO sells VALUES (
"C21","milk","50l","17/10/21","2/11/21","80","60 Main St, Bray, County Wicklow, G84 K94"
);


CREATE TABLE animals( 
breed VARCHAR(40),
weight VARCHAR(20),
cost VARCHAR(20),
Ano VARCHAR(4),
FNo VARCHAR(4) ,
FOREIGN KEY (FNo) REFERENCES farm (FNo) ON UPDATE CASCADE
);

INSERT INTO animals VALUES (
"cow","900kg","4000","g22","f1"
);
INSERT INTO animals VALUES (
"sheep","100kg","2000","h32","f1"
);
INSERT INTO animals VALUES (
"sheep","200kg","6000","o12","f1"
);
INSERT INTO animals VALUES (
"chicken","10kg","80","t11","f1"
);





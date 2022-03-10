DROP DATABASE IF EXISTS cmrepairs;

CREATE DATABASE cmrepairs;

USE cmrepairs;

CREATE TABLE garage(
GNo VARCHAR(4) NOT NULL, 
Street VARCHAR(30),
Area VARCHAR(30),
City VARCHAR(30), 
Eircode VARCHAR(10) NOT NULL, 
TelNo VARCHAR(12) NOT NULL, 
PRIMARY KEY (GNo)
);

INSERT INTO garage VALUES (
"G1","2 Royal Lodge Rd.","Belfast","County Antrim","SH2 8YG","0153-7493845"
);

INSERT INTO garage VALUES (
"G2","8 Military Road","Buttevant","County Cork","G63 FY63","0854657283"
);

INSERT INTO garage VALUES (
"G3","Castle Street","Trim","County Meath","A74 AB72","0836490163"
);

CREATE TABLE employees(
ENo VARCHAR(4) NOT NULL, 
Forename VARCHAR(20) NOT NULL, 
Surname VARCHAR(20) NOT NULL, 
Address VARCHAR(60), 
TelNo VARCHAR(12), 
Position VARCHAR(30) NOT NULL,
Sex VARCHAR(1) NOT NULL,
DOB DATE NOT NULL,
SALARY DECIMAL(9,2),
PPS VARCHAR(10) NOT NULL,
GNo VARCHAR(4) NOT NULL,
PRIMARY KEY (ENo),
FOREIGN KEY (GNo) REFERENCES garage (GNo) ON UPDATE CASCADE
);

INSERT INTO employees VALUES (
"IJ62","Brian","Leary","68 Manor Road, Belfast, County Antrim, B90 M63","0215267840","Manager","M","1975-02-23",74000,"9480043E","G1"
);

INSERT INTO employees VALUES (
"AY74","Nick","Webb","26 Market St, Ardee, County Louth, J64 HB54","0988470036","Senior Mechanic","M","1983-07-15",53000,"8460035B","G1"
);

INSERT INTO employees VALUES (
"PO90","Máire","Starr","49 Main St, Derry, County Derry, N62 J83","0852591452","Senior Mechanic","F","1992-05-02",51500,"8930472Q","G1"
);

INSERT INTO employees VALUES (
"HD83","Everett","Maxwell","39 The Crescent, Downpatrick, County Down, I85 J90","0818953624","Junior Mechanic","M","1996-06-03",33000,"9653004T","G1"
);

INSERT INTO employees VALUES (
"UR74","Traci","Aston","25 The Green, Omagh, County Tyrone, O93 L20","0869231153","Junior Mechanic","F","1988-10-31",38250,"8234052P","G1"
);

INSERT INTO employees VALUES (
"KQ89","Isabella","Alexander","4 Mulgrave St, Limerick, County Limerick, L54 NH87","061411763","Manager","F","1981-06-01",71000,"3620472J","G2"
);

INSERT INTO employees VALUES (
"RT65","Stanley","Gates","3 Mutton lane, Cork, County Cork, K90 NM56","0214273471","Senior Mechanic","M","1995-02-04",57200,"1245703D","G2"
);

INSERT INTO employees VALUES (
"IL74","Bryan","Gray","40 Mulcaire Manor, Newport, County Tipperary, P73 MK82","0657230416","Senior Mechanic","M","1978-05-26",52000,"0390415K","G2"
);

INSERT INTO employees VALUES (
"JP28","Ruth","Cameron","Kilbeacanty, Gort, County Galway, F78 BV90","091631426","Junior Mechanic","F","1989-01-01",32600,"7521136U","G2"
);

INSERT INTO employees VALUES (
"FD65","Francis","Guinness","Albert Quay, Cork, County Cork, L52 GD89","0214965704","Junior Mechanic","M","1982-01-28",39000,"4238175Q","G2"
);

INSERT INTO employees VALUES (
"LJ54","Adam","Attwood","Brewery Road, Stillorgan, County Dublin, U09 IW62","012889189","Manager","M","1972-02-17",70250,"9639405C","G3"
);

INSERT INTO employees VALUES (
"GF86","Shannon","Vernon","The Square, Oldcastle, County Meath, D37 ZF49","6340248952","Senior Mechanic","F","1976-06-16",51400,"8241601R","G3"
);

INSERT INTO employees VALUES (
"NQ37","Edgar","Payne","50 Patrick St, Dun Laoghaire, County Dublin, A72 VX34","014535488","Senior Mechanic","M","1994-08-15",50000,"2342286L","G3"
);

INSERT INTO employees VALUES (
"HF09","Larry","Baxter","8 Pearse St, Mullingar, County Westmeath, B49 VC59","0449348526","Junior Mechanic","M","1991-09-28",31950,"5271682U","G3"
);

INSERT INTO employees VALUES (
"ZE48","Debra","Roscoe","10 The Quay, New Ross, County Wexford, T20 KS94","051420222","Junior Mechanic","F","1989-01-16",32000,"7526675B","G3"
);

CREATE TABLE customers(
CId VARCHAR(4) NOT NULL,
Forename VARCHAR(20) NOT NULL, 
Surname VARCHAR(20) NOT NULL, 
Address VARCHAR(60), 
TelNo VARCHAR(12) NOT NULL,
PRIMARY KEY (CId)
);

INSERT INTO customers VALUES (
"C91","John","Kay","56 High St, Putney, County Dublin, N66 XH29","01717745632"
);

INSERT INTO customers VALUES (
"C73","Aline","Stewart","64 Fern Dr. Pollock, County Dublin, G42 RT39","01418481825"
);

INSERT INTO customers VALUES (
"C52","Mike","Ritchie","18 Tain St, County Dublin, P01 UI83","01475392178"
);

INSERT INTO customers VALUES (
"C85","Mary","Tregear","5 Tarbot Rd, County Dublin, A39 BD93","01224196720"
);

INSERT INTO customers VALUES (
"C21","Alan","Murray","60 Main St, Bray, County Wicklow, G84 K94","012863959"
);

INSERT INTO customers VALUES (
"C09","Richard","Ormond","Mucklagh, Tullamore, County Offaly, D25 SX73","0579321371"
);

INSERT INTO customers VALUES (
"C36","Anne","Fitzgerald","9 Elsinore, Castletroy, County Limerick, X72 BV89","0669795821"
);

INSERT INTO customers VALUES (
"C64","Simon","Kennedy","Cavan St, Omagh, County Tyrone, A69 G33","0498541200"
);

INSERT INTO customers VALUES (
"C23","Terry","Conway","Carrickhenry, Ballisodare, County Sligo, L09 IU73","0719160027"
);

INSERT INTO customers VALUES (
"C63","Aidan","Walsh","Loughgeorge, Claregalway, County Galway, J33 BL83","091798565"
);

INSERT INTO customers VALUES (
"C71","Maurice","Murphy","27 Oldtown Grove, Derry, County Derry, J72 K83","0494371286"
);

INSERT INTO customers VALUES (
"C60","Tony","Smith","Summerfield House, Belfast, County Antrim, T47 V23","02492233"
);

CREATE TABLE car(
CNo VARCHAR(4) NOT NULL,
CId VARCHAR(4) NOT NULL,
Manufactured VARCHAR(40),
Model VARCHAR(20),
Brand VARCHAR(20),
GNo VARCHAR(4) NOT NULL,
ENo VARCHAR(4) NOT NULL,
PRIMARY KEY (CNo),
FOREIGN KEY (CId) REFERENCES customers (CId) ON UPDATE CASCADE,
FOREIGN KEY (GNo) REFERENCES garage (GNo) ON UPDATE CASCADE,
FOREIGN KEY (ENo) REFERENCES employees (ENo) ON UPDATE CASCADE
);

INSERT INTO car VALUES (
"DF52","C91","2013","Focus","Ford","G3","ZE48"
);

INSERT INTO car VALUES (
"NJ88","C73","2015","E46","BMW","G3","HF09"
);

INSERT INTO car VALUES (
"PP10","C52","2002","Micra","Nissan","G3","GF86"
);

INSERT INTO car VALUES (
"JH74","C85","2018","Leaf","Aline","G3","NQ37"
);

INSERT INTO car VALUES (
"UI82","C21","2014","Corolla","Toyota","G3","GF86"
);

INSERT INTO car VALUES (
"NX02","C09","2012","Terrain","GMC","G2","FD65"
);

INSERT INTO car VALUES (
"LK28","C36","2009","Qashqai","Nissan","G2","JP28"
);

INSERT INTO car VALUES (
"UE03","C64","2011","XJ","Jaguar","G1","UR74"
);

INSERT INTO car VALUES (
"AZ19","C23","2005","3","Mazda","G1","HD83"
);

INSERT INTO car VALUES (
"EQ18","C63","2010","Focus","Ford","G2","IL74"
);

INSERT INTO car VALUES (
"AO77","C71","2006","Micra","Nissan","G1","PO90"
);

INSERT INTO car VALUES (
"ZM80","C60","2006","Hatchback","MINI","G1","AY74"
);

CREATE TABLE problems(
CNo VARCHAR(4) NOT NULL,
CId VARCHAR(4) NOT NULL,
PNo VARCHAR(40) NOT NULL,
GNo VARCHAR(4) NOT NULL,
ENo VARCHAR(4) NOT NULL,
PRIMARY KEY (PNo),
FOREIGN KEY (CNo) REFERENCES  car (CNo) ON UPDATE CASCADE,
FOREIGN KEY (CId) REFERENCES customers (CId) ON UPDATE CASCADE,
FOREIGN KEY (GNo) REFERENCES garage (GNo) ON UPDATE CASCADE,
FOREIGN KEY (ENo) REFERENCES employees (ENo) ON UPDATE CASCADE
);

INSERT INTO problems Values(
"DF52","C91","AA01 Front Right Flat Tire","G3","ZE48"
);

INSERT INTO problems Values(
"NJ88","C73","AB37 Oil Leak","G3","HF09"
);

INSERT INTO problems Values(
"PP10","C52","DC27 Cracked Front Windshield","G3","GF86"
);

INSERT INTO problems Values(
"JH74","C85","UD83 Clutch Isssue","G3","NQ37"
);

INSERT INTO problems Values(
"UI82","C21","IX82 Rear Bumper Damage","G3","GF86"
);

INSERT INTO problems Values(
"NX02","C09","JF72 Window Electrics","G2","FD65"
);

INSERT INTO problems Values(
"LK28","C36","IU08 Blown Gasket","G2","JP28"
);

INSERT INTO problems Values(
"UE03","C64","TG27 Worn Brake Discs","G1","UR74"
);

INSERT INTO problems Values(
"AZ19","C23","LO98 Smashed Rear Window","G1","HD83"
);

INSERT INTO problems Values(
"EQ18","C63","ZJ72 Dead Battery","G2","IL74"
);

INSERT INTO problems Values(
"AO77","C71","RT20 Front Bumper Damage","G1","PO90"
);

INSERT INTO problems Values(
"ZM80","C60","FG19 Back Left Flat Tire","G1","AY74"
);
use cfarm;

set AUTOCOMMIT=0;
 INSERT INTO buysorders VALUES (
"IJ62","sheepfeed","90kg","10/04/21","30/04/21","80"
);
COMMIT;
INSERT INTO salesorder VALUES (
"C91","bread","50","20/10/21","28/10/21","50","56 High St, Putney, County Dublin, N66 XH29"
);
COMMIT;
INSERT INTO animals VALUES (
"cow","900kg","4000","g22"
);
COMMIT;
INSERT INTO inventory VALUES (
"wood","50kg","300","469"
);
COMMIT;
INSERT INTO farm VALUES (
"f1","2 Royal Lodge Rd.","Belfast","County Antrim","SH2 8YG","0153-7493845","100acres"
);
COMMIT;
INSERT INTO PurchaseOrders VALUES (
"g22","C91","IJ62","469","f1"
);
COMMIT;

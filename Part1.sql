/* This code drops the "comp_ware_db_IE_Group2" schema if it exists in the database */
DROP SCHEMA IF EXISTS `comp_ware_db_IE_Group2`;
/* This code starts a new transaction and creates a new schema named "comp_ware_db_IE_Group2" in the database. */
BEGIN; 
CREATE SCHEMA `comp_ware_db_IE_Group2` ;
/* This code sets the default schema to "comp_ware_db_IE_Group2" for the current database. */
USE comp_ware_db_IE_Group2;
/* This code drops the "SHELF" table if it exists in the database. */
DROP TABLE IF EXISTS SHELF;
/* Creates the "SHELF" table with three columns to store shelf information and a primary key constraint on the "Shelf_ID" column.*/
CREATE TABLE SHELF (
  Shelf_ID  VARCHAR(2),
  Shelf_Capacity  INT(5),
  Shelf_Remaining_Stock INT(5),
  PRIMARY KEY(Shelf_ID)
);
/* This code inserts rows of data into the "SHELF" table, representing shelf information in a warehouse.*/
INSERT INTO SHELF VALUES('A1','100','80');
INSERT INTO SHELF VALUES('A2','100','72');
INSERT INTO SHELF VALUES('A3','100','35');
INSERT INTO SHELF VALUES('A4','100','46');
INSERT INTO SHELF VALUES('A5','100','75');
INSERT INTO SHELF VALUES('A6','100','48');
INSERT INTO SHELF VALUES('A7','80','25');
INSERT INTO SHELF VALUES('B1','80','60');
INSERT INTO SHELF VALUES('B2','80','77');
INSERT INTO SHELF VALUES('B3','80','14');
INSERT INTO SHELF VALUES('B4','80','42');
INSERT INTO SHELF VALUES('B5','80','53');
INSERT INTO SHELF VALUES('B6','80','5'); 
INSERT INTO SHELF VALUES('B7','80','62');  
INSERT INTO SHELF VALUES('C1','70','17');
INSERT INTO SHELF VALUES('C2','70','57');  
INSERT INTO SHELF VALUES('C3','70','40');  
INSERT INTO SHELF VALUES('C4','70','4');  
INSERT INTO SHELF VALUES('C5','70','50');  
INSERT INTO SHELF VALUES('C6','70','22');
INSERT INTO SHELF VALUES('C7','70','56');    
INSERT INTO SHELF VALUES('D1','100','83');
INSERT INTO SHELF VALUES('D2','100','53');
INSERT INTO SHELF VALUES('D3','100','82');
INSERT INTO SHELF VALUES('D4','100','43');
INSERT INTO SHELF VALUES('D5','100','52');
INSERT INTO SHELF VALUES('D6','100','33');
INSERT INTO SHELF VALUES('D7','100','38');
INSERT INTO SHELF VALUES('E1','90','50');
INSERT INTO SHELF VALUES('E2','90','75');
INSERT INTO SHELF VALUES('E3','90','10');
INSERT INTO SHELF VALUES('E4','90','38');
INSERT INTO SHELF VALUES('E5','90','45');
INSERT INTO SHELF VALUES('E6','90','34');
INSERT INTO SHELF VALUES('E7','90','65');
INSERT INTO SHELF VALUES('F1','120','27');
INSERT INTO SHELF VALUES('F2','120','109');
INSERT INTO SHELF VALUES('F3','120','77');
INSERT INTO SHELF VALUES('F4','120','93');
INSERT INTO SHELF VALUES('F5','120','38');
INSERT INTO SHELF VALUES('F6','120','44');
INSERT INTO SHELF VALUES('F7','120','47');
INSERT INTO SHELF VALUES('G1','100','65');
INSERT INTO SHELF VALUES('G2','100','6');
INSERT INTO SHELF VALUES('G3','100','4');
INSERT INTO SHELF VALUES('G4','100','29');
INSERT INTO SHELF VALUES('G5','100','80');
INSERT INTO SHELF VALUES('G6','100','8');
INSERT INTO SHELF VALUES('G7','100','16');
/* This code drops the "CUSTOMER" table if it exists in the database. */
DROP TABLE IF EXISTS CUSTOMER;
/*This code creates a table called "CUSTOMER" with various attributes and a primary key on the "Customer_ID" column. */
CREATE TABLE CUSTOMER (
  Customer_ID  INT(10),
  Customer_FName  VARCHAR(15),
  Customer_LName  VARCHAR(15),
  Customer_Initial VARCHAR(2),
  Customer_Phone    VARCHAR (20),
  Customer_Email   VARCHAR(50),
  Customer_Address VARCHAR(200),
  Customer_SignUpDate DATE,
  PRIMARY KEY(Customer_ID)
);
/* This code inserts rows of data into the "CUSTOMER" table, representing customer information in a warehouse. */
INSERT INTO CUSTOMER VALUES('50001','Micah','Ruiz','MR','206-890-8303','hubert.hermiston@hills.com','35573 Stroman Drives Delilahbury ID 67510','2022-04-16');
INSERT INTO CUSTOMER VALUES('50002','Aaron','Davidson','AD','685-777-8852','nryan@bayer.com','98384 Thea Island New Adella NE 42685','2022-05-15');
INSERT INTO CUSTOMER VALUES('50003','Amira','Waters','AW','714-581-5207','wisozk.melody@gmail.com','4429 Toy Glens Apt. 211 Emiliobury AZ 26933','2021-01-10');
INSERT INTO CUSTOMER VALUES('50004','Riley','Hammond','RH','713-406-0155','vonrueden.tate@hotmail.com','196 Effertz Plain North Jarretview LA 50766','2021-08-19');
INSERT INTO CUSTOMER VALUES('50005','Mia','Torres','MT','279-929-1419','lowe.laila@schamberger.org','35301 Cora Walk North Afton MD 40097-3610', '2022-05-10');
INSERT INTO CUSTOMER VALUES('50006','Winter','Butler','WB','879-370-0539','russell37@hotmail.com','5771 Jaleel Burgs Port Vance OR 81187', '2021-09-29');
INSERT INTO CUSTOMER VALUES('50007','Romeo','Cox','RC','708-862-0120','aaliyah.ohara@gmail.com','7667 Pietro Union Priceburgh  KY 17328-3066','2022-01-20');
INSERT INTO CUSTOMER VALUES('50008','Savannah','James','SJ','519-887-0308','dhyatt@gmail.com','2117 Homenick Landing Apt. 064 Steubermouth OH 29515', '2021-12-17');
INSERT INTO CUSTOMER VALUES('50009','Liliana','Harris','LH','730-832-6142','cruz15@yahoo.com', '657 Aurelio Mountain West Halie WA 82616-5245','2022-04-07');
INSERT INTO CUSTOMER VALUES('50010','Jaxson','Patterson','JP','657-789-4128','ipfeffer@pagac.info','3855 Vladimir Pike Apt. 422 Nolanmouth MD 00372-8915','2021-09-05');
INSERT INTO CUSTOMER VALUES('50011','Savannah','Williams','SW','667-358-1381','king11@kohler.com','149 Carley Mountain Weimannview VA 51018-5173','2022-02-19');
INSERT INTO CUSTOMER VALUES('50012','Collins','Young','CY','441-742-3520','berneice.jones@bernier.com','6039 Keebler Trace West Lavadaville FL 33615-0406','2022-01-27');
INSERT INTO CUSTOMER VALUES('50013','Everlee','Adams','EA','867-550-9982','anderson.elisha@hotmail.com','9723 Roberts Common Riceburgh AK 60610','2022-03-26');
INSERT INTO CUSTOMER VALUES('50014','Eva','Taylor','ET','784-800-8823', 'abalistreri@yahoo.com','10 Pamela Manor Suite 927 Kristopherland CA 86699-1982','2021-09-10');
INSERT INTO CUSTOMER VALUES('50015','Ezra','Smith','ES','883-437-6234','vkilback@watsica.com','3777 Jevon Hill Nathanbury PA 75959','2022-01-20');
INSERT INTO CUSTOMER VALUES('50016','Willow','Gibson','WG','306-32-6500','nona.orn@schmitt.org','920 Grady Run Kellimouth WY 51931-5889','2021-06-06');
INSERT INTO CUSTOMER VALUES('50017','Mya','White','MW','319-736-0904','bhartmann@willms.com','192 Kub Lock West Lydia VT 43146-2740','2021-09-09');
INSERT INTO CUSTOMER VALUES('50018','Kyrie','Davis','KD','510-358-7447','clara.ortiz@hotmail.com','71656 Trey Gardens Apt. 711 Port Muriel ID 82739','2022-04-19');
INSERT INTO CUSTOMER VALUES('50019','Presley','Evans','PE','757-689-8807','orland.zemlak@toy.biz','4966 Prosacco Lock North Steve MI 96508','2021-11-11');
INSERT INTO CUSTOMER VALUES('50020','Nylah','Lee','NL','520-869-4413','nreichel@goldner.com','686 Schinner Club East Kiptown ID 02812-2719','2021-12-25');
INSERT INTO CUSTOMER VALUES('50021','Fiona','Horton','FH','314-417-5972','emmie.berge@schmeler.info','8777 Jermain Shoal Destinyton OK 05131-1827','2022-03-19');
INSERT INTO CUSTOMER VALUES('50022','Alice','Cook','AC','439-853-1766','cveum@yahoo.com','182 Joe Streets Othaberg RI 13901-1343','2022-02-27');
INSERT INTO CUSTOMER VALUES('50023','Johan','Ross','JR','552-990-2896','monte.rice@gmail.com','8722 Arnaldo Walks Ransomside IN 86968-2273','2021-10-21');
INSERT INTO CUSTOMER VALUES('50024','Mateo','Gross','MG','954-942-2928','pwuckert@gmail.com','50471 Glover Views New Rebecca ND 79710','2021-07-29');
INSERT INTO CUSTOMER VALUES('50025','Paul','Floyd','PF','713-464-9852','alize.bradtke@jaskolski.net','482 Hand Club Lake Zetta PA 46246-5875','2022-03-27');

/* This code drops the "SKILL" table if it exists in the database. */
DROP TABLE IF EXISTS SKILL;
/* Creates the "SKILL" table with three columns to store skill information and a primary key constraint on the "Skill_ID" column. */
CREATE TABLE SKILL (
  Skill_ID  INT(3),
  Skill_Level  VARCHAR(1),
  Skill_Description  VARCHAR(20),
  PRIMARY KEY(Skill_ID)
);
/* This code inserts rows of data into the "SKILL" table, representing skill information of the employees in a warehouse. */
INSERT INTO SKILL VALUES('301','A','EXPERT');
INSERT INTO SKILL VALUES('302','B','INTERMEDIATE');
INSERT INTO SKILL VALUES('303','C','BEGINNER');

/* This code drops the "PRODUCT_DESC" table if it exists in the database. */
DROP TABLE IF EXISTS PRODUCT_DESC;
/* Creates the "PRODUCT_DESC" table with two columns to store product descriptions and a primary key constraint on the "PRODUCT_DESC_CODE" column. */
CREATE TABLE PRODUCT_DESC (
  PRODUCT_DESC_CODE INT(10),
  PRODUCT_DESC  TEXT,
  PRIMARY KEY(PRODUCT_DESC_CODE)
);
/* Data for the "PRODUCT_DESC" table imported from a csv file.*/

/* This code drops the "PRODUCT" table if it exists in the database. */
DROP TABLE IF EXISTS PRODUCT;
/* This code creates a table called "PRODUCT" with various attributes and a primary key on the "PRODUCT_ID" column, foreign keys on the "PRODUCT_DESC_CODE" , "SHELF_ID" columns.*/
CREATE TABLE PRODUCT (
  PRODUCT_ID  INT(10),
  PRODUCT_DESC_CODE INT(10),
  PRODUCT_PRICE DOUBLE,
  PRODUCT_TYPE TEXT,
  PRODUCT_BRAND TEXT,
  SHELF_ID VARCHAR(2),
  PRIMARY KEY(PRODUCT_ID),
  FOREIGN KEY (PRODUCT_DESC_CODE) REFERENCES PRODUCT_DESC(PRODUCT_DESC_CODE),
  FOREIGN KEY (SHELF_ID) REFERENCES SHELF(SHELF_ID)
);
/* Data for the "PRODUCT" table imported from a csv file.*/

/* This code drops the "ORDERS" table if it exists in the database. */
DROP TABLE IF EXISTS ORDERS;
/* This code creates a table called "ORDERS" with various attributes and a primary key on the "Order_ID" column, foreign key on the "Customer_ID" column.*/
CREATE TABLE ORDERS (
  Order_ID  INT(10),
  Order_Date DATE,
  Order_BillNo INT (15),
  Customer_ID INT(15),
  PRIMARY KEY(Order_ID),
  FOREIGN KEY (Customer_ID) REFERENCES CUSTOMER(Customer_ID)
  );
/* Data for the "ORDERS" table imported from a csv file.*/
  
/* This code drops the "ORDER_DETAILS" table if it exists in the database. */  
DROP TABLE IF EXISTS ORDER_DETAILS;
/* Creates the "ORDER_DETAILS" table with three columns to store order detail information and a primary key constraints on the "Order_ID","PRODUCT_ID" columns.*/
CREATE TABLE ORDER_DETAILS (
  Order_ID  INT(6),
  PRODUCT_ID    INT(10),
  Order_Quantity INT(5),
  PRIMARY KEY(Order_ID, PRODUCT_ID  )
);
/* This code inserts rows of data into the "ORDER_DETAILS" table, representing order detail informations in a warehouse.*/
INSERT INTO ORDER_DETAILS VALUES('44719','100001','20');
INSERT INTO ORDER_DETAILS VALUES('10982','100002','28');
INSERT INTO ORDER_DETAILS VALUES('99239','100003','65');
INSERT INTO ORDER_DETAILS VALUES('18384','100004','54');
INSERT INTO ORDER_DETAILS VALUES('11969','100005','25');
INSERT INTO ORDER_DETAILS VALUES('97372','100006','52');
INSERT INTO ORDER_DETAILS VALUES('11740','100007','55');
INSERT INTO ORDER_DETAILS VALUES('39168','100008','20');
INSERT INTO ORDER_DETAILS VALUES('45934','100009','3');
INSERT INTO ORDER_DETAILS VALUES('81325','100010','66');
INSERT INTO ORDER_DETAILS VALUES('30355','100011','38');
INSERT INTO ORDER_DETAILS VALUES('18541','100012','23');
INSERT INTO ORDER_DETAILS VALUES('62653','100013','75'); 
INSERT INTO ORDER_DETAILS VALUES('58458','100014','18');
INSERT INTO ORDER_DETAILS VALUES('57012','100015','53');
INSERT INTO ORDER_DETAILS VALUES('35478','100016','13');  
INSERT INTO ORDER_DETAILS VALUES('46475','100017','30');  
INSERT INTO ORDER_DETAILS VALUES('53174','100018','66');  
INSERT INTO ORDER_DETAILS VALUES('33064','100019','20');   
INSERT INTO ORDER_DETAILS VALUES('50687','100020','48');
INSERT INTO ORDER_DETAILS VALUES('92002','100021','14');    
INSERT INTO ORDER_DETAILS VALUES('79407','100022','17');
INSERT INTO ORDER_DETAILS VALUES('28828','100023','47');
INSERT INTO ORDER_DETAILS VALUES('28241','100024','18');
INSERT INTO ORDER_DETAILS VALUES('93555','100025','57');
INSERT INTO ORDER_DETAILS VALUES('38384','100026','48');
INSERT INTO ORDER_DETAILS VALUES('95159','100027','67');
INSERT INTO ORDER_DETAILS VALUES('69725','100028','62');
INSERT INTO ORDER_DETAILS VALUES('46975','100029','40');
INSERT INTO ORDER_DETAILS VALUES('78729','100030','15');
INSERT INTO ORDER_DETAILS VALUES('43214','100031','80');
INSERT INTO ORDER_DETAILS VALUES('12983','100032','52');
INSERT INTO ORDER_DETAILS VALUES('88391','100033','45');
INSERT INTO ORDER_DETAILS VALUES('59756','100034','56');
INSERT INTO ORDER_DETAILS VALUES('92932','100035','25');
INSERT INTO ORDER_DETAILS VALUES('39401','100036','93');
INSERT INTO ORDER_DETAILS VALUES('97919','100037','11');
INSERT INTO ORDER_DETAILS VALUES('27331','100038','43');
INSERT INTO ORDER_DETAILS VALUES('70847','100039','27');
INSERT INTO ORDER_DETAILS VALUES('18351','100040','79');
INSERT INTO ORDER_DETAILS VALUES('88087','100041','76');
INSERT INTO ORDER_DETAILS VALUES('46922','100042','73');
INSERT INTO ORDER_DETAILS VALUES('12838','100043','35');
INSERT INTO ORDER_DETAILS VALUES('50773','100044','94');
INSERT INTO ORDER_DETAILS VALUES('38265','100045','96');
INSERT INTO ORDER_DETAILS VALUES('47593','100046','71');
INSERT INTO ORDER_DETAILS VALUES('94288','100047','20');
INSERT INTO ORDER_DETAILS VALUES('31354','100048','92');
INSERT INTO ORDER_DETAILS VALUES('91264','100049','84');
INSERT INTO ORDER_DETAILS VALUES('55126','100040','3');





# KradenTree
KradenTree E-commerce  Powered by Java 

![alt text](https://serving.photos.photobox.com/1066405870f67ba34ba9e6070f6a61b9585571382239a316778616bc45676ca7285f065e.jpg)

### คำอธิบาย <br>
1.nproject โฟล์เดอร์หลักของ Netbean <br>
2.src โฟล์เดอร์หลักของระบบ <br>

### สมาชิกภายในกลุ่ม <br>
1.1. นายฐณพล ประดิษฐ์สถบดี    รหัสนักศึกษา 60130500024 <br>
2.2. นายกฤตภัค   กิจจิว		รหัสนักศึกษา 60130500002 <br>
3.3. นายจิรพันธ์  เย็นขัน		รหัสนักศึกษา 60130500012 <br>
4.4. นางสาวพรสวรรค์  ดอนไพรวัลย์   รหัสนักศึกษา 59130500142



 ### ลักษณะการทำงานของระบบ KradenTree จะแบ่งเป็น 3 ส่วนในการใช้งาน ดังนี้  <br>

#### ส่วนของลูกค้า ( Customer )<br>
- สามารถแก้ไขข้อมูลที่อยู่ในการจัดส่งได้<br>
- สามารถเลือกรูปแบบในการจัดส่งเองได้<br>
- สามารถเลือกรูปแบบการชำระเงินเองได้ทั้ง MasterCard Visa UnionPay<br>
- ระบบตะกร้าสินค้าของลูกค้า<br>
- มีโค๊ดลดราคาสินค้า<br>
#### ส่วนของผู้ดูแล / ผู้ขาย ( Administrator / Saller ) <br>
- กำหนดการแสดงผลของสินค้าได้ เช่น สินค้าโปรโมชั่น สินค้าแนะนำเป็นต้น <br>
- สามารถเพิ่มสิทธิ์ให้ Seller หรือ Customer ได้<br>
- สามารถจัดการในส่วนของ Seller หรือ Customer เองได้ไม่ว่าจะเป็น ดูข้อมูล เพิ่ม ลบ หรือ แก้ไขข้อมูล<br>
- ดูสินค้าทั้งหมดที่ Seller เอามาขาย หรือ สินค้าทั้งหมด<br>
- ดู/แก้ไข Order ทั้งหมด<br>

## CREATE TABLE AND Use this Script
```
CREATE TABLE ACCOUNT (
ACCOUNTID VARCHAR(7) NOT NULL,
USERNAME VARCHAR(50),
 PASSWORD VARCHAR(50),
FNAME VARCHAR(50),
LNAME VARCHAR(50),
EMAIL VARCHAR(50),
TELNO VARCHAR(10),
ACTIVATE VARCHAR(500),
CREATE_DATE VARCHAR(100),
 UPDATE_DATE VARCHAR(50),
ACTIVATED BOOLEAN,
PRIMARY KEY (ACCOUNTID));

CREATE TABLE ADDRESS (
ADDRESSID VARCHAR(100) NOT NULL,
ACCOUNTID VARCHAR(7),
ADDRESS VARCHAR(1000),
 ACTIVE VARCHAR(2),
 PRIMARY KEY (ADDRESSID));

CREATE TABLE ADMIN_LOGIN (
ID INTEGER NOT NULL,
USERNAME VARCHAR(100),
PASSWORD VARCHAR(100),
NAME VARCHAR(200), A
DDRESS VARCHAR(200),
EMAIL VARCHAR(150),
 PRIMARY KEY (ID));

CREATE TABLE CATEGORY (
CATEGORYID INTEGER NOT NULL,
CATEGORYNAME VARCHAR(100),
PRIMARY KEY (CATEGORYID));

CREATE TABLE ORDERS (
ORDERID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (start with 1 ,increment by 1),
ORDERDATE DATE NOT NULL,
TOTALPRICE DOUBLE NOT NULL,
ACCOUNTID VARCHAR(7) NOT NULL,
PRIMARY KEY (ORDERID));

CREATE TABLE ORDERDETAIL (
ORDERDETAILID INTEGER  NOT NULL GENERATED ALWAYS AS IDENTITY (start with 1 ,increment by 1),
ORDERID INTEGER NOT NULL,
PRODUCTID VARCHAR(50) NOT NULL,
QUANTITY INTEGER NOT NULL,
PRICE DOUBLE NOT NULL,
PRIMARY KEY (ORDERDETAILID));

CREATE TABLE PRODUCT (PRODUCTID VARCHAR(50) NOT NULL,
PRODUCTNAME VARCHAR(100),
CATEGORY VARCHAR(100),
TYPE VARCHAR(100),
DETAIL VARCHAR(1000),
PRICE DOUBLE,
PICTURE VARCHAR(1000),
QUANTITY INTEGER,
PRIMARY KEY (PRODUCTID));
```

### DB Connection <br>
Database Name: kradentree <br>
UserName: kraden <br>
Password: kraden  <br>




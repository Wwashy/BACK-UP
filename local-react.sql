-- check for the storage space 
SELECT table_schema AS "Databases", ROUND(SUM(data_length + index_length) / 1024 / 1024, 2) AS "Size (MB)" FROM information_schema.TABLES GROUP BY table_schema ;

create table facility(
id int not null auto_increment primary key,
fname varchar(50),
location varchar(50),
contact varchar(50),
manager varchar(50),
email varchar(255)
);
select * from facility;

Create table transactionTable(
transactionID int not null auto_increment primary key,
refNo int not null,
treatmentIDs varchar(255),
bill float not null,
amountPaid float ,
balance float ,
remarks varchar(20),
t_date date,
t_time	time
);
select * from transactionTable;


create table clientTable(
refNo int not null auto_increment primary key,
firstname varchar(255),
lastname varchar(255),
surname varchar(255),
Phone varchar(20),
residence varchar(50),
yob int,
gender varchar(20),
r_date date
);
select * from clientTable;
alter table clientTable add column surved varchar(50) null;

CREATE TABLE DiagnosisAndTreatmentTable (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    refNo INT NOT NULL,
    tooth VARCHAR(20),
    dx VARCHAR(50),
    rx VARCHAR(50),
    bill INT,
    paymentStatus VARCHAR(2),
    dentist VARCHAR(50),
    assistant VARCHAR(50),
    s_date DATE,
    s_time TIME
);
SELECT * FROM DiagnosisAndTreatmentTable;
-- failed
alter table DiagnosisAndTreatmentTable
add column drugs varchar(255) null ;


create table servicesOffered(
id int not null auto_increment primary key,
service varchar(255) not null,
cost int not null
);
select *from servicesOffered;

create table dentist(
id int not null auto_increment primary key,
firstname  varchar(255),
lastname varchar(255),
surname varchar(255),
yob int,
residence varchar(255),
gender varchar(20),
phone varchar(255),
bankaccount varchar(255)
);
select * from dentist;

create table assistant(
id int not null auto_increment primary key,
firstname  varchar(255),
lastname varchar(255),
surname varchar(255),
yob int,
residence varchar(255),
gender varchar(20),
phone varchar(255),
bankaccount varchar(255)
);
select * from assistant;

create table CommunityOralhealthOfficer(
id int not null auto_increment primary key,
firstname  varchar(255),
lastname varchar(255),
surname varchar(255),
yob int,
residence varchar(255),
gender varchar(20),
phone varchar(255),
bankaccount varchar(255)
);
select * from CommunityOralhealthOfficer;


create table DentalTechnologist(
id int not null auto_increment primary key,
firstname  varchar(255),
lastname varchar(255),
surname varchar(255),
yob int,
residence varchar(255),
gender varchar(20),
phone varchar(255),
bankaccount varchar(255)
);
select * from DentalTechnologist;


create table RegisteredClinicalOfficer(
id int not null auto_increment primary key,
firstname  varchar(255),
lastname varchar(255),
surname varchar(255),
yob int,
residence varchar(255),
gender varchar(20),
phone varchar(255),
bankaccount varchar(255)
);
select * from RegisteredClinicalOfficer;


create table Nurse(
id int not null auto_increment primary key,
firstname  varchar(255),
lastname varchar(255),
surname varchar(255),
yob int,
residence varchar(255),
gender varchar(20),
phone varchar(255),
bankaccount varchar(255)
);
select * from Nurse;

create table RegisteredNurse(
id int not null auto_increment primary key,
firstname  varchar(255),
lastname varchar(255),
surname varchar(255),
yob int,
residence varchar(255),
gender varchar(20),
phone varchar(255),
bankaccount varchar(255)
);
select * from RegisteredNurse;

create table Surgion(
id int not null auto_increment primary key,
firstname  varchar(255),
lastname varchar(255),
surname varchar(255),
yob int,
residence varchar(255),
gender varchar(20),
phone varchar(255),
bankaccount varchar(255)
);
select * from Surgion;


create table Receptionist(
id int not null auto_increment primary key,
firstname  varchar(255),
lastname varchar(255),
surname varchar(255),
yob int,
residence varchar(255),
gender varchar(20),
phone varchar(255),
bankaccount varchar(255)
);
select * from Receptionist;


create table appointments(
id int not null auto_increment primary key,
refNo int,
appnames varchar(50),
phone varchar(50),
appdate date,
apptime time
);
select * from appointments;

create table admin_data(
id int not null auto_increment primary key,
user_name varchar(255),
user_bonus varchar(255),
user_type varchar(50)
);

insert into admin_data(user_name,user_bonus,user_type)values('user','user@123','standard');
insert into admin_data(user_name,user_bonus,user_type)values('admin','admin@123','admin');
insert into admin_data(user_name,user_bonus,user_type)values('dev','dev@dev','admin');

create table queTable(
refNo int not null primary key,
firstname varchar(255),
lastname varchar(255)
);


use clinicreactlocal;

-- SELECT clientTable.refNo,clientTable.firstname,clientTable.lastname FROM clientTable,DiagnosisAndTreatmentTable WHERE clientTable.refNo != DiagnosisAndTreatmentTable.refNo AND clientTable.r_date='2020-12-20';
-- SELECT refNo,firstname,lastname FROM clientTable WHERE refNo=(SELECT MAX(refNo) FROM clientTable);

-- SELECT clientTable.refNo,clientTable.firstname,clientTable.lastname,transactiontable.transactionID,transactiontable.treatmentIDs,transactionTable.bill,
-- transactionTable.amountPaid,transactionTable.balance,DATE(transactionTable.t_date),clientTable.phone
-- FROM transactiontable
-- INNER JOIN clienttable ON transactiontable.refNo =clienttable.refNo AND transactiontable.t_date='2020-09-15';


--  drop table dentist,assistant,servicesOffered,appointments,DiagnosisAndTreatmentTable,staff,clientTable,facility;
-- SELECT EXISTS(SELECT * FROM admin_data WHERE user_name='user2'AND user_bonus='12345') AS Istrue, EXISTS(SELECT * FROM admin_data WHERE user_name='user2'AND user_bonus='12345' AND user_type='admin') AS Isadmin;


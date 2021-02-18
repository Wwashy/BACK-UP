use heroku_a99edef6db2d24a;

create table daily(
id int auto_increment primary key,
tin float,
sack float ,
amountPerUnit float,
totalAmount float,
millDate date);
delete from daily;

create table PowerStatus (
id int not null auto_increment primary key,
initialUnits float,
closingUnits float,
machineStatus varchar(50),
recorded date unique
);
select * from powerstatus;
delete from powerstatus;
-- SELECT initialUnits,closingUnits,machineStatus FROM PowerStatus WHERE recorded ='2020-09-23';
create table UnitPrices(
id int not null auto_increment primary key,
sack float,
tin float
);
insert into UnitPrices(tin,sack) values(0,0);


-- select sum(tin) AS tins, sum(sack) AS sacks, sum(totalAmount) AS totalAmount from daily;

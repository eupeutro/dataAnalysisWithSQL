create table TestaDecimal(
id int auto_increment primary key,
A Decimal (18,10),
b float
);
insert into TestaDecimal (A,B) values (1.1,1.1), (1.2,1.2);
select sum(A) from TestaDecimal;
select sum(B) from TestaDecimal;



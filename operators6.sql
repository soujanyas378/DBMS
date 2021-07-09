
  
create table customer (cid int primary key,cust_name varchar(20));
insert into customer values(1, 'shivani');
insert into customer values(2, 'shreeya');
insert into customer values(3, 'selvi');
select * from customer;

create table reservations(resid int primary key, cid int,day date);
insert into reservations values(101, 1, '2021-06-25');
insert into reservations values(102, 2, '2021-07-26');
insert into reservations values(103, 3, '2021-08-27');
select * from reservations;

select cid as id,cust_name as name from customer where cid <> ALL(select cid from reservations);
select cust_name as name from customer where cid = ANY(select cid from reservations);
select cid as id from customer where cid = some(select cid from reservations);
select cid as id from customer where cid IN(select cid from reservations);
select * from reservations where resid in (2,3);
select * from customer where cid in (select cid from reservations);

select cid  from customer where cid<3 and cid in(select cid from reservations where day='2021-06-28');
select cid  from customer where cid<3 or cid in(select cid from reservations where day='2021-06-28');
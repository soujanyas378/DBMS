
  
show databases;
use db;
show tables;
CREATE table test(name varchar (20) not null);
select * from test;
desc test;
insert into test(name) values("ap");
SHOW triggers;
create table test_audit(name varchar(2) NOT NULL);
desc test_audit;
create trigger t4
after insert on test
for each row 
insert into test_audit set name = NEW.name;

insert into test(name) values ("dd");
select * from test_audit;
create database linkedin;
use linkedin;
create table atstable(id int, technology varchar(25));
insert into atstable values(1, "ds"),
(1,"tablequ"),
(1,"sql"),
(2,"R"),
(2,"Powerbi"),
(1,"python");


select id from atstable where technology = "ds" and id in (select id from atstable where technology = "sql" and id in (select id from atstable where technology = "python" ));


create table product_info(pr_id int, pr_name varchar(25));
create table like_table(cr_id int, pr_id int, like_date date);

insert into product_info values(1001,"blog"),
(1002,"youtube"),
(1003,"education");

insert into like_table value
	(1,1001,"19-08-23"),
	(2,1003,"08-08-23");
    
select * from product_info where pr_id NOT IN (select pr_id from like_table);
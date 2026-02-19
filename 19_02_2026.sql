-- drop table Students;
-- select * from Students;


-- create index new_id_name on students(firstname);
-- drop index new_id_name;


-- begin transaction;
-- update Students SET nickname='potter_yashka5' where id=1;
-- select * from Students;
-- rollback;
-- select nickname as НИК from Students;

-- select*from Students;
select (firstname||' '||lastname) as ФИО from Students WHERE strftime('%m',Birthdate)='12';
select (firstname||' '||lastname) as ФИО from Students WHERE cast(strftime('%m',Birthdate)as integer)=12;
select (firstname||' '||lastname) as ФИО,
cast(strftime('%Y.%m%d','now')-strftime('%Y.%m%d',birthdate) as int) as Возраст
 from students where Возраст > 27 and strftime('%m',Birthdate)='12';

-- работа с самой бд DDL
-- create, alter, drop

-- работа с таблицей(с данными) DML
-- select, insert, update,delete

-- dcl защита
-- grant,revoke
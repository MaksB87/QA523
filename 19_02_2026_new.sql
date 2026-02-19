-- select*from Students;

-- create Table students_reserv(
-- id integer primary key autoincrement,
-- firstname text,
-- lastname text,
-- nickname text,
-- birthdate date,
-- email text unique
-- );

-- insert into students_reserv select * from Students where id between 1 and 18;

-- для T-sql
-- select*from students_reserv;

-- insert into students(firstname,lastname,nickname,
-- birthdate,email ) values ('Peter','Parker','Spider-Man','2001-08-10','spidy01@gmail.com');
-- insert into students(firstname,lastname,nickname,
-- birthdate,email ) values ('Tony','Stark','Iron Man','1970-05-29','tony70@gmail.com');


-- update students set email='spidy13@gmail.com' where  firstname='Peter';
delete from Students where id>18;
select*from Students;
-- SELECT * from students;
-- select id,(firstname||' '||lastname) as ФИО from students;
-- select id,(firstname||' '||lastname) as ФИО,
-- cast(strftime('%Y.%m%d','now')-strftime('%Y.%m%d',birthdate) as int) as Возраст
--  from students;
 select id,(firstname||' '||lastname) as ФИО,
cast(strftime('%Y.%m%d','now')-strftime('%Y.%m%d',birthdate) as int) as Возраст
 from students where Возраст > 27;
-- select*from Teachers;

-- select name, cast(strftime('%Y','now')-strftime('%Y',Birtdate) as integer)+10
-- as [age plus 10] from Teachers;

-- select  * from Teachers limit 4;

-- select count(*) as [кол-во записей в таблице] from  Teachers;

select distinct Name from Teachers;

select * from Teachers where length(Subject)>=4;
-- >,<,>=,<=,!=,=,<>
select * from Teachers where cast(strftime('%m',Birtdate) as integer)>=5 
and cast(strftime('%m',Birtdate) as integer)<=11;

select * from Teachers where cast(strftime('%Y',Birtdate) as integer)%2!=0;

select *from Teachers where Subject is 'ITE1';
select * from Teachers where Subject  is not 'ITE1';
select*from Teachers where  NOT Subject='C#';
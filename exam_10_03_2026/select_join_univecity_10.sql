-- SELECT Firstname,LastName,Birthdate,
-- Email from Students where exists
-- (select*from achievements where achievements.studentid=students.id); 

-- SELECT Firstname,LastName,Birthdate,
-- Email from Students where not exists
-- (select*from achievements where achievements.studentid=students.id);

-- SELECT Firstname,LastName,Birthdate, Email from Students
-- where id in (select StudentId from Achievements where Assesment=10);
-- select StudentId from Achievements where Assesment=10;

-- select count(*) as [count] from students where students.birthdate >(select Birthdate from teachers);


-- select Assesment  from Groups G,Students S, Achievements A  
-- where S.Groupid=G.Id and A.StudentId=S.id and Groupname='30PR11';

-- select StudentId,Assesment from Achievements Group By StudentId,Assesment Having Assesment not in (
-- select Assesment  from Groups G,Students S, Achievements A  
-- where S.Groupid=G.Id and A.StudentId=S.id and Groupname='30PR11') ;

-- select firstname,lastname,assesment from students s,(select StudentId,Assesment from Achievements Group By StudentId,Assesment Having Assesment not in (
-- select Assesment  from Groups G,Students S, Achievements A  
-- where S.Groupid=G.Id and A.StudentId=S.id and Groupname='30PR11')) as m where  m.studentid=s.id;

---------------------------------------------------------

-- select firstname||' '||lastname as fullname,Birthdate from teachers
-- union 
-- select firstname||' '||lastname as fullname,Birthdate from students;

-- select firstname||' '||lastname as fullname,Birthdate from teachers
-- where cast(strftime('%Y','now')-strftime('%Y',Birthdate) as integer)<40
-- union 
-- select firstname||' '||lastname as fullname,Birthdate from students;

-- select firstname||' '||lastname as fullname,Birthdate from teachers
-- where cast(strftime('%Y','now')-strftime('%Y',Birthdate) as integer)<40
-- union 
-- select firstname||' '||lastname as fullname,Birthdate from students order by Birthdate;

-- select 'Весна' as [Сезоны года],count(*) as [кол-во студентов] from students
--  where cast(strftime('%m',Birthdate) as integer) between 3 and 5 
--  union all
-- select 'Лето' as [Сезоны года],count(*) as [кол-во студентов] from students
--  where cast(strftime('%m',Birthdate) as integer) between 6 and 8 
--  union all 
-- select 'Осень' as [Сезоны года],count(*) as [кол-во студентов] from students
--  where cast(strftime('%m',Birthdate) as integer) between 9 and 11 
--  union all
-- select 'Зима' as [Сезоны года],count(*) as [кол-во студентов] from students
--  where cast(strftime('%m',Birthdate) as integer)in (1,2,12); 


--  select count(*) as Allcount from students where cast(strftime('%m',Birthdate) as integer) between 5 and 8 
-- union all
-- select count(*)  from teachers where cast(strftime('%m',Birthdate) as integer) between 5 and 8 ;


-- select 'Студенты' [Второй квартал года], count(*) [кол-во] from students where 
-- cast(strftime('%m',Birthdate) as integer) between 5 and 8 
-- union all
-- select 'Преподавтели' [Второй квартал года], count(*) [кол-во] from teachers where 
-- cast(strftime('%m',Birthdate) as integer) between 5 and 8
-- union all
-- select 'Все', SUM(Allsum.Allcount) from(
-- select count(*) as Allcount from students where cast(strftime('%m',Birthdate) as integer) between 5 and 8 
-- union all
-- select count(*)  from teachers where cast(strftime('%m',Birthdate) as integer) between 5 and 8 
-- ) as Allsum;

------------------------------
-- select column1,column2,... from table1 [inner] join table2 on table1.columnname=table2.columnname;


select*from groups inner join students on Groups.id=Students.Groupid;
select  Lastname,Firstname,Email,GroupName from groups  join students on Groups.id=Students.Groupid;

select  Lastname,Firstname,Name [SubjectName],assesment ,groupname from groups g  join students s 
on g.id=s.Groupid join Achievements a on s.id=a.StudentId 
join Subjects as  sb on sb.id=A.SubjectId;

select  Lastname,Firstname,Name [SubjectName],assesment ,groupname from groups g  join students s 
on g.id=s.Groupid join Achievements a on s.id=a.StudentId 
join Subjects as  sb on sb.id=A.SubjectId where GroupName like '29%' order by Birthdate;

select Firstname||' '||Lastname Fullname,Assesment from Students s join Achievements a on s.id=a.StudentId; 
select Firstname||' '||Lastname Fullname,Assesment from Students s left join Achievements a on s.id=a.StudentId; 

select Firstname||' '||Lastname Fullname,Assesment from Students s left join Achievements a on s.id=a.StudentId where assesment is null; 

-- select Firstname||' '||Lastname Fullname,Assesment from achievements a right join Students s on s.id=a.StudentId; 

select Name as [SubjectName],Firstname,Lastname  from Subjects s left  join Teachers_Subjects ts 
on s.id=ts.SubjectId left join Teachers t on t.id=ts.teachersid order by SubjectName; 

-- select Firstname,Lastname,Groupname from Students s full join Groups g on g.id=s.groupid; Error 
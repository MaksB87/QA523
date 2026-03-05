
--нужен подзапрос
-- select FirstName||' '||LastName FullName,GroupName,Grants from Students S,Groups G where G.id=S.GroupId 
-- group by Fullname,GroupName,Grants HAVING Grants=Max(Grants);

select FirstName||' '||LastName FullName,GroupName,Grants from Students S,Groups G where G.id=S.GroupId 
and Grants=1256;
-- select *from students;
select max(Grants) from students;


-- подзапрос
select FirstName||' '||LastName FullName,GroupName,Grants from Students S,Groups G where G.id=S.GroupId 
and Grants=(select max(Grants) from students);

-- некорректный запрос
-- select FirstName||' '||LastName FullName,Grants 
-- from Students S where GroupId=(Select Id from Groups where GroupName like '%11' );


Select Id from Groups where GroupName like '%11';
select FirstName||' '||LastName FullName,Groupid from Students
 where GroupId in (Select Id from Groups where GroupName like '%11');


-------------------------
select S.Id as Subid,S.Name as SubjectName from  Subjects S,
 Achievements A where S.id=A.SubjectId group by S.Name, S.Id Having Max(A.Assesment)>=10;


select T.LastName||' '||T.FirstName FullName from Teachers T, Teachers_Subjects TS ,
(select S.Id as Subid,S.Name as SubjectName from  Subjects S,
 Achievements A where S.id=A.SubjectId group by S.Name,
  S.Id Having Max(A.Assesment)>=10) as M where T.Id=TS.TeachersId and TS.SubjectId=M.Subid;


select AVG(cast(strftime('%m',birthdate)as integer)) from students;
select T.LastName||' '||T.FirstName FullName from Teachers T group By FullName having 
AVG(cast(strftime('%m',birthdate)as integer))>(select AVG(cast(strftime('%m',birthdate)as integer)) from Students);

-----
-- 1
select max(Grants) from students;
--2
select GroupId from students where grants=(select max(Grants) from students);
--3
select GroupName from Groups where id in (select GroupId from students where 
grants=(select max(Grants) from students));



---------

select Subjects.Name ,(select Max(A.Assesment) from Achievements As A 
where Subjects.id=A.subjectId) as MaximumAssesment from Subjects;
select Max(A.Assesment) from Achievements As A, Subjects where Subjects.id=A.subjectId;
----------------------------------------------------------------------------


select avg(cast(strftime('%Y','now')-strftime('%Y',birthdate) 
as integer))  [средний возраст преподавтеля] from  Teachers;

select LastName||' '||Firstname Fullname, cast(strftime('%Y','now')-strftime('%Y',birthdate) 
as integer) as Age from Teachers where Age>(
select avg(cast(strftime('%Y','now')-strftime('%Y',birthdate) 
as integer))  [средний возраст преподавтеля] from  Teachers);
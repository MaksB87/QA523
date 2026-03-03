-- select *from Teachers;
-- select * from Students;
select *from Groups;
-- select * from Subjects;
-- select*from Teachers_Subjects;
-- select*from Achievements;


select T.id,T.firstname||' '|| T.lastname [teachers name], T.birthdate [teachers bearhdate],
 S.Name as [Subject Name],ST.firstname||' '||ST.lastname [Student Name],
 ST.Birthdate [Student BirthDate],ST.Grants [Student Grant],ST.Email [Student Email],Assesment from Teachers  T,
 Teachers_Subjects TS,
 Subjects S, Students ST,Achievements A where
  TS.TeachersId=T.id and TS.SubjectId=S.id and A.SubjectId=S.id and ST.Id=A.StudentId;

select count(*) as [кол-во студентов] from students;
select count(Grants) [кол-во стипендий]  from students;
select count(distinct Grants) [кол-во уникальных стипендий] 
from students;

select avg(Grants) as [средняя стипендия] from students;
select sum(Grants)/count(Grants) as [средняя стипендия] from students;
select sum(Grants) [общая сумма стипендии] from students;
select max(Grants) [максимальная стипендия] from students;
select min(Grants) [минимальная стипендия] from students;
select avg(cast(strftime('%Y','now')-strftime('%Y',birthdate) 
as integer))  [средний возраст преподавтеля] from  Teachers;

select facultyid, Count(GroupName) as [кол-во групп на факультете] from Groups group by FacultyId;

select T.firstname||' '||T.lastname [ФИО Преподавателя], count(S.firstname) [кол-во студентов у преподавателя] from Teachers T,Teachers_Subjects TS, Subjects Sub, Achievements A, Students S where T.Id=TS.Teachersid and
 TS.SubjectId=Sub.id and Sub.id=A.SubjectId and A.Studentid=S.id group by [ФИО Преподавателя];

select facultyid, Count(GroupName) as [кол-во групп на факультете] from Groups group by FacultyId having count(Groupname)>1;

-- select count(--),Column from Table(s) where -- group by Column having ---;

-- select count(*) as [Кол-во преподавателей старше 40] From teachers where 
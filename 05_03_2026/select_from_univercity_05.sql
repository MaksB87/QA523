SELECT  GroupName,Count(*) as [кол-во студентов] from Groups as 
G,Students as S Where G.id=S.GroupId
group by GroupName;

SELECT  GroupName,Count(*) as [кол-во студентов] from Groups as 
G,Students as S Where G.id=S.GroupId
group by GroupName Having count(S.Groupid)>=2;


SELECT  GroupName,Count(*) as [кол-во студентов] FROM Groups as 
G,Students as S Where G.id=S.GroupId
group by GroupName Having count(S.Groupid)>=2 order by [кол-во студентов] desc;

select FirstName||' '||Lastname as FullName,Grants from Students Group by Fullname,Grants
 Having AVG(Grants)<=1200;


select Firstname,LastName from students group by Lastname,FirstName 
having LastName in ('Moore','Thomas','Brown');


select min(Lastname) as [Самая коротка фамилия] from students Having AVG(Grants)>1100;

-- шаблон
-- SELECT columnName1, columnName2, ...
-- FROM tableName
-- [WHERE condition]
-- [GROUP BY columnName1, columnName2, ...]
-- HAVING condition
-- [ORDER BY columnName1 ASC | DESC, ...];


-- select count(--),Column from Table(s) where -- group by Column having ---;

-- select count(*) as [Кол-во преподавателей старше 40] From teachers where 
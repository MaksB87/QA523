SELECT*from Achievements;

Select Firstname,Lastname,Birthdate,Email from students where exists(
SELECT*from Achievements where Achievements.StudentId=Students.id);

Select Firstname,Lastname,Birthdate,Email from students where not  exists(
SELECT*from Achievements where Achievements.StudentId=Students.id);


-- any
-- Select Firstname,Lastname,Birthdate,Email from students 
-- where id=ANY(select Studentid from Achievements where Assesment=10 );

Select Firstname,Lastname,Birthdate,Email from students 
where id in (select Studentid from Achievements where Assesment=10 );

select LastName||' '||FirstName Fullname, Birthdate from Students
union
select LastName||' '||FirstName Fullname, Birthdate from Teachers ;
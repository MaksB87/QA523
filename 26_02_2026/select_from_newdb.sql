-- select*from Teachers;
-- select*from Groups;

select Teachers.id as [Айди Препода],
FirstName,LastName,Birthdate,GroupName,FacultyId 
from teachers,groups where teachers.GroupId=Groups.id;
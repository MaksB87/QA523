-- SELECT *from Teachers;
-- Select * from Groups;
-- Select*from TeachersGroups;

select T.id, firstname||' '|| lastname [fullname], birthdate, GroupName  from 
Teachers T, Groups G,TeachersGroups TG where T.id=TG.TeachersId and G.Id=TG.GroupsId; 

select T.id, firstname||' '|| lastname [fullname], birthdate, GroupName  from 
Teachers T, Groups G,TeachersGroups TG where T.id=TG.TeachersId and G.Id=TG.GroupsId and G.id=1; 

select count(G.Id) [кол-во предметов] from 
Teachers T, Groups G,TeachersGroups TG 
where T.id=TG.TeachersId and G.Id=TG.GroupsId and T.lastname='Davies'; 
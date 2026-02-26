create table if not exists  Teachers(
Id integer primary key autoincrement,
LastName text,
FirstName text,
Birthdate date default '1980-01-01' check(Birthdate>'1970-01-01')
);

create table if not exists Groups(
Id integer primary key autoincrement,
GroupName text,
FacultyId integer
);


create table if not exists TeachersGroups(
TeachersId integer,
GroupsId integer,
FOREIGN KEY (GroupsId) REFERENCES Groups(Id),
FOREIGN KEY (TeachersId) REFERENCES Teachers(Id),
PRIMARY KEY(GroupsId,TeachersId)
);

-- insert into Teachers(FirstName,LastName,Birthdate) values 
-- ('Sophia','Davies','1984-12-08'),
-- ('Emma' ,'Kirk','1973-05-12'),
-- ('Henry', 'MacAlister','1975-02-17'),
-- ('Michael', 'Cooper','1978-11-23'),
-- ('Daniel', 'Williams','1979-07-30');

-- insert into [Groups] (GroupName,FacultyId) values 
-- ('29PR21',1),
-- ('30PR11',2),
-- ('31PPS11',1),
-- ('32PR31',2),
-- ('32PPS11',3);

-- insert into TeachersGroups values(1,3),(2,4),(3,2),(4,1),(5,5),(1,2);
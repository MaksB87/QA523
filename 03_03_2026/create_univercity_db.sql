create table if not exists  Teachers
(
Id integer primary key autoincrement,
LastName text not null,
FirstName text not null,
BirthDate text not null,
DepartmentId integer 
);

create table if not exists Subjects
(
Id integer primary key autoincrement,
Name text not null
);

create table if not exists Groups(
id integer primary key autoincrement,
GroupName text,
FacultyId integer not null
);

create table if not exists Teachers_Subjects
(
TeachersId integer,
SubjectId integer,
foreign key(TeachersId) references Teachers(Id),
foreign key(SubjectId) references Subjects(Id),
primary key(TeachersId,SubjectId)
);


create table  if not exists Students(
id integer primary key autoincrement,
FirstName text not null,
LastName text not null,
BirthDate date not null,
Grants float,
Email text not null unique,
GroupId integer,
foreign key(GroupId) references Groups(id)
);


create table  if not exists Achievements
(
Id integer primary key autoincrement,
Studentid integer,
SubjectId integer ,
Assesment integer,
foreign key(Studentid) references Students(id),
foreign key(SubjectId) references Subjects(id)

);


insert into Teachers(LastName,FirstName,BirthDate,DepartmentId) values('Nelson','Sophia','1984-12-08',1);
insert into Teachers(LastName,FirstName,BirthDate,DepartmentId) values('Kirck','Emma','1973-05-12',2);
insert into Teachers(LastName,FirstName,BirthDate,DepartmentId) values('MacAlister','Henry','1975-02-17',1);
insert into Teachers(LastName,FirstName,BirthDate,DepartmentId) values('Cooper','Michael','1978-11-23',1);
insert into Teachers(LastName,FirstName,BirthDate,DepartmentId) values('Wiliams','Daniel','1979-07-30',3);


insert into Subjects(Name) values('C#');
insert into Subjects(Name) values('Discrete Math');
insert into Subjects(Name) values('SQL Server');
insert into Subjects(Name) values('ADO.NET');
insert into Subjects(Name) values('ITE1');
insert into Subjects(Name) values('JavaScript');
insert into Subjects(Name) values('WIN10');

insert into Groups(GroupName,FacultyId) values('29PR21',1);
insert into Groups(GroupName,FacultyId) values('30PR11',2);
insert into Groups(GroupName,FacultyId) values('31PPS11',1);
insert into Groups(GroupName,FacultyId) values('32PR31',2);
insert into Groups(GroupName,FacultyId) values('32PPS11',3);



insert into Teachers_Subjects(TeachersId,SubjectId) values(1,1);
insert into Teachers_Subjects(TeachersId,SubjectId) values(2,2);
insert into Teachers_Subjects(TeachersId,SubjectId) values(3,3);
insert into Teachers_Subjects(TeachersId,SubjectId) values(4,4);
insert into Teachers_Subjects(TeachersId,SubjectId) values(5,5);
insert into Teachers_Subjects(TeachersId,SubjectId) values(1,6);
insert into Teachers_Subjects(TeachersId,SubjectId) values(5,7);


insert into Students(FirstName,LastName,BirthDate,Grants,Email,GroupId) values
('Jack','Jones','1997-11-05',1256.00,'jj@net.eu',1);
insert into Students(FirstName,LastName,BirthDate,Grants,Email,GroupId) values
('Harry','Miller','1998-02-11',1100.00,'hm@net.eu',1);
insert into Students(FirstName,LastName,BirthDate,Grants,Email,GroupId) values
('Grace','Evans','1997-06-24',Null,'eg@net.eu',2);
insert into Students(FirstName,LastName,BirthDate,Grants,Email,GroupId) values
('Lily','Wilson','1998-09-12',Null,'lw@net.eu',2);
insert into Students(FirstName,LastName,BirthDate,Grants,Email,GroupId) values
('Joshua','Johnson','1997-05-23',1100.00,'jo@net.eu',3);
insert into Students(FirstName,LastName,BirthDate,Grants,Email,GroupId) values
('Emily','Taylor','1997-12-27',1100.00,'et@net.eu',4);
insert into Students(FirstName,LastName,BirthDate,Grants,Email,GroupId) values
('Charlie','Thomas','1998-01-31',1256.00,'ct@net.eu',4);
insert into Students(FirstName,LastName,BirthDate,Grants,Email,GroupId) values
('Oliver','Moore','1997-07-05',Null,'om@net.eu',4);
insert into Students(FirstName,LastName,BirthDate,Grants,Email,GroupId) values
('Jessica','Brown','1997-07-17',1100.00,'jb@net.eu',5);


insert into Achievements(Studentid,SubjectId,Assesment) values
(1,4,11);
insert into Achievements(Studentid,SubjectId,Assesment) values
(2,1,10);
insert into Achievements(Studentid,SubjectId,Assesment) values
(1,3,10);
insert into Achievements(Studentid,SubjectId,Assesment) values
(3,1,8);
insert into Achievements(Studentid,SubjectId,Assesment) values
(2,4,9);
insert into Achievements(Studentid,SubjectId,Assesment) values
(3,3,7);
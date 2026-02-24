create table if not exists Groups(id integer primary key autoincrement,
GroupName text Not Null,
FacultyId integer);

create table if not exists  Teachers(
id integer primary key autoincrement,
FirstName text,
LastName text,
BirthDate date,
GroupID integer,
foreign key(GroupID) references Groups(id));


insert into Groups(GroupName,FacultyId) values('31PPS11',1),
('32PR31',2),
('30PR11',1),
('29PR21',1),
('32PPS11',3);

insert Into Teachers(FirstName,LastName,BirthDate,GroupId) values
('Sophia', 'Nelson', '1984-12-08',1),
('Emma', 'Kirk','1973-05-12',2),
('Henry', 'MacAlister','1975-02-17',3 ),
('Michael', 'Cooper','1978-11-23',4),
('Daniel', 'Williams','	1979-07-30',5);

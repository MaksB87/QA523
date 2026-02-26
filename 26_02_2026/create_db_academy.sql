
create table if not exists Groups(
id integer primary key autoincrement not null ,
Name nvarchar(10) not null check(Name!=' ') unique,
Raiting integer not null,
Year integer not null
);
create table if not exists Departments(
id integer primary key autoincrement not null ,
Financing real not null default 0,
Name nvarchar(100) not null check(Name!=' ') unique
);
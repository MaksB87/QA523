create table if not exists Groups(
Id integer primary key,
GroupName text,
FalucltyId integer 
);

insert into Groups values(523,'QA523',1),(524,'QA524',1);

create table if not exists Students(
id integer primary key autoincrement,
firstname text,
lastname text,
nickname text unique,
birthdate date,
email text unique,
GroupID integer,
foreign key(GroupId) references  Groups(id)
);

insert into Students(firstname,lastname,nickname,birthdate,email,GroupId) 
VALUES ('Андрей','Алексутин','potter_yashka','1986-12-28','potter_yashka@gmail.com',523),
('Максим','Астанин','speedy','1989-12-09','speedy@gmail.com',523),
('Ксения','Афонина','afoninak','1998-06-01','afoniak@gmail.com',523), 
('Анна','Гончарова','anna.goncharova','2002-10-18','anna.goncharova@gmail.com',523),
('Иван','Григорьев','vanco','1997-06-02','vanco@gmail.com',523),
('Дмитрий','Двойнишников','dimidrol','1984-10-28','dimidrol@mail.com',523),
('Николай','Исаев','uspik','1998-05-01','uspik@mail.com',523),
('Николай','Киселев','kisel8','1985-03-21','kisel8@gmail.com',523),
('Диана','Королёва','dk','1998-12-19','dk@gmail.com',523),
('Светлана','Краснова','krasn','1985-12-20','krasn@gmail.com',523),
('Никита','Лисицкий','lisitsk','2005-11-15','lisitsk@mail.com',523),
('Валентина','Рогозина','rogozina','1994-10-29','rogozina@gmail.com',523),
('Екатерина','Сальникова','ekaterina.salnikova','1999-11-07','ekaterina.salnikova@gmail.com',523),
('Александра','Серикова','serikova.aleksandra','1987-09-14','serikova.aleksandra@gmail.com',523),
('Никита','Соловьёв','nik2000','2000-09-23','nik2000@mail.com',523),
('Евгений','Стаскевич','zstaskevich','2001-03-20','zstaskevich@bk.com',523),
('Владимир','Татульян','region.gorkluch','2009-12-11','region.gorkluch@gmail.com',523),
('Алёна','Юрманова','aliona','1993-10-11','aliona@mail.com',523),
('Анатолий','Дукалис','anatolidukalis','1962-01-12','anatolidukalis@gmail.com',524),
('Сексот','Цыплаков','larin01','1975-02-13','larin01@gmail.com',524)
;
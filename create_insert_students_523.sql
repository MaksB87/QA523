-- use students523qa.db;

create Table Students(
id integer primary key autoincrement,
firstname text,
lastname text,
nickname text,
birthdate date,
email text unique
);

insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Андрей','Алексутин','potter_yashka','1986-12-28','potter_yashka@gmail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Максим','Астанин','speedy','1989-12-09','speedy@gmail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Ксения','Афонина','afoninak','1998-06-01','afoniak@gmail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Анна','Гончарова','anna.goncharova','2002-10-18','anna.goncharova@gmail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Иван','Григорьев','vanco','1997-06-02','vanco@gmail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Дмитрий','Двойнишников','dimidrol','1984-10-28','dimidrol@mail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Николай','Исаев','uspik','1998-05-01','uspik@mail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Николай','Киселев','kisel8','1985-03-21','kisel8@gmail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Диана','Королёва','dk','1998-12-19','dk@gmail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Светлана','Краснова','krasn','1985-12-20','krasn@gmail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Никита','Лисицкий','lisitsk','2005-11-15','lisitsk@mail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Валентина','Рогозина','rogozina','1994-10-29','rogozina@gmail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Екатерина','Сальникова','ekaterina.salnikova','1999-11-07','ekaterina.salnikova@gmail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Александра','Серикова','serikova.aleksandra','1987-09-14','serikova.aleksandra@gmail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Никита','Соловьёв','nik2000','2000-09-23','nik2000@mail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Евгений','Стаскевич','zstaskevich','2001-03-20','zstaskevich@bk.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Владимир','Татульян','region.gorkluch','2009-12-11','region.gorkluch@gmail.com');
insert into Students(firstname,lastname,nickname,birthdate,email) 
VALUES ('Алёна','Юрманова','aliona','1993-10-11','aliona@mail.com');
--select (firstname||' '||lastname) as [Ф И О], nickname, birthdate,email as Почта from students where
--cast(strftime('%m',birthdate)as int)>=3 and cast(strftime('%m',birthdate)as int)<=7;
--insert into students(firstname,lastname,birthdate,email)
 --values ('peter','pen','1970-02-25','pp@gmail.com');
-- select * from students;
-- select * from students where nickname is not null;
--select * from students where firstname!='Никита';
-- select *from students where length(lastname)<7;
-- select * from students where not nickname='uspik';
-- select id,lastname,firstname, 
-- cast(strftime('%Y.%m%d','now')-strftime('%Y.%m%d',birthdate)as int) 
-- Возраст, email from students order by Возраст;
-- select id,lastname,firstname, 
-- cast(strftime('%Y.%m%d','now')-strftime('%Y.%m%d',birthdate)as int) 
-- Возраст, email from students order by Возраст ASC;
-- select id,lastname,firstname, 
-- cast(strftime('%Y.%m%d','now')-strftime('%Y.%m%d',birthdate)as int) 
-- Возраст, email from students order by Возраст DESC;

-- select*from students order by lastname desc,
-- firstname asc;
-- delete from students where firstname='peter';
-- select*from students;
-- select *from students where firstname='Никита' or firstname='Николай';
-- select*from students where firstname in ('Никита','Николай','Анна');

-- select id,firstname,nickname,
-- cast(strftime('%Y.%m%d','now')-strftime('%Y.%m%d',birthdate)as int) age,email
--  from students where firstname in ('Никита','Николай','Анна') order by age;

--  select id,firstname, lastname,
-- max(cast(strftime('%Y.%m%d','now')-strftime('%Y.%m%d',birthdate)as int)) 
-- as maxage from students;

-- select * from students where birthdate between '2001-03-01' and '2010-01-01';
-- select *from students where lastname not between 'А' and 'Л';
/*% — соответствует любой последовательности сим-
волов от 0 и более;
■ _ — представляет любой одиночный символ;
■ [] — задает последовательность или диапазон воз-
можных символов;
■ [^] — задает последовательность или диапазон сим-
волов, которые должны отсутствовать.*/
-- select *from students where nickname like 'lis%';
-- select *from students where firstname like '%на%';
-- select*from students where firstname like '_н%';
-- select*from students where firstname like '__н%';
-- glob для sqlite *-соответствует любой последовательности сим-
-- волов от 0 и более, [a-zA-Z0-9],[а-яА-Я0-9]
select*from students where lastname GLOB '[А-Л]*';
select *from students where lastname GLOB '[^А-Л]*';
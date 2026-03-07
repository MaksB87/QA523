

--insert into Countries (Name) values('USA')
--insert into Countries (Name) values('Russia')
--insert into Countries (Name) values('Belarus')
--insert into Countries (Name) values('Germany')
--insert into Countries (Name) values('Great Britain')


--insert into Themes(Name) values('Детектив')
--insert into Themes (Name) values('Фэнтези')
--insert into Themes (Name) values('Программирование')
--insert into Themes (Name) values('Администрирование')
--insert into Themes (Name) values('Дизайн')


--insert into Authors(Name,Surname,CountryId) values('Герберт','Шилдт',1)
--insert into Authors(Name,Surname,CountryId) values('Эви','Немет',1)
--insert into Authors(Name,Surname,CountryId) values('Виктор','Олифер',2)
--insert into Authors(Name,Surname,CountryId) values('Дональд','Норман',1)
--insert into Authors(Name,Surname,CountryId) values('Алан','Купер',1)
--insert into Authors(Name,Surname,CountryId) values('Кира','Лихт',4)
--insert into Authors(Name,Surname,CountryId) values('Мара','Вульф',4)
--insert into Authors(Name,Surname,CountryId) values('Неле','Нойхаус',4)
--insert into Authors(Name,Surname,CountryId) values('Джоан','Роулинг',5)
--insert into Authors(Name,Surname,CountryId) values('Борис','Акунин',2)
--insert into Authors(Name,Surname,CountryId) values('Александра','Маринина',2)
--insert into Authors(Name,Surname,CountryId) values('Александр','Михан',3)
--insert into Authors(Name,Surname,CountryId) values('Брайан','Джонсон',1)

--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Java. Полное руководство',1344,'2900','2022-12-01',1,3)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('С++ для начинающих',640,'895','2013-06-01',1,3)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Unix и Linux: руководство системного администратора',1168,'4490','2020-06-30',2,4)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Компьютерные сети. Принципы, технологии, протоколы',1008,'1430','2024-03-01',3,4)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Дизайн привычных вещей',384,'860','2024-06-01',4,5)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Интерфейс. Основы проектирования взаимодействия',720,'1300','2022-05-20',5,5)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Психбольница в руках пациентов. Алан Купер об интерфейсах',384,'950','2023-10-01',5,5)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Пепел и пламя',448,'1490','2022-12-20',6,2)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Золото и тень',416,'1900','2021-07-01',6,2)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Возвращение ангелов',416,'538','2024-01-01',7,2)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Кто посеял ветер',432,'1200','2014-04-20',8,1)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Друзья до смерти',384,'1800','2013-04-20',8,1)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Гарри Поттер и философский камень',432,'805','2022-06-30',9,2)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Черный список',320,'249','2024-06-30',11,1)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Украденный сон',400,'239','2024-06-30',11,1)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Мистика. Рассказы',478,'1370','2024-02-12',12,2)
--insert into Books(Name,Pages,Price,PublishDate,AuthorId,ThemeId) values('Основы Microsoft Visual Studio .NET 2003',464,'550','2003-05-10',13,4)

--insert into Shops(Name,CountryId) values('Букинист',2)
--insert into Shops(Name,CountryId) values('Буквоед',2)
--insert into Shops(Name,CountryId) values('Книжная лавка',2)
--insert into Shops(Name,CountryId) values('Книжный бульвар',2)
--insert into Shops(Name,CountryId) values('Буквы',2)
--insert into Shops(Name,CountryId) values('Книги',2)
--insert into Shops(Name,CountryId) values('Букинист NEW',2)
--insert into Shops(Name,CountryId) values('ItBook',3)
--insert into Shops(Name,CountryId) values('Дом книги',3)

--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('1000',5,'2024-03-01',2,4)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('500',3,'2024-03-01',5,4)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('3500',1,'2024-09-20',1,4)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('1200',3,'2024-09-23',7,4)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('3500',1,'2024-09-23',1,4)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('5000',1,'2024-12-10',3,4)

--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('800',1,'2024-09-23',10,3)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('1000',2,'2024-10-10',13,3)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('1700',1,'2024-11-16',8,3)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('2100',1,'2024-11-16',9,3)

--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('3400',1,'2024-02-11',1,8)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('1500',1,'2024-02-26',6,8)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('1200',1,'2024-04-10',7,8)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('1400',2,'2024-04-25',2,8)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('1100',3,'2024-06-30',5,8)

--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('500',2,'2024-05-10',14,6)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('500',1,'2024-05-15',14,6)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('500',3,'2024-07-27',15,6)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('500',2,'2024-08-15',15,6)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('500',3,'2024-08-28',15,6)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('1500',1,'2024-09-12',11,6)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('1500',1,'2024-11-09',8,7)
--insert into Sales(Price,Quantity,SaleDate,BookId,ShopId) values('2100',1,'2024-11-09',9,7)












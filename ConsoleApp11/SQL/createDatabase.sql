Create database Schools


create table School
(
 SchoolId int primary key identity,
 Number int
 )
 
 create table Teacher
 (
 TeacherId int primary key identity,
 SchoolId int foreign key references School(SchoolId),
 NameOfTeacher nvarchar(20),
 Gender nvarchar(10)
 )
 create table Pupil
 (
 PupilId int primary key identity,
 NameOfPupil nvarchar(20),
 Age int,
 SchoolId int foreign key references School(SchoolId),
 TeacherId int foreign key references Teacher(TeacherId),
 Gender nvarchar(10))
 
 insert into School values (39),(25),(33),(30) 

 insert into Teacher values (1,'Vera Nikolaevna','Женский'),(2,'Olga Aleksandrovna','женский'),
 (1,'Alexander Segeevich','мужской'),(1,'Olga Vladimirovna','женский'),(2,'Anna Segeevna','женский'),
 (2,'Anna Matveevna','женский'),(3,'Nadezhda Sergeevna','женский'),(3,'Galina Vladimirovna','женский'),
 (3,'Sergey Pavlovich','мужской')

 insert into Pupil(NameOfPupil,Age,SchoolId,Gender) values('Vasya Petrov',14,1,'мужской'),
 ('Sasha Petrov',15,1,'мужской'),('Andrey Ivanov',12,1,'мужской'),('Muhammad',13,1,'мужской'),
 ('Vasilisa Petrova',14,1,'женский'),('Nastya Ivanova',10,1,'женский'),('Natasha Rostova',14,1,'женский'),
 ('Liza Gordova',14,1,'женский'),

 ('Maksim Petrov',17,2,'мужской'),
 ('Georgy Antonov',15,2,'мужской'),('Egor Segeev',8,2,'мужской'),('Muhammad Akbari',18,2,'мужской'),
 ('Masha Nilolaenkova',15,2,'женский'),('Lyuba Moskvina',17,2,'женский'),

 ('Misha Nosov',14,3,'мужской'),
 ('Misha Vlasov',14,3,'мужской'),('Andrey Ivanov',12,3,'мужской'),('Muhammad',13,3,'мужской'),
 ('Anya Berdichevskaya',14,3,'женский'),('Nastya Ivanova',10,3,'женский'),('Natasha Rostova',14,3,'женский'),
 ('Dasha Kulikova',15,3,'женский'),('Andrey Nefedov',15,3,'мужской'),('Ahmed',13,3,'мужской'),
 ('Svetlana Petrova',14,3,'женский'),('Margarita Ivanova',8,3,'женский'),('Natasha Potehina',14,3,'женский'),
 ('Liza Gerzmava',15,3,'женский'),

 ('Vasya Petrov',15,4,'мужской'),
 ('Sasha Petrov',15,4,'мужской'),('Andrey Ivanov',15,4,'мужской'),('Muhammad',15,4,'мужской'),
 ('Vasilisa Petrova',15,4,'женский'),('Nastya Ivanova',15,4,'женский'),('Natasha Rostova',15,4,'женский'),
 ('Liza Gordova',15,4,'женский')
 select * from Pupil
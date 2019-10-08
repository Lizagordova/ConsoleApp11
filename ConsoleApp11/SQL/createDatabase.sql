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

 insert into Teacher values (1,'Vera Nikolaevna','�������'),(2,'Olga Aleksandrovna','�������'),
 (1,'Alexander Segeevich','�������'),(1,'Olga Vladimirovna','�������'),(2,'Anna Segeevna','�������'),
 (2,'Anna Matveevna','�������'),(3,'Nadezhda Sergeevna','�������'),(3,'Galina Vladimirovna','�������'),
 (3,'Sergey Pavlovich','�������')

 insert into Pupil(NameOfPupil,Age,SchoolId,Gender) values('Vasya Petrov',14,1,'�������'),
 ('Sasha Petrov',15,1,'�������'),('Andrey Ivanov',12,1,'�������'),('Muhammad',13,1,'�������'),
 ('Vasilisa Petrova',14,1,'�������'),('Nastya Ivanova',10,1,'�������'),('Natasha Rostova',14,1,'�������'),
 ('Liza Gordova',14,1,'�������'),

 ('Maksim Petrov',17,2,'�������'),
 ('Georgy Antonov',15,2,'�������'),('Egor Segeev',8,2,'�������'),('Muhammad Akbari',18,2,'�������'),
 ('Masha Nilolaenkova',15,2,'�������'),('Lyuba Moskvina',17,2,'�������'),

 ('Misha Nosov',14,3,'�������'),
 ('Misha Vlasov',14,3,'�������'),('Andrey Ivanov',12,3,'�������'),('Muhammad',13,3,'�������'),
 ('Anya Berdichevskaya',14,3,'�������'),('Nastya Ivanova',10,3,'�������'),('Natasha Rostova',14,3,'�������'),
 ('Dasha Kulikova',15,3,'�������'),('Andrey Nefedov',15,3,'�������'),('Ahmed',13,3,'�������'),
 ('Svetlana Petrova',14,3,'�������'),('Margarita Ivanova',8,3,'�������'),('Natasha Potehina',14,3,'�������'),
 ('Liza Gerzmava',15,3,'�������'),

 ('Vasya Petrov',15,4,'�������'),
 ('Sasha Petrov',15,4,'�������'),('Andrey Ivanov',15,4,'�������'),('Muhammad',15,4,'�������'),
 ('Vasilisa Petrova',15,4,'�������'),('Nastya Ivanova',15,4,'�������'),('Natasha Rostova',15,4,'�������'),
 ('Liza Gordova',15,4,'�������')
 select * from Pupil
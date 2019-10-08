/*количество преподавателей в каждой из школ*/
select sc.Number,(select count(SchoolId) from Teacher as t where t.SchoolId=sc.SchoolId) from School as sc
select sc.Number,(select count(SchoolId) from Teacher as t where t.SchoolId=sc.SchoolId) from School as sc where sc.SchoolId=1
select * from Pupil
/*школа с наибольшим количеством учеников*/
/*лучше переделай с max*/
select top(1) sc.Number,(select count(SchoolId) from Pupil as pup where pup.SchoolId=sc.SchoolId) as CountOfPupils from School as sc order by  CountOfPupils desc
/*средний возраст учеников каждой из школ*/
select sc.Number,(select avg(pup.Age) from pupil as pup where pup.SchoolId=sc.SchoolId) from School as sc

/*количество преподавателей мужского пока в каждой из школ*/
select sc.Number,(select count(SchoolId) from Teacher as t where t.SchoolId=sc.SchoolId and t.Gender='мужской') from School as sc

/*количество преподавателей женского пола в каждой из школ*/
select sc.Number,(select count(*) from Teacher as t where t.SchoolId=sc.SchoolId and t.Gender='женский') from School as sc

/*данные о школе с наибольшим количеством учеников(ТУТ МОЖНО ПЕРЕДЕЛАТЬ)*/
select top 1  (select count(*) from Pupil as pup where pup.SchoolId=sc.SchoolId) CountOfPupils,* from School as sc order by CountOfPupils desc

/*Средний возраст мальчиков каждой из школ*/
select sc.Number,(select avg(pup.Age) from Pupil as pup where pup.SchoolId=sc.SchoolId and pup.Gender='мужской') as AvgAgeOfBoys from School as sc 
/*Средний возраст девочек каждой из школ*/
select sc.Number,(select avg(pup.Age) from Pupil as pup where pup.SchoolId=sc.SchoolId and pup.Gender='женский') as AvgAgeOfGirls from School as sc
select * from Pupil


exec sp_AveregeAgeOfPupils 1

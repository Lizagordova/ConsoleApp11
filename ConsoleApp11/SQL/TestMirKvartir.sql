
create procedure sp_GetCountOfTeachers(@SchoolId int=NULL)
as
if @SchoolId IS NULL
  select sc.Number,(select count(SchoolId) from Teacher as t where t.SchoolId=sc.SchoolId) from School as sc
else 
select sc.Number,(select count(SchoolId) from Teacher as t where t.SchoolId=sc.SchoolId) from School as sc where sc.SchoolId=@SchoolId


create procedure sp_SchoolWithMaxCountOfPupils
as
select top(1) sc.Number,(select count(SchoolId) from Pupil as pup where pup.SchoolId=sc.SchoolId) as CountOfPupils from School as sc order by  CountOfPupils desc

create procedure sp_AveregeAgeOfPupils(@SchoolId int=NULL)
as
if @SchoolId is null
select sc.Number,(select avg(pup.Age) from pupil as pup where pup.SchoolId=sc.SchoolId) from School as sc
else 
select sc.Number,(select avg(pup.Age) from pupil as pup where pup.SchoolId=sc.SchoolId) from School as sc where sc.SchoolId=@SchoolId

/*���������� �������������� � ������ �� ����*/
select sc.Number,(select count(SchoolId) from Teacher as t where t.SchoolId=sc.SchoolId) from School as sc
select sc.Number,(select count(SchoolId) from Teacher as t where t.SchoolId=sc.SchoolId) from School as sc where sc.SchoolId=1
select * from Pupil
/*����� � ���������� ����������� ��������*/
/*����� ��������� � max*/
select top(1) sc.Number,(select count(SchoolId) from Pupil as pup where pup.SchoolId=sc.SchoolId) as CountOfPupils from School as sc order by  CountOfPupils desc
/*������� ������� �������� ������ �� ����*/
select sc.Number,(select avg(pup.Age) from pupil as pup where pup.SchoolId=sc.SchoolId) from School as sc

/*���������� �������������� �������� ���� � ������ �� ����*/
select sc.Number,(select count(SchoolId) from Teacher as t where t.SchoolId=sc.SchoolId and t.Gender='�������') from School as sc

/*���������� �������������� �������� ���� � ������ �� ����*/
select sc.Number,(select count(*) from Teacher as t where t.SchoolId=sc.SchoolId and t.Gender='�������') from School as sc

/*������ � ����� � ���������� ����������� ��������(��� ����� ����������)*/
select top 1  (select count(*) from Pupil as pup where pup.SchoolId=sc.SchoolId) CountOfPupils,* from School as sc order by CountOfPupils desc

/*������� ������� ��������� ������ �� ����*/
select sc.Number,(select avg(pup.Age) from Pupil as pup where pup.SchoolId=sc.SchoolId and pup.Gender='�������') as AvgAgeOfBoys from School as sc 
/*������� ������� ������� ������ �� ����*/
select sc.Number,(select avg(pup.Age) from Pupil as pup where pup.SchoolId=sc.SchoolId and pup.Gender='�������') as AvgAgeOfGirls from School as sc
select * from Pupil


exec sp_AveregeAgeOfPupils 1

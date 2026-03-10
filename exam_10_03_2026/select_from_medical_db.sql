-- 3) показать информацию о  пациентах, которые ле-
-- жали в больнице с октября по декабрь прошлого 
-- года в определенном отделении;

-- SELECT * from  Doctors;
SELECT* from Patients;
-- select *from MedicalDepartments;

select Firstname||' '||Lastname [Фио Пациента],
SNILS,Birthdate [День Рождения],LivingAddress,Phone from Patients ;

-- select id,lastname||' '||firstname [ФИО],strftime('%m',Admission) [месяц поступления], 
-- strftime('%m',Discharge) [месяц выписки] from Patients where [месяц поступления]='03' and [месяц выписки]='11';
-- select id from Patients where strftime('%m',Admission)='03' and 
-- strftime('%m',Discharge)='11';

select id,Firstname||' '||Lastname [Фио Пациента],
SNILS,Birthdate [День Рождения],LivingAddress,Phone from Patients where strftime('%m',Admission)='03' and 
cast(strftime('%m',Discharge)as integer)<=11 and strftime('%Y',Discharge)='2021' and  strftime('%Y',Admission)='2021';

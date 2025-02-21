--Create Exam
exec [dbo].[sp_CreateExam] 6,'CN888' , 2,'Exam'


--assign student to exam 
insert into [dbo].[Std_Exam]
values 
(
	29912010123456,
	19
)
--Assign questions to Exam
exec sp_addQToExam 19,20
exec sp_addQToExam 19,6
exec sp_addQToExam 19,8
exec sp_addQToExam 19,23
exec sp_addQToExam 19,24
exec sp_addQToExam 19,25

--Insert answers for student in this exam
insert into Answer 
Values 
(
	'false',
	20,
	1,
	29912010123456,
	19
)
,(
	'true',
	6,
	null,
	29912010123456,
	19
)
,(
	'var',
	8,
	null,
	29912010123456,
	19
)

--Calc Final result
exec CalculateFinal 29912010123456,19
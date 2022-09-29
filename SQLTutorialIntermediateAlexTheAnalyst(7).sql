select *
from SQ_TutorialAlexAnalystYT..EmployeeDemographics

select*
from SQ_TutorialAlexAnalystYT.. EmployeeSalary

select First_Name, Last_Name, Gender, Salary,
count (Gender) over (partition by gender) as Total_Gender
from SQ_TutorialAlexAnalystYT..EmployeeDemographics as demo
join SQ_TutorialAlexAnalystYT..EmployeeSalary as sal
on demo.EmployeeID = sal.EmployeeId;
-- partition mirip dengan group by 
-- perbedannya dalam perhitungan partition langsung total dalam satu baris

select First_Name, Last_Name, Gender, Salary,
count (Gender) 
from SQ_TutorialAlexAnalystYT..EmployeeDemographics as demo
join SQ_TutorialAlexAnalystYT..EmployeeSalary as sal
on demo.EmployeeID = sal.EmployeeId
Group by First_Name, Last_Name, Gender, Salary;

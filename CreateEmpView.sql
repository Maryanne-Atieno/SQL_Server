--Full view (works)
Create view EmployeeView as 
select dbo.EmployeeDetails.EmployeeNumber,dbo.EmployeeDetails.Age,dbo.EmployeeDetails.DistanceFromHome,dbo.EmployeeDetails.Gender,dbo.EmployeeDetails.MaritalStatus,dbo.EmployeeDetails.Over18,
dbo.WorkHistory.RecordID,dbo.WorkHistory.NumCompaniesWorked,dbo.WorkHistory.YearsAtCompany,dbo.WorkHistory.YearsInCurrentRole,dbo.WorkHistory.YearsSinceLastPromotion,dbo.WorkHistory.YearsWithCurrManager,dbo.WorkHistory.Attrition,dbo.WorkHistory.TotalWorkingYears,dbo.WorkHistory.PerformanceRating,
dbo.SurveyData.SurveyID,dbo.SurveyData.EnvironmentSatisfaction,dbo.SurveyData.JobInvolvement,dbo.SurveyData.JobSatisfaction,dbo.SurveyData.RelationshipSatisfaction,dbo.SurveyData.WorkLifeBalance,
dbo.Expenses.ExpenseID,dbo.Expenses.BusinessTravel,dbo.Expenses.TrainingTimesLastYear,dbo.Expenses.StockOptionLevel,
dbo.JobDetails.JobID,dbo.JobDetails.StandardHours,dbo.JobDetails.Department,dbo.JobDetails.JobLevel,dbo.JobDetails.JobRole,
dbo.Payment.PaymentID,dbo.Payment.DailyRate,dbo.Payment.HourlyRate,dbo.Payment.MonthlyIncome,dbo.Payment.MonthlyRate,dbo.Payment.OverTime,dbo.Payment.PercentSalaryHike,
dbo.EducationDetails.EducationID,dbo.EducationDetails.Education,dbo.EducationDetails.EducationField from ((dbo.EmployeeDetails
inner join dbo.EducationDetails on dbo.EmployeeDetails.EmployeeNumber = dbo.EducationDetails.EmployeeNumber)
inner join dbo.Expenses on dbo.EmployeeDetails.EmployeeNumber = dbo.Expenses.EmployeeNumber
inner join dbo.JobDetails on dbo.EmployeeDetails.EmployeeNumber = dbo.JobDetails.EmployeeNumber
inner join dbo.Payment on dbo.EmployeeDetails.EmployeeNumber = dbo.Payment.EmployeeNumber
inner join dbo.SurveyData on dbo.EmployeeDetails.EmployeeNumber = dbo.SurveyData.EmployeeNumber
inner join dbo.WorkHistory on dbo.EmployeeDetails.EmployeeNumber = dbo.WorkHistory.EmployeeNumber)



--Shortcut 2 (not yet done)
Create view EmployeeView2 as 
select dbo.EducationDetails.*,dbo.EmployeeDetails.*,dbo.Expenses.*,dbo.JobDetails.*,dbo.Payment.*,dbo.SurveyData.*,dbo.WorkHistory.* from ((dbo.EmployeeDetails
inner join dbo.EducationDetails on dbo.EmployeeDetails.EmployeeNumber = dbo.EducationDetails.EmployeeNumber)
inner join dbo.Expenses on dbo.EmployeeDetails.EmployeeNumber = dbo.Expenses.EmployeeNumber
inner join dbo.JobDetails on dbo.EmployeeDetails.EmployeeNumber = dbo.JobDetails.EmployeeNumber
inner join dbo.Payment on dbo.EmployeeDetails.EmployeeNumber = dbo.Payment.EmployeeNumber
inner join dbo.SurveyData on dbo.EmployeeDetails.EmployeeNumber = dbo.SurveyData.EmployeeNumber
inner join dbo.WorkHistory on dbo.EmployeeDetails.EmployeeNumber = dbo.WorkHistory.EmployeeNumber)
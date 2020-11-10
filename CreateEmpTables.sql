CREATE TABLE dbo.EmployeeDetails (
	EmployeeNumber integer Primary key,
	Age integer NOT NULL,
	DistanceFromHome integer NOT NULL,
	Gender varchar(10) NOT NULL,
	MaritalStatus varchar(20) NOT NULL,
	Over18 bit NOT NULL)

Go
CREATE TABLE dbo.WorkHistory(
	EmployeeNumber integer foreign key references dbo.EmployeeDetails(EmployeeNumber),
    RecordID integer identity Primary key,
	NumCompaniesWorked integer NOT NULL,
	YearsAtCompany integer NOT NULL,
	YearsInCurrentRole integer NOT NULL,
	YearsSinceLastPromotion integer NOT NULL,
	YearsWithCurrManager integer NOT NULL,
	Attrition bit NOT NULL,
	TotalWorkingYears integer NOT NULL,
	PerformanceRating integer NOT NULL
)

Go
CREATE TABLE dbo.SurveyData(
	SurveyID integer identity Primary key,
	EmployeeNumber integer foreign key references dbo.EmployeeDetails(EmployeeNumber),
	EnvironmentSatisfaction integer NOT NULL,
	JobInvolvement integer NOT NULL,
	JobSatisfaction integer NOT NULL,
	RelationshipSatisfaction integer NOT NULL,
	WorkLifeBalance integer NOT NULL)

Go
CREATE TABLE Expenses(
	ExpenseID integer identity Primary key,
	EmployeeNumber integer foreign key references dbo.EmployeeDetails(EmployeeNumber),
	BusinessTravel varchar(50) NOT NULL,
	TrainingTimesLastYear integer NOT NULL,
	StockOptionLevel integer NOT NULL)

Go
CREATE TABLE JobDetails (
	JobID integer identity Primary  key,
	EmployeeNumber integer foreign key references dbo.EmployeeDetails(EmployeeNumber),
	Department varchar(150) NOT NULL,
	StandardHours integer NOT NULL,
	JobLevel integer NOT NULL,
	JobRole varchar(150) NOT NULL)

Go
CREATE TABLE Payment(
	PaymentID integer identity Primary key,
	EmployeeNumber integer foreign key references dbo.EmployeeDetails(EmployeeNumber),
	DailyRate decimal(6,2) NOT NULL,
	HourlyRate decimal(6,2) NOT NULL,
	MonthlyRate decimal(12,2) NOT NULL,
	MonthlyIncome decimal(10,2) NOT NULL,
	OverTime bit NOT NULL,
	PercentSalaryHike decimal(10,4) NOT NULL)

Go
CREATE TABLE EducationDetails(
	EducationID integer identity Primary key,
	EmployeeNumber integer foreign key references dbo.EmployeeDetails(EmployeeNumber),
	Education integer NOT NULL,
	EducationField varchar(100) NOT NULL)
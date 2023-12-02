SELECT * FROM BankChurners

-- # - What is the mean and the median  of customer age (central tendencies)
SELECT avg(Customer_Age) as 'MeanAge', (sum(Customer_Age)/count(Customer_Age)) as 'MedianAge' from BankChurners

-- # - Show the measures of dispersion of atleast 3 numerical variables in the dataset
SELECT STDEV(Total_Trans_Amt) as 'Standard Dev', VAR(Total_Trans_Amt) as 'Variance', (max(Total_Trans_Amt) - min(Total_Trans_Amt)) as 'Range'
FROM BankChurners

-- # - How many Married people are in the dataset 
SELECT COUNT(Marital_status) AS NO_OF_MARRIED_PEOPLE FROM BankChurners
WHERE Marital_status = 'Married'

-- # - What is the average age of each marital status
SELECT Marital_status, AVG(Customer_Age) AS 'Age' FROM  BankChurners
GROUP by Marital_Status
ORDER by Age DESC

-- # - What is the average transcation amount for each age class
SELECT Customer_Age, AVG(Total_Trans_Amt) AS 'Average Transaction amt' FROM BankChurners
GROUP by Customer_Age
ORDER by Customer_Age DESC

-- # - What is the total of credit limit of all graduates in the dataset
SELECT Education_Level, SUM(Credit_Limit) as 'Credit Limit' FROM BankChurners
WHERE Education_Level = 'Graduate'
GROUP by Education_Level

-- # - What Gender makes the most transaction amount.
select Gender,  AVG(Total_Trans_Amt) as 'Total_Trans_Amt' FROM BankChurners
GROUP by  Gender
ORDER by Total_Trans_Amt DESC

-- # - Show the distribution of Gender in the dataset
select * FROM BankChurners
WHERE Gender = 'M'

-- # - Blue card is the high class card. Show the distribution of the Card Category accross all gender
SELECT Gender, COUNT(Card_Category) as Total_card_category FROM BankChurners
WHERE Card_Category = 'Blue'
GROUP by Gender
ORDER by Total_card_category DESC

-- # - What gender is most divorced
SELECT Gender, COUNT(Marital_Status) as 'Divorce_Count' from BankChurners
GROUP BY Gender
ORDER by Divorce_Count

-- # - What gender has the highest level of education
SELECT Gender, COUNT(Education_Level) as 'Education_Level_Number' from BankChurners
GROUP BY Gender
ORDER by Education_Level_Number

-- # - Does education matter on the amount of credit limit one has ?
SELECT  Education_Level, AVG(Credit_Limit) as  'Credit_Limit' From BankChurners
GROUP BY Education_Level
ORDER by Credit_Limit DESC

-- # - What is the average transaction amount for each education level
SELECT Education_Level, AVG(Total_Trans_Amt) as AVG_Transaction_Amt from BankChurners
GROUP by Education_Level

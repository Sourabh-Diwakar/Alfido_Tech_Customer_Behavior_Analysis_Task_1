SELECT * FROM ecommerce_customer


--List the top 10 customers by total spend.

	SELECT TOP 10 customer_name, sum(Total_purchase_Amount) as "Total Spend" 
		FROM ecommerce_customer
		group by customer_name
		order by sum(Total_purchase_Amount) desc

--How many male and female customers are there?

	SELECT count(gender) as "count of Female"
	FROM ecommerce_customer
	where gender = 'female'

	SELECT count(gender) as "count of Male"
	FROM ecommerce_customer
	where gender = 'Male'

--What is the average age of customers by gender?

	SELECT gender , avg(customer_Age) as "AVG Age"
	FROM ecommerce_customer
	group by gender

-- What is the average total spend by preferred payment method?

select payment_method, avg(total_purchase_amount)
from ecommerce_customer
group by payment_method


--What is the total revenue generated?

select sum(Total_purchase_amount) as "Total Revenue"
from ecommerce_customer 

--What is the total number of unique customers?

select count(distinct customer_name) as "count of customers"
from ecommerce_customer 


select * from ecommerce_customer

--What is the average purchase amount per order?

select Avg(total_purchase_amount) as "Avg Purchase par order"
from ecommerce_customer 

--Find all orders where quantity > 3.

select * from ecommerce_customer
where Quantity > 3


--List purchases made by customers aged between 25 and 35.

select * from ecommerce_customer
where Customer_Age between 25 and 35


--Find the most frequently used payment method.

SELECT TOP 1 Payment_Method,count(Payment_Method) as "usageCount" 
     
FROM 
    ecommerce_customer
GROUP BY 
    Payment_Method
ORDER BY 
    UsageCount DESC;

--Count how many customers churned vs. retained.

select churn, count(churn) as "count"
 from   ecommerce_customer
 group by Churn


 select * from ecommerce_customer
 --Show total revenue by product category.

 select product_category, sum(total_purchase_amount) as " total Revenue"
 from   ecommerce_customer
 group by product_category

 --Show total quantity sold by category.


select product_category, sum(Quantity) as " total Qunatity"
 from   ecommerce_customer
 group by product_category

 --Show average purchase amount by gender.

Select Gender, Avg(total_purchase_amount) as "avg purchase"
 from   ecommerce_customer
 group by Gender


 --Find top 5 customers by total purchase amount.

select Top 5  customer_name, sum(Total_Purchase_Amount) as " Total Purchase"
 from   ecommerce_customer
 group by Customer_Name 
 order by sum(Total_Purchase_Amount) Desc

 --Show total revenue by payment method.

select payment_method , sum(Total_Purchase_Amount) as " Total Revenue"
 from   ecommerce_customer
 group by payment_method 


--Get monthly sales trends using Purchase Date.

select DATEPART(MONTH,Purchase_date) as "Month", sum(Total_Purchase_Amount) as "Total Purchase"
 from   ecommerce_customer
 group by DATEPART(MONTH,Purchase_date)
 order by DATEPART(MONTH,Purchase_date) 

 --Show total number of returns by category.

 select product_category, count(Returns) as "count of Returns"
  from   ecommerce_customer
  where returns = 1
 group by product_category
 order by "count of Returns" Desc


 select * from ecommerce_customer
 --Count how many purchases were returned by age group.

  select Customer_Age, count(Returns) as "count of Returns"
  from   ecommerce_customer
  where returns = 1
 group by Customer_Age
 order by Customer_Age


 -- Extract month and year from Purchase Date.

select * ,DATEPART(year,purchase_date) as "purchase Year", DATEPART(MONTH,purchase_date) as "purchase Month"
from   ecommerce_customer


--List the first name of customers (from Customer Name).

SELECT 
    Customer_Name,
    LEFT(Customer_Name, CHARINDEX(' ', Customer_Name + ' ') - 1) AS FirstName
FROM 
    ecommerce_customer;


--Count how many customers have names longer than 12 characters.

select customer_name 
from ecommerce_customer
where len(customer_name) > 12

--Show how many purchases used "Card" in the payment method.

select payment_method, count(Total_purchase_amount) as "count of Purchase"
from ecommerce_customer
where Payment_Method = 'credit Card'
group by Payment_Method

--List all customers who have churned.

select distinct customer_name 
from ecommerce_customer
where Churn = 1
















































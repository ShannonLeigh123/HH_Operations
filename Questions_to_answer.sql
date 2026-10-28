/* SQL Questions */

/*
What is the total amount spent in each category of expenses? */

SELECT category,
       SUM(amount) AS total_spent
FROM expenses
GROUP BY category;
/*
[category]	        [total_spent]
Dental Costs	        475.00
Electric	            355.55
Gas	                    85.22
Grocery	                400.00
Home/Life Goods 	    500.00
Internet	            155.78
Medical Insurance	    225.00
Mortgage	            650.73
Pet Food	            400.00
Pet Medical	            585.00
Pet Products	        200.00
Phone	                150.50
Water	                75.89
*/

/*
What is the total number of hours spent on tasks in each category?  Time spent by responsibility*/
SELECT category,
       SUM(hours_spent) AS total_hours
FROM tasks
GROUP BY category;


/*
What is the total amount spent on expenses per month?  Monthly Trends*/
SELECT SUM(amount) AS 'Total Expenses Per Month'
FROM [dbo].[expenses]; /* 4258.67 */

/* How much do the pets cost a month? */
SELECT Sum(amount) AS 'Pet Costs'
FROM [dbo].[expenses]
WHERE [category] LIKE 'Pet%'; /* $1185.00 */
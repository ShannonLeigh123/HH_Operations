/* SQL Questions */

/*
1. What is the total amount spent in each category of expenses? */

SELECT category,
       SUM(amount) AS total_spent
FROM expenses
GROUP BY category;


/*
2. What is the total number of hours spent on tasks in each category?  Time spent by responsibility*/
SELECT category,
       SUM(hours_spent) AS total_hours
FROM tasks
GROUP BY category;


/*
3. What is the total amount spent on expenses each month?  Monthly Trends*/
SELECT
    strftime('%Y-%m', date) AS month,
    SUM(amount)
FROM expenses
GROUP BY month;
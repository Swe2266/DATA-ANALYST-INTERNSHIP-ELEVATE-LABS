* Sales Trend Analysis Using PostgreSQL

* Overview

This project focuses on analyzing online sales data using PostgreSQL. The goal was to understand monthly sales performance by calculating total revenue and the number of orders placed each month. Through this task, I practiced SQL aggregation functions and learned how to summarize data for business reporting.

Dataset

The analysis was performed on an online (or online_sales) table containing the following columns:

order_id – Unique ID for each order
order_date – Date when the order was placed
revenue – Order value
product_id – Product identifier
What I Learned

During this task, I gained hands-on experience with:

Creating and working with SQL tables in PostgreSQL.
Using EXTRACT() to retrieve the year and month from a date.
Calculating monthly revenue using SUM().
Counting unique orders using COUNT(DISTINCT order_id).
Grouping records with GROUP BY to generate monthly summaries.
Sorting results using ORDER BY.
Filtering data for specific time periods using the WHERE clause.

 * SQL Concepts Used
CREATE TABLE
INSERT INTO
SELECT
EXTRACT()
SUM()
COUNT(DISTINCT)
GROUP BY
ORDER BY
WHERE

* Output

The final query generates a monthly sales report that includes:

Year
Month
Total Revenue
Order Volume

This provides a clear overview of sales performance and can be used to identify trends over different months.

Conclusion

This project helped me understand how SQL can be used to transform raw sales data into meaningful business insights. It also strengthened my understanding of aggregation, grouping, filtering, and sorting techniques, which are essential for data analysis and reporting.

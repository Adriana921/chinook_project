# chinook_project

This project explores business insights using a 'Chinook database', a sample database modeled after a digital media store, including data on customers, invoices, tracks, albums, artists, and genres. 
Through structured queries, this analysis aims to uncover sales patterns, customer behavior, genre popularity, and revenue contributions by location. The project demonstrates how SQL can be used to answer practical questions that help drive informed decisions in a commercial context

5 different questions were required by an important investor, which were answered by demonstrating foundational data analysis skills such as **filtering, joins, aggregations, and subqueries.**

## Project Objectives

The goal of this project is to analyze the Chinook dataset and extract key business insights that could support decision-making in areas such as marketing, product development, and customer retention. 

- Understanding **sales performance** across regions and customer segments.
- Identifying **high-value customers** and **top-performing music genres**.
- Demonstrating strong **SQL querying capabilities**, including joins, aggregations, filtering, and sorting.
- Practicing how to approach data with **analytical questions** and translate them into well-structured SQL logic.

## Project Breakdown

In order to organize the information, 5 different questions were analyzed:

1. **Which countries have the most invoices?**
   - Determine which billing countries generate the highest volume of purchase.
    
2. **Which city has the best customers?**
   - Identify cities with the highest total revenue, highlighting key markets.
     
3. **Who are the Rock music listeners? Provide a list with name, last name, and email in alphabetical order.**
   - Segment customers based on their purchase behavior by music genre.
     
4. **Who are the top 10 Rock artists?**
   - Analyze genre-based artist performance to inform potential promotions.
     
5. **Who is the best customer?**
    - Identify the most profitable customer by total lifetime value.



An analysis of the tables was performed in order to understand the information that was included on each one of them and how they could relate to other tables. 
The information was broken down into 11 tables were the common data was identified to generate an **ERD (Entity Relationship Diagram):**

![image](https://github.com/user-attachments/assets/564d5828-de91-44a7-af45-999ef828d321)

The SQL query uses multi-table joins using 'Inner Join' and 'Left Join' and different aggregate functions such as: SUM, COUNT, MIN, MAX.
To organize the information the clauses GROUP BY, ORDER BY, and LIMIT were utilized.
The use of WHERE clauses and CTEs also were functional in this query.

**SQL Query**

![image](https://github.com/user-attachments/assets/a9b29c6d-0c20-42f5-8ec1-1aec60725ff7)
![image](https://github.com/user-attachments/assets/a7c828ae-9cb2-4d09-92e4-21c7e0adcc9f)

## Dashboard
To simplify the project's results, a Dashboard was generated to visualize the information more easily and make it more interactive in case users are interested in going deeper into the details of the results.

![chinook_dashboard](https://github.com/user-attachments/assets/5fdf1d4e-2bf8-4329-b8a1-86a5b6b7bd91)

A table list was the result to Question 3:

![image](https://github.com/user-attachments/assets/2c8ecae5-6153-4783-b7fd-27527f1fb509)
![image](https://github.com/user-attachments/assets/aaa4f81a-3bc4-47e1-93a7-7fb75ee01194)


## Conclusions

- The United States had the highest number of invoices, confirming its role as a primary market. However, smaller countries like Canada and Brazil also showed strong average revenue per invoice, highlighting untapped value.
- Prague stood out for their total revenue, suggesting strong local customer engagement and purchasing power.
- Rock was the most purchased genre, indicating a high level of customer interest and a potential for deeper marketing investment in that category.
- The best customer was responsible for a significant portion of total sales, confirming a power-law distribution where a small number of clients generate the most revenue.
- Customer behavior shows purchases are often genre-specific and limited to a few transactions, indicating a need for engagement strategies beyond the initial sale.


## Recommendations

- Focus on growing high-revenue countries like Canada and Brazil through targeted campaigns, bundling top genres or artists popular in those regions.
- Identify high consumers and offer them exclusive content, loyalty programs, or early access to new releases to increase retention and recurring revenue.
- Since Rock is the most profitable genre, the store should consider exclusive content deals or curated playlists to deepen user engagement.
- Analyze customer frequency and send personalized recommendations to increase lifetime value through complementary purchases.
- Cities showing high average revenue per invoice, such as Prague and São Paulo, should be evaluated for market expansion or localized offerings.



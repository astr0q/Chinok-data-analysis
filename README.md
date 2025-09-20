# Chinook SQL Exercises

This repository contains SQL queries and exercises using the [Chinook Database](https://github.com/lerocha/chinook-database), a sample database representing a digital media store.  
The goal is to practice common SQL operations, including joins, aggregations, grouping, filtering, and identifying trends or inactive customers.

## Contents

- **Top Customers by Purchases**  
  Queries to find customers who spend the most or purchase most frequently.

- **Track Sales Analysis**  
  Queries to find the most popular tracks, best-selling genres, and media types.

- **Inactive Customers**  
  Queries to detect customers who have never made a purchase.

- **Future Tasks**  
  Additional queries and exercises will be added here, including:
  - Revenue analysis per artist/album
  - Monthly sales trends
  - Genre popularity over time
  - Any other custom tasks

## Example Queries

1. **Top 5 customers by number of invoices**  
   Using `JOIN`, `COUNT`, `GROUP BY`, and `ORDER BY` to find frequent buyers.

2. **Customers who never purchased anything**  
   Using `LEFT JOIN` and `WHERE ... IS NULL` to detect inactive customers.

3. **Most popular track by sales**  
   Aggregating invoice line data with `SUM` and joining `Track`, `Genre`, and `MediaType`.

## How to Use

1. Clone this repository:

   ```bash
   git clone https://github.com/astr0q/chinook-sql-exercises.git

# Chinook SQL Exercises

This repository contains SQL queries and practice tasks using the [Chinook Database](https://github.com/lerocha/chinook-database), a sample database that models a digital media store.

The goal of this project is to strengthen SQL skills by working with realistic business-style queries, including joins, aggregations, grouping, filtering, and analytical reporting.

---

## 📂 Contents

* **Customer Analysis**

  * Top customers by purchases and number of invoices
  * Detecting inactive customers

* **Sales & Revenue Analysis**

  * Most popular tracks and top-selling albums
  * Artist revenue and catalog size
  * Monthly sales trends

* **Catalog Insights**

  * Genre popularity
  * Media type sales distribution
  * Track and album performance

* **Future Tasks**

  * Average invoice value per country
  * Comparing spending habits by region
  * Additional business-style queries and challenges

---

## 📝 Example Queries

1. **Top 5 customers by number of invoices**

   * Uses `JOIN`, `COUNT`, `GROUP BY`, and `ORDER BY` to identify the most frequent buyers.

2. **Customers who never purchased anything**

   * Uses `LEFT JOIN` with `WHERE ... IS NULL` to detect inactive customers.

3. **Most popular track by sales**

   * Aggregates `InvoiceLine` data with `SUM` and joins with `Track`, `Genre`, and `MediaType`.

4. **Monthly revenue trend**

   * Groups invoices by month using `DATE_FORMAT` and calculates total revenue over time.

5. **Top artists by catalog size**

   * Counts tracks per artist to find who has the largest music catalog.

---

## 🚀 How to Use

1. Clone this repository:

   ```bash
   git clone https://github.com/astr0q/chinook-sql-exercises.git
   ```
2. Download and set up the [Chinook Database](https://github.com/lerocha/chinook-database) in your SQL environment.
3. Run the queries in your SQL client (e.g., MySQL Workbench, DBeaver, or sqlite3).
4. Explore, modify, and extend the queries to practice different SQL concepts.


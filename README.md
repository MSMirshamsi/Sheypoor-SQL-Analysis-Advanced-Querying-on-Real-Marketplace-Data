# Sheypoor SQL Analysis: Advanced Querying on Real Marketplace Data  

This project demonstrates advanced SQL skills through solving real-world analytical problems using **Sheypoor's actual marketplace data**. The dataset contains advertisements and category hierarchies similar to those used in real e-commerce platforms.  

The focus of this project is to write **optimized SQL queries** that address complex business-related questions such as user behavior, price trends, and category performance.  

---

## 📊 Project Tasks  

The project addresses the following analytical tasks (each implemented with a separate SQL query):  

1. **Top Parent Category by Ads**  
   - Find the parent category (root) with the highest number of advertisements.  

2. **Most Popular Subcategory by Unique Advertisers (Feb 2016)**  
   - Find the subcategory (non-parent) with the highest number of distinct advertisers in February 2016.  

3. **Single-Category Advertisers**  
   - Count how many advertisers have posted ads in **only one category**.  

4. **Top Advertiser in 30-Day Period**  
   - Find the advertiser (user ID) who posted the most ads in any rolling 30-day period.  

5. **Top Advertiser in Real Estate**  
   - Within the "Estate" categories, find the advertiser with the most ads in any 30-day rolling period.  
   - In case of a tie, return the advertiser with the **highest price ads**.  

6. **Category with Highest Price Increase (Cars)**  
   - Among categories containing "car" in their name, determine which one experienced the largest price increase within one year.  

---

## 🛠️ Skills and Techniques Demonstrated  

- **Complex Joins** (INNER, LEFT) between categories and advertisements.  
- **Recursive and non-recursive CTEs** to work with category hierarchies.  
- **Window Functions**: `ROW_NUMBER()`, `COUNT() OVER`, `MAX() OVER`, `MIN() OVER`.  
- **Date Filtering & Time Intervals** (`DATE_FORMAT`, rolling 30-day windows).  
- **Aggregations & Grouping** (`GROUP BY`, `HAVING`, `DISTINCT`).  
- **Advanced Ordering & Tie-breaking** with multiple criteria.  

---

## 🚀 Why This Project Matters  

This project mimics **real data challenges** faced in marketplaces and e-commerce companies such as **Sheypoor, Divar, Craigslist, or OLX**.  
It shows the ability to:  
- Extract meaningful insights from large, relational datasets.  
- Write **efficient, production-grade SQL queries**.  
- Handle **hierarchical category structures**.  
- Work with **time-based windows** and **business-driven KPIs**.  

---

## 📂 Project Structure  

- `queries.sql` → All SQL queries organized by section (1–6).  
- `README.md` → Project documentation (this file).  

---

## 🧑‍💻 Author  

Prepared by **[Your Name]** as part of a portfolio to showcase advanced SQL querying skills.  

---

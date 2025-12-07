# E-commerce FP&A SQL Analytics Project

This project simulates how FP&A teams at Flipkart analyze revenue and unit economics in e-commerce.

---
## 📊 Business Questions Solved using SQL
- What are the GMV & Net Revenue trends?
- Which product categories generate the most profit?
- What % of revenue comes from repeat customers vs new?
- Which categories have the highest return rates?
- Who are the most valuable customers?

---
## 🛠️ Tech Used
- PostgreSQL + pgAdmin
- SQL

---
## 📂 Project Structure
- data/ → 4 e-commerce table CSVs
- sql/ → 12 analysis SQL scripts
- table_schema.sql → Table creation script


---
## 🧠 Key Insights (Example Findings)
- Electronics drives the highest GMV but margins are low → discount burn
- Repeat customers contribute ~60% of revenue → retention is strong revenue driver
- Return rate ~X%, high in category Y → operational fix needed (QC/logistics)

---
## 🚀 How to Run
1. Create a PostgreSQL database (`ecommerce_fpa`)
2. Run `table_schema.sql` to create tables
3. Import CSVs from `/data`
4. Execute SQL in `/sql` for insights

---

📬 Author: Anant Pandey  
LinkedIn: www.linkedin.com/in/anantpandey12

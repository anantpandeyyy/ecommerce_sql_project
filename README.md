# E-commerce FP&A SQL Analytics Project

This project simulates how FP&A teams at e-commerce platforms analyze revenue and unit economics in e-commerce.

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
- table/ → table creation script
  
---
## 🧠 Key Insights 
- GMV ₹9.58 Lakhs vs Net Revenue ₹8.36 Lakhs → ~12.8% discount leakage reducing margins.
- Home Category leads GMV and contributes the highest gross profit, showing it’s the most profitable category.
- Electronics drives high GMV but low margin (~12%), suggesting price pressure and discounting.
- Fashion has a negative gross margin (-17.5%), meaning products are sold below cost → urgent pricing or sourcing action needed.
- Repeat customers contribute 57% revenue while being 44% of orders → retention = profit driver.
- Return rate = 8% overall — manageable but needs watch, as returns directly erode margins.
- Electronics has highest return rate (9.26%), creating double margin pressure: discounts + returns.

---
## 🚀 How to Run
1. Create a PostgreSQL database (`ecommerce_fpa`)
2. Run `table_schema.sql` to create tables
3. Import CSVs from `/data`
4. Execute SQL in `/sql` for insights

---

📬 Author: Anant Pandey  
LinkedIn: www.linkedin.com/in/anantpandey12

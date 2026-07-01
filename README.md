# 📦 E-Commerce Management System (SQL)

A complete SQL-based E-Commerce Management System built using **MySQL**.  
This project includes a full relational database, tables, sample data, stored procedures, triggers, views, SQL queries, and an ER diagram.

---

#🚀 Features

- Fully normalized database schema  
- Primary & foreign keys for relational integrity  
- Sample data for products, customers, orders, payments, order items  
- Stored Procedures  
- Triggers  
- Views for reporting  
- ER Diagram (Chen Notation – Black & White)

---

# Project Structure

Ecommerce-SQL-Project/
├── database.sql
├── tables.sql
├── sample_data.sql
├── queries.sql
├── pro.sql
├── triggers.sql
├── views.sql
├── ER-Diagram.png
└── README.md


---

## Database Overview

### **Tables**
- **customers** (customer info)  
- **categories** (product categories)  
- **products** (items for sale)  
- **orders** (customer orders)  
- **order_items** (products inside each order)  
- **payments** (payment details)  
- **inventory_logs** (stock changes)

---

## 🔧 Stored Procedures

1. `GetOrderDetails(orderId)`
2. `SearchProducts(keyword)`
3. `CustomerTotalSales(custId)`

---

## 🔥 Triggers

1. `reduce_stock_after_order` – reduces stock after order item insert  
2. `log_stock_change` – logs stock changes  

---

## 👁 Views

- product_inventory_view 
- customer_order_summary  
- sales_report_view

---

## ▶ How to Run

1. Open MySQL Workbench  
2. Run `database.sql`  
3. Run `tables.sql`  
4. Run `sample_data.sql`  
5. Run `procedures.sql`, `triggers.sql`, `views.sql`  
6. Open queries from `queries.sql` to test  

---


---

##  Author

**Nandini Dhondge**
 Computer Engineering Student  
DBMS project



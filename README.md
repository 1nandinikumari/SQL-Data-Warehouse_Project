# 📊 SQL Data Warehousing Project 

## 📌 Introduction
This project demonstrates a **Data Warehousing solution** built on SQL using a layered architecture (**Bronze → Silver → Gold**).  
The data comes from **CRM** and **ERP** sources and is transformed step by step to support **advanced analytics**.

---

## 🎯 Objectives
- Ingest CRM & ERP data into the **Bronze layer**.  
- Clean, validate, and remove duplicates in the **Silver layer**.  
- Build **Golden views** (Customer, Product, Sales) for analytics and historical insights.  

---

## 🗂️ Source Data
- **CRM**: Customer info (CustomerID, FirstName, LastName, etc.), Production & Sales details  
- **ERP**: Customer info (CustomerID, BirthDate, Gender), Location info (CID, Country)  
- **Product Category**: Category, Subcategory, Maintenance  

---

## 🏗️ Data Warehouse Layers
- **Bronze**: Raw data ingestion from CRM & ERP (via stored procedures).  
- **Silver**: Cleaned and deduplicated tables with data quality checks.  
- **Gold**: Analytics-ready **views** for Customer, Product, and Sales, with historical filtering.  

---

## ⚙️ ETL Process
1. **Create Database & Schemas** (`bronze`, `silver`, `gold`)  
2. **Bronze Layer**: Load raw data using stored procedures.  
3. **Silver Layer**: Handle nulls, duplicates, and perform data quality checks.  
4. **Gold Layer**: Create views for advanced analytics (Customer, Product, Sales).  

--- 
## 📊 Results & Analysis

- Clean, deduplicated datasets for Customer, Product, and Sales.
- Golden views enable:
- Customer analytics (demographics, segmentation)
- Product analytics (category performance, maintenance tracking)
- Sales analytics (trends, top customers, regional analysis)
- Historical filtering allows reporting on relevant time periods.
- Data quality checks ensure accuracy and consistency across all layers.

--- 
## 🔮 Future Improvements

- Automate ETL using Airflow, SQL Agent, or ADF.
- Implement incremental loading (CDC) for large datasets.
- Integrate BI tools (Power BI, Tableau) with Golden views.

--- 
## 📜 License
- This project is released under the MIT License.

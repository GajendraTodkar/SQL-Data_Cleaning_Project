<h1 align="center"> 🧹 Data Cleaning Project – Customer Orders </h1>


## 🎯 Project Overview

This project demonstrates data cleaning and preprocessing on a customer orders dataset. The goal was to transform messy, inconsistent raw data into a clean, standardized format suitable for analysis or reporting. This showcases SQL Server data cleaning techniques including string manipulation, data type conversion, standardization, and duplicate removal.

---

## 📝 Raw data

<img width="1071" height="324" alt="Picture1" src="https://github.com/user-attachments/assets/6b7de9a4-6814-474e-9fd9-3e680fdaf1f7" />

---



## 🛠️ Steps & Techniques Used
### 1. Customer Name Standardization
- Converted names to Proper Case (first letter capital, rest lowercase).  
- Replaced 'NULL' values with 'Not Available'.  
- Handled multi-word names correctly using STRING_SPLIT and FOR XML PATH.  

### 2. Email Standardization
- Converted all emails to lowercase.  
- Replaced NULL emails with 'No Email'.  

### 3. Date Standardization
- Converted order dates to dd-MM-yyyy format using FORMAT().

### 4. Product Name Standardization
- Converted product names to Proper Case.  
- Trimmed unnecessary spaces.

### 5. Quantity Cleaning
- Converted word quantities (one, two, three, etc.) to integers.  
- Preserved numeric values.  
 

### 6. Price Cleaning
- Removed currency symbols (₹, $) and commas from price values.  
- Converted prices to DECIMAL(10,2).


### 7. Country Standardization 
- Converted country names to Proper Case.

### 8. Order Status Standardization
- Converted status values to Proper Case (first letter capital, rest lowercase).

### 9. Notes Column Cleaning
- Converted text to Proper Case.
- Replaced missing or placeholder notes (NULL, -) with 'No Comments'.

### 10. Duplicate Removal
- Removed duplicate records based on email and product name, keeping the earliest order_id using ROW_NUMBER().

- --


## ✅ Result

<img width="1043" height="224" alt="cleandata" src="https://github.com/user-attachments/assets/defd4dc4-dc83-478f-9ddb-d822cd90bf5e" />


### The final cleaned dataset ensures:
- Consistent naming conventions.
- Correct data types for numeric and date fields.
- No missing critical values (price, email, etc. replaced with defaults).
- Duplicate-free entries.
- This dataset is now ready for analysis, reporting, or visualization in tools like Power BI, Excel, or Python.

---

## 🧩 Tech Stack 

- STRING_SPLIT + FOR XML PATH('') → Proper Case for multi-word strings
- LOWER(), UPPER(), LEFT(), SUBSTRING() → Text standardization
- TRY_CAST() / CAST() → Numeric conversion
- REPLACE() → Remove unwanted characters
- ISNULL() → Handle missing values
- ROW_NUMBER() OVER (PARTITION BY...) → Remove duplicates
- FORMAT() → Date formatting

---

 ## ☕ Stay Connected

Let's stay in touch! Feel free to connect with me on the following platforms:

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)]()
[![Website](https://img.shields.io/badge/Website-000000?style=for-the-badge&logo=google-chrome&logoColor=white)](gajendra.todkar.github.io)

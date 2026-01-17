# Data_Cleaning_Using_SQL_Server
This project simulates real data engineering challenges and demonstrates how to prepare raw data for reliable analytics.

---

| **order_id** | **customer_name** | **email** | **order_date** | **product_name** | **quantity** | **price** | **country** | **order_status** | **notes** |
|---|---|---|---|---|---|---|---|---|---|
| 1001 | John Smith | john.smith@gmail.com | 02-11-2023 | Apple Watch | 1 | 399.99 | usa | Delivered | - |
| 1002 | john smith | john.smith@gmail.com | 11-02-2023 | apple watch | 1 | $399.99 | USA | delivered | Duplicate name? |
| 1003 | SARAH THOMPSON | sarah.t@gmail.com | 30-10-2023 | Samsung Galaxy S22 | two | 799 | United States | shipped | customer requested refund |
| 1004 | Tom O'Brien |  | 05-11-2023 | Google Pixel | 1 | 599 | UK | Delivered | NULL |
| 1005 | Mary Johnson | mary.j@gmail.com | 06-11-2023 | Samsung Galaxy S22 | 2 | 800 | United Kingdom | returned | Return due to defect |
| 1006 | Ankit Patel | ankit@@patel.com | 07-11-2023 | NULL | 1 | 0 | india | pending | no stock |
| 1007 | John Smith | john.smith@gmail.com | 02-11-2023 | Apple Watch | 1 | 399.99 | usa | delivered | Duplicate? |
| 1008 | Carlos Hernﾃ｡ndez | carlos@hernandez.com | 08-11-2023 | Iphone 14 | 1 | 1,099.00 | spain | DELIVERED | - |
| 1009 | NULL | jessica@abc.com | 09-11-2023 | Macbook Pro | 1 | 1299.99 | canada | returned | Missing name |
| 1010 | Aisha Khan | aisha.khan@outlook | 10-11-2023 | MacBook Pro | 1 | 1299.99 | CANADA | Returned | check eligibility |
| 1011 | Sarah Thompson | sarah.t@gmail.com | 30-10-2023 | Samsung Galaxy S22 | 2 | 799 | US | refunded | updated payment method |
| 1012 | tom o'brien | tom.obrien@gmail.com | 05-11-2023 | Google pixel | 1 | 599 | uk | Delivered | no comment |
| 1013 | Mary Johnson | mary.j@gmail.com | 06-11-2023 | SAMSUNG GALAXY S22 | 2 | 800 | UK | Returned |  |
| 1014 | Ankit Patel | ankit@patel.com | 07-11-2023 | Samsung Galaxy S22 | 1 |  | India | Pending | missing price |
| 1015 | Carlos Hernﾃ｡ndez | carlos@hernandez.com | 08-11-2023 | iPhone 14 | 1 | 1099 | Spain | delivered | duplicate product format |

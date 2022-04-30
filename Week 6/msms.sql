SELECT bills.B_ID, customers.Cust_Name   
FROM customers
INNER JOIN bills
ON customers.Cust_ID = bills.Customers_Cust_ID  
ORDER BY B_id;
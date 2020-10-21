-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName FROM Product JOIN Category ON Product.CategoryId = Category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT "Order".Id, CompanyName FROM "Order" JOIN Shipper ON "Order".ShipVia = Shipper.Id WHERE OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName, Quantity FROM OrderDetail JOIN Product ON Product.Id = OrderDetail.ProductId WHERE OrderDetail.OrderId = '10251' 
ORDER BY ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT "Order".Id AS "OrderID", CompanyName AS "Customer's Company Name", LastName AS "Employee's Last Name" FROM "Order"
JOIN Customer ON "Order".CustomerId = Customer.Id JOIN Employee ON "Order".EmployeeId = Employee.id;

-- (STRETCH) Displays CategoryName and a new column called Count that shows how many products are in each category. Shows 8 records.
SELECT CategoryName, Count(ProductName) AS "Count" FROM Product JOIN Category ON Product.CategoryID = Category.ID 
GROUP BY CategoryName;

-- (STRETCH) Display OrderID and a column called ItemCount that shows the total number of products placed on the order. Shows 196 records.
SELECT OrderID, SUM(Quantity) AS "ItemCount" FROM OrderDetail GROUP BY OrderID;
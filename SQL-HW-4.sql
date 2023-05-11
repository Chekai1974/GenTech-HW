-- В рамках БД "песочница" напишите след/запросы:

-- 1. Вывести количественное распределение товаров по поставщикам 
-- (название компании, ко-во товаров)

SELECT 
	Suppliers.SupplierName, 
	COUNT(*) AS total_products
	FROM Products
JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
GROUP BY Suppliers.SupplierName
ORDER BY total_products DESC


-- 2. Вывести категорию, где больше всего товаров 
-- (название категории, ко-во товаров)

SELECT 
	CategoryName,
	COUNT(*) as total_products
FROM Products
JOIN Categories ON Products.CategoryID=Categories.CategoryID
GROUP BY CategoryName
ORDER BY total_products DESC
LIMIT 1


-- 3. Вывести сумму каждого заказа (номер_заказа, сумма)

SELECT 
	OrderID, 
	SUM(Price) AS total_price 
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID=Products.ProductID
GROUP BY OrderID
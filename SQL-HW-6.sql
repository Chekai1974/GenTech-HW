-- Вывести ко-во заказов, которое компания Speedy Express доставила в Brazil.
SELECT COUNT(DISTINCT OrderDetails.OrderID)
FROM OrderDetails
JOIN Orders on OrderDetails.OrderID = Orders.OrderID
JOIN Shippers on Orders.ShipperID = Shippers.ShipperID
JOIN Customers on Orders.CustomerID = Customers.CustomerID
WHERE ShipperName="Speedy Express" AND Customers.Country = "Brazil"

-- На какую сумму было отправлено товаров клиентам в USA
SELECT SUM(OrderDetails.Quantity*Products.Price)
FROM OrderDetails
JOIN Orders on OrderDetails.OrderID = Orders.OrderID
JOIN Products on OrderDetails.ProductID = Products.ProductID
JOIN Customers on Orders.CustomerID = Customers.CustomerID
WHERE Customers.Country = "USA"

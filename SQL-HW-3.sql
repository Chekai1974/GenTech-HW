-- В рамках БД "песочница" напишите следующие запросы:
-- (2) Вывести заказы клиентов не из USA
SELECT * 
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Customers.Country != "USA"

-- (3) К товарам от 50 до 90 EUR применить постоянную скидку в 10%.
UPDATE Products 
SET Price = Price * 1.10
WHERE Price BETWEEN 50 and 90
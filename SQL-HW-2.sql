-- (1) У клиентов из China и USA очистить контактное_имя.
update Customers
set ContactName = null
where Country In ("USA","China")


-- (2) У товаров без категории с ценой от 20 EUR изменить цену на 10
update Products
set SupplierID = null
where Price Between 25 and 45

update Products
set Price=10
where Price>=20 AND CategoryID IS Null
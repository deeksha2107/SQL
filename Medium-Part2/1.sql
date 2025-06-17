--Show the ProductName, CompanyName, CategoryName from the products, suppliers, and categories table

SELECT p.product_name, s.company_name, c.category_name
from products p
JOIN suppliers s ON s.supplier_id = p.supplier_id
JOIN categories c ON c.category_id = p.category_id

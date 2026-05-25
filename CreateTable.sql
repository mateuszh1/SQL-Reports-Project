ALTER TABLE products
ADD CONSTRAINT FK_products_categories
FOREIGN KEY (category_id)
REFERENCES categories(category_id);
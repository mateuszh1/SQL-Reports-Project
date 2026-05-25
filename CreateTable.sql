ALTER TABLE order_items
ADD CONSTRAINT FK_order_items_products
FOREIGN KEY (product_id)
REFERENCES products(product_id);
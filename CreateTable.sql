CREATE TABLE orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    status NVARCHAR(20) NOT NULL
);
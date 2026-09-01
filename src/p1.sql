-- Problem 1: Table creation (DDL) + dummy data. Primary keys included as standard practice; 

CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    position TEXT,
    department TEXT,
    salary NUMERIC
);

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    city TEXT
);

CREATE TABLE inventories (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    quantity INTEGER,
    price NUMERIC
);

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    order_date DATE,
    customer_id INTEGER,
    total_amount NUMERIC
);

CREATE TABLE sales (
    order_id INTEGER,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    sale_date DATE
);

-- Dummy data
INSERT INTO employees (id, name, position, department, salary) VALUES
    (1, 'Alice Tan', 'Manager', 'Sales', 65000),
    (2, 'Ben Lee', 'Analyst', 'Sales', 48000),
    (3, 'Cathy Ong', 'Engineer', 'IT', 72000),
    (4, 'David Wong', 'Engineer', 'IT', 55000),
    (5, 'Emma Lim', 'Clerk', 'HR', 38000);

INSERT INTO customers (customer_id, customer_name, city) VALUES
    (1, 'John Smith', 'New York'),
    (2, 'Maria Garcia', 'Los Angeles'),
    (3, 'Wei Chen', 'New York'),
    (4, 'Aisha Khan', 'Chicago');

INSERT INTO inventories (product_id, product_name, quantity, price) VALUES
    (1, 'Widget A', 100, 9.99),
    (2, 'Widget B', 50, 19.99),
    (3, 'Widget C', 200, 4.99);

INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
    (1, '2026-01-05', 1, 150.00),
    (2, '2026-01-10', 2, 89.50),
    (3, '2026-02-01', 3, 220.00),
    (4, '2026-02-15', 1, 60.00);

INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
    (1, 1, 1, 10, '2026-01-05'),
    (2, 2, 2, 4, '2026-01-10'),
    (3, 3, 3, 20, '2026-02-01'),
    (4, 1, 1, 5, '2026-02-15');

-- foreign key constraints 
ALTER TABLE orders ADD CONSTRAINT fk_orders_customer
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

ALTER TABLE sales ADD CONSTRAINT fk_sales_order
    FOREIGN KEY (order_id) REFERENCES orders(order_id);
ALTER TABLE sales ADD CONSTRAINT fk_sales_customer
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id);
ALTER TABLE sales ADD CONSTRAINT fk_sales_product
    FOREIGN KEY (product_id) REFERENCES inventories(product_id);

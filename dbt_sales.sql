CREATE OR REPLACE DATABASE RAW_DB;
CREATE OR REPLACE SCHEMA RAW_DB.SALES;

CREATE OR REPLACE TABLE RAW_DB.SALES.customers (
    customer_id INT,
    first_name STRING,
    last_name STRING,
    email STRING,
    created_at DATE
);

INSERT INTO RAW_DB.SALES.customers VALUES
(1, 'Riya', 'Sharma', 'riya@gmail.com', '2023-01-01'),
(2, 'Aman', 'Verma', 'aman@gmail.com', '2023-02-10'),
(3, 'Neha', 'Singh', 'neha@gmail.com', '2023-03-15');


CREATE OR REPLACE TABLE RAW_DB.SALES.orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    order_amount NUMBER(10,2)
);

INSERT INTO RAW_DB.SALES.orders VALUES
(101, 1, '2023-05-01', 250.00),
(102, 1, '2023-06-10', 400.00),
(103, 2, '2023-07-15', 150.00);


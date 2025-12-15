create database kpmg;

use database kpmg;

create schema raw_data;

CREATE OR REPLACE TABLE raw_data.dept (
    dept_id     INT            PRIMARY KEY,
    dept_name   STRING         NOT NULL,
    dept_head   STRING,
    created_at  TIMESTAMP_NTZ  DEFAULT CURRENT_TIMESTAMP,
    updated_at  TIMESTAMP_NTZ
);

INSERT INTO raw_data.dept VALUES
(10, 'IT', 'Riya Sharma', CURRENT_TIMESTAMP, NULL),
(20, 'HR', 'Aman Verma', CURRENT_TIMESTAMP, NULL),
(30, 'Finance', 'Neha Singh', CURRENT_TIMESTAMP, NULL),
(40, 'Sales', 'Pooja Patel', CURRENT_TIMESTAMP, NULL);



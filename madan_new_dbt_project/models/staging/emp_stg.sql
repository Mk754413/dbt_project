{{config(materialized='view')}}



SELECT
    emp_id,
    upper(emp_name) as employee_name,
    upper(dept_name) as department_name ,
    lower(email) as email_id,
    phone_number,
    job_title,
    salary as rounded_salary,
    hire_date,
    manager_id,
    employment_status,
    created_at,
    updated_at
FROM {{ ref('emp') }}

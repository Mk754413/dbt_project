{{ config(materialized='table') }}

SELECT
    e.emp_id,
    e.employee_name,
    d.dept_id,
    d.dept_name,
    d.dept_head,
    e.job_title,
    e.rounded_salary,
    {{salary_per_month('e.rounded_salary')}} as monthly_salary,
    e.hire_date,
    e.manager_id,
    e.employment_status,
    e.created_at,
    e.updated_at
FROM {{ ref('emp_stg') }} e
LEFT JOIN {{ ref('dept_stg') }} d
    ON e.department_name = d.dept_name

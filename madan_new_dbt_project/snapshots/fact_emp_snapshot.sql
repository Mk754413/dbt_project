{% snapshot fact_emp_snapshot %}

{{
    config(
        target_schema = 'SNAPSHOTS',
        unique_key = 'emp_id',
        strategy = 'check',
        check_cols = [
            'dept_id',
            'job_title',
            'rounded_salary',
            'employment_status'
        ]
    )
}}

SELECT
    emp_id,
    employee_name,
    dept_id,
    dept_name,
    job_title,
    rounded_salary,
    MONTHLY_SALARY,
    employment_status,
    hire_date
FROM {{ ref('fact_emp') }}

{% endsnapshot %}

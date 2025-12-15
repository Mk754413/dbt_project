{{config(materialized='table')}}

select * from {{ref('fact_emp_snapshot')}} where dbt_valid_to is not null  
and dbt_updated_at>=current_timestamp()
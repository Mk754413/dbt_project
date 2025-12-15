{{ config(materialized='view') }}

select dept_id,dept_name,dept_head from {{source('sales','dept')}}
where dept_name in (select distinct dept_name from {{ref('emp')}})


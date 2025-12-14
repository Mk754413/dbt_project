{% macro calculate_total_amount(column_name) %}
    sum({{column_name}})
{% endmacro %}
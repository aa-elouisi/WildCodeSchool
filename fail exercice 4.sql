SELECT * FROM customer
SELECT customer_id, MAX(inventory_id) FROM rental
# Error Code: 1140. In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'dataengineer.rental.customer_id'; this is incompatible with sql_mode=only_full_group_by
# Your server probably has ONLY_FULL_GROUP_BY turned on. You can either turn it off or add each of your selected fields to the group by.
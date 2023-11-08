# Import necessary libraries
from dbt_utils import dbt
from dbt_utils.dbt import seed, run_sql, test

# Define your SQL query
sql_query = """
-- Calculate ride aggregations for each customer
WITH customer_ride_data AS (
    SELECT
        fare,  -- Replace 'customer_id' with the actual column representing customer identification.
        COUNT(*) AS rides_taken,
        SUM(distance) AS total_distance,
        SUM(fare) AS total_fare_paid,
        AVG(tip) AS avg_tip_given
    FROM
        data_meth.dbt_osobakin.raw_taxi_trips  -- Replace with your actual dataset and table names.
    GROUP BY fare
)

SELECT * FROM customer_ride_data;
"""

# Run the SQL query
result = run_sql(sql_query)

# Print the result (optional)
print(result)

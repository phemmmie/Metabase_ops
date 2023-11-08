-- Calculate ride aggregations for each customer
WITH customer_ride_data AS (
    SELECT
        total,  -- You need to replace 'customer_id' with the actual column representing customer identification.
        COUNT(*) AS rides_taken,
        SUM(distance) AS total_distance,
        SUM(fare) AS total_fare_paid,
        AVG(tip) AS avg_tip_given
    FROM
        data_meth.dbt_osobakin.raw_taxi_trips  -- Replace with your actual dataset and table names.
    GROUP BY customer_id
)

SELECT * FROM customer_ride_data;

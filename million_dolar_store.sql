/*Million Dollar Store

Write a query that returns all of the stores whose average yearly revenue is greater than one million dollars.

Output the store ID and average revenue. Round the average to 2 decimal places.

Order by store ID.
*/

CREATE TABLE stores (
store_id int,
year int,
revenue float
);

INSERT INTO stores
VALUES
(1, 2020, 1000000),
(2, 2020, 1500000),
(3, 2020, 800000),
(4, 2020, 180000),
(1, 2021, 2000000),
(2, 2021, 1800000),
(3, 2021, 1000000),
(4, 2021, 900000),
(1, 2022, 700000),
(2, 2022, 2000000),
(3, 2022, 600000),
(4, 2022, 1300000)
;

SELECT * FROM (
  SELECT store_id, ROUND(AVG(revenue),2) AS avg_yearly_revenue 
  FROM stores
  GROUP BY store_id 
  ) AS average_by_store
  WHERE avg_yearly_revenue > 1000000
  ORDER BY store_id;
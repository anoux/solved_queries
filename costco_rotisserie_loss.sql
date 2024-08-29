/*Costco Rotisserie Loss

Costco is known for their rotisserie chickens they sell, 
not just because they are delicious, 
but because they are a loss leader in this area.

This means they actually lose money in selling the chickens, 
but they are okay with this because they make up for that in other areas.

Using the sales table, calculate how much money they have lost on their 
rotisserie chickens this year. Round to the nearest whole number.
*/

CREATE TABLE sales (
month_of_year text,
lost_revenue_millions float
);

INSERT INTO sales
VALUES
('January', 2.5),
('February', 3.75),
('March', 4.21),
('April', 1.98),
('May', 5.63),
('June', 3.17),
('July', 7.29),
('August', 1.62),
('September', 3.94),
('October', 5.06),
('November', 2.19),
('December', 6.32)
;

SELECT ROUND(SUM(lost_revenue_millions), 0) 
AS yearly_lost_revenue FROM sales;


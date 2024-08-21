/*Sandwich Generation

Yan is a sandwich enthusiast and is determined to try every combination of sandwich possible. He wants to start with every combination of bread and meats and then move on from there, but he wants to do it in a systematic way.

Below we have 2 tables, bread and meats

Output every possible combination of bread and meats to help Yan in his endeavors.

Order by the bread and then meat alphabetically. This is what Yan prefers.

*/

CREATE TABLE bread (
bread_id int,
bread_name text
);

INSERT INTO bread
VALUES
(1, 'Whole Wheat'),
(2, 'White'),
(3, 'Sourdough'),
(4, 'Brioche')
;

CREATE TABLE meat (
meat_id int,
meat_name text
);

INSERT INTO meat
VALUES
(1, 'Turkey'),
(2, 'Ham'),
(3, 'Roast Beef'),
(4, 'Pastrami'),
(5, 'Salami'),
(6, 'Chicken'),
(7, 'Bacon')

;

SELECT bread_name, meat_name FROM bread
CROSS JOIN meat ORDER BY CAST(bread_name AS NVARCHAR(100)), CAST(meat_name AS NVARCHAR(100));
/*On The Way Out

Herschel's Manufacturing Plant has hit some hard times with the economy and unfortunately they need to let some people go.

They figure the younger employees need their jobs more as they are growing families so they decide to let go of their 3 oldest employees. They have more experience and will be able to land on their feet easier (and they had to pay them more).

Write a query to identify the ids of the three oldest employees.

Order output from oldest to youngest.


*/

CREATE TABLE employees_table (
employee_id int,
birth_date date
);

INSERT INTO employees_table
VALUES
(1, '1990-01-15'),
(2, '1995-05-22'),
(3, '2000-08-17'),
(4, '1985-12-29'),
(5, '1992-04-05'),
(6, '1998-06-30'),
(7, '1988-09-02'),
(8, '1996-11-12'),
(9, '1990-02-19'),
(10, '1993-07-10'),
(11, '1988-03-26'),
(12, '1995-10-08'),
(13, '2000-01-01'),
(14, '1997-05-29'),
(15, '1991-12-31')
;

SELECT TOP 3 employee_id FROM employees_table ORDER BY birth_date ASC;

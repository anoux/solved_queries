/*Car Failure

Write a query to determine how many direct reports each Manager has.

Note: Managers will have "Manager" in their title.

Report the Manager ID, Manager Title, and the number of direct reports in your output.
*/

/* CREATE TABLE IF NOT EXIST direct_reports (
employee_id int,
position text,
managers_id int
);

INSERT INTO direct_reports
VALUES
(1001, 'Analytics Manager', 1013),
(1002, 'Data Engineer', 1007),
(1003, 'Data Engineer', 1001),
(1004, 'Database Developer', 1017),
(1005, 'Data Analyst', 1001),
(1006, 'Data Engineer', 1017),
(1007, 'Data Engineer Manager', 1013),
(1008, 'Database Developer', 1001),
(1009, 'Data Engineer', 1007),
(1010, 'Data Scientist', 1017),
(1011, 'Data Analyst', 1001),
(1012, 'Data Engineer', 1007),
(1013, 'CTO', NULL),
(1014, 'Data Scientist', 1017),
(1015, 'Data Analyst', 1001),
(1016, 'Data Scientist', 1017),
(1017, 'Data Science Manager', 1013),
(1018, 'Database Developer', 1007),
(1019, 'Data Analyst', 1001)
;
*/
 
SELECT d1.managers_id, d1.position, COUNT(d1.managers_id)
FROM direct_reports AS d1
INNER JOIN direct_reports AS d2
ON d1.managers_id = d2.employee_id
WHERE d1.managers_id = 1013
GROUP BY d1.managers_id, d1.position

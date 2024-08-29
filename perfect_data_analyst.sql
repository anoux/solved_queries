/*Perfect Data Analyst

Return all the candidate IDs that have problem solving skills, 
SQL experience, knows Python or R, and has domain knowledge.

Order output on IDs from smallest to largest.

*/
CREATE TABLE candidates (
candidate_id int,
sql_experience text,
excel text,
python text,
r_programming text,
problem_solving text,
three_years_experience text,
seven_years_experience text,
domain_knowledge text
);

INSERT INTO candidates
VALUES
(1001, 'X', 'X', 'X', NULL, 'X', 'X', 'X', 'X'),
(1002, 'X', 'X', NULL, 'X', 'X', NULL, NULL, NULL),
(1003, 'X', 'X', 'X', NULL, 'X', NULL, NULL, 'X'),
(1004, 'X', 'X', NULL, NULL, NULL, NULL, NULL, NULL),
(1005, 'X', 'X', NULL, 'X', 'X', 'X', NULL, 'X'),
(1006, NULL, 'X', NULL,	NULL, NULL, NULL, NULL, NULL),
(1007, 'X', 'X','X', NULL, NULL, NULL, NULL, NULL),
(1008, NULL, 'X', NULL, NULL, 'X', NULL, NULL, 'X'),
(1009, 'X',	NULL, NULL,	'X', NULL, NULL, NULL, NULL),
(1010, NULL, 'X', NULL,	NULL, NULL, NULL, NULL, 'X'),
(1011, NULL, 'X', 'X', NULL, 'X', NULL, NULL, NULL),
(1012, 'X', NULL, NULL,	NULL, NULL, NULL, NULL, NULL),
(1013, 'X', 'X', NULL, NULL, NULL, NULL, NULL, 'X'),
(1014, 'X', 'X', NULL, NULL, 'X', NULL, NULL, NULL),
(1015, 'X', 'X', 'X', NULL, 'X', 'X', 'X', 'X'),
(1016, NULL, 'X', NULL,	NULL, NULL, NULL, NULL, 'X'),
(1017, 'X', 'X', NULL, NULL, 'X',	NULL, NULL, NULL),
(1018, NULL, 'X', NULL, 'X', 'X', NULL, NULL, NULL),
(1019, 'X', 'X', 'X', NULL,	'X', 'X', NULL, 'X')
;

SELECT candidate_id FROM candidates 
  WHERE problem_solving IS NOT NULL 
  AND sql_experience IS NOT NULL
  AND (python IS NOT NULL OR r_programming IS NOT NULL)
  AND domain_knowledge IS NOT NULL
  ORDER BY candidate_id
  ;
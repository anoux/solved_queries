/*Car Failure

Cars need to be inspected every year in order to pass inspection and be street legal.
If a car has any critical issues it will fail inspection or if it has more than 3 minor issues it will also fail.

Write a query to identify all of the cars that passed inspection.

Output should include the owner name and vehicle name. Order by the owner name alphabetically.
*/

CREATE TABLE inspections (
owner_name	text,
vehicle	text,
minor_issues int,
critical_issues	int
);

INSERT INTO inspections
VALUES
('Jim', '2012 Ford Fusion', 3, 0),
('Mikaela', '2021 Dodge Stratus', 2, 0),
('Karen', '2008 Ford Escape', 5, 0),
('Michael', '2021 Kia Telluride', 2, 1),
('Sally', '2023 Tesla Model S', 0, 0),
('Joseph', '2015 Toyota Highlander', 2, 0),
('David', '1998 Ford F-150', 2, 0),
('Lauren', '2004 Honda Pilot', 4, 0),
('Chuck', '2016 Buick Enclave', 0, 1),
('Caleb', '2007 Toyota Forerunner', 4, 0),
('Hannah', '2018 Honda Accord', 2, 0)
;

SELECT owner_name, vehicle 
  FROM inspections 
  WHERE critical_issues = 0 AND minor_issues < 4 
  ORDER BY CAST(owner_name AS nvarchar(100));

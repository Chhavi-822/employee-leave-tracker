-- 1. Pending Leave Report (CBO Favorite)
SELECT e.name, e.dept, l.start_date, l.reason 
FROM Employees e 
JOIN Leaves l ON e.emp_id = l.emp_id 
WHERE l.status = 'Pending';

-- 2. Department Leave Summary
SELECT e.dept, COUNT(l.leave_id) as total_leaves
FROM Employees e 
JOIN Leaves l ON e.emp_id = l.emp_id 
GROUP BY e.dept;

-- 3. Employee Leave History
SELECT e.name, COUNT(l.leave_id) as total_leaves
FROM Employees e 
LEFT JOIN Leaves l ON e.emp_id = l.emp_id 
GROUP BY e.emp_id;

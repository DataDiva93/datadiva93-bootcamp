-- 💼 PRO QUERIES: INDUSTRY-LEVEL SQL FOR DATA PROFESSIONALS --

-- This file contains advanced SQL use cases for different 
roles:
-- 👩🏽‍💼 Analysts → Answer business questions + create reports
-- 🧑🏽‍💻 Engineers → Ensure clean, performant data systems
-- 🧠 Data Scientists → Explore data patterns + prep for 
modeling

-- -------------------------------
-- SECTION 1: ANALYST QUERIES
-- -------------------------------

-- 1. 📊 Employees per department  
-- Used in reporting, KPIs, and org analysis

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- 2. 💸 Highest-paid employee  
-- Executive dashboards often surface top earners

SELECT name, department, salary
FROM employees
ORDER BY salary DESC
LIMIT 1;

-- 3. 🗓️ Employees hired before 2018  
-- Helpful in benefits audits or tenure breakdowns

SELECT name, hire_date
FROM employees
WHERE hire_date < '2018-01-01';

-- 4. 📉 Salaries below company average  
-- Useful for pay equity reviews

SELECT name, salary
FROM employees
WHERE salary < (
  SELECT AVG(salary) FROM employees
);

-- 5. 🧮 Salary stats by department  
-- Builds insight into team compensation ranges

SELECT department,
       COUNT(*) AS headcount,
       MIN(salary) AS min_salary,
       MAX(salary) AS max_salary,
       ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department;

-- -------------------------------
-- SECTION 2: ENGINEER QUERIES
-- -------------------------------
-- Engineers focus on **data quality, performance, and 
structure**

-- 6. 🧹 NULL check (if applicable)  
-- Data engineers use this to detect incomplete records

SELECT * FROM employees
WHERE name IS NULL OR department IS NULL OR salary IS NULL;

-- 7. 🧠 Schema verification  
-- Quick sanity check: does the table have expected columns?

PRAGMA table_info(employees);

-- 8. 🔄 Joining with another table (example shown for 
structure)  
-- Engineers write JOINs to link normalized datasets

-- SELECT e.name, d.manager
-- FROM employees e
-- JOIN departments d ON e.department = d.name;

-- (The departments table isn't present in this dataset — just a 
demo)

-- -------------------------------
-- SECTION 3: DATA SCIENTIST QUERIES
-- -------------------------------
-- Data scientists use SQL to **prep, filter, and summarize** 
before modeling

-- 9. 🧹 Remove outliers (salary above 2x average)  
-- Preprocessing step for modeling

SELECT * FROM employees
WHERE salary < (
  SELECT AVG(salary) * 2 FROM employees
);

-- 10. 🧪 Feature idea: Salary buckets  
-- Creates a new field that could be useful in models

SELECT name, salary,
  CASE
    WHEN salary >= 90000 THEN 'High'
    WHEN salary >= 70000 THEN 'Mid'
    ELSE 'Low'
  END AS salary_level
FROM employees;

-- 🏁 Done!
-- This file grows with you as your skills grow.
-- Share it, run it, and remix it for your role 💜



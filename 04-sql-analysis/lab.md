# Lab: SQL for Data Analysis

## Goal:
Learn how to write basic SQL queries by working with a sample 
dataset of employee records.

---

## Step 1: Set Up

We’ll use SQLite for this lab. You can run these commands in DB 
Browser for SQLite or any SQL IDE.

You’ll load a file called `sample_data.sql` that creates and 
populates a table.

---

## Step 2: Preview the Table

The table is named `employees`. Preview the first few rows:

SELECT * FROM employees LIMIT 5;

---

## Step 3: Filter Data

Find employees in the Marketing department:

SELECT * FROM employees
WHERE department = 'Marketing';

---

## Step 4: Sort Data

Get a list of employees ordered by salary (highest first):

SELECT name, salary FROM employees
ORDER BY salary DESC;

---

## Step 5: Aggregate Data

Find the average salary per department:

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

---

## Step 6: Stretch Goals

- Count the number of employees per department  
- Find the highest-paid employee  
- Find employees hired before 2018

---

## ✅ Done!

You just wrote real SQL queries to explore data — amazing work 
💜



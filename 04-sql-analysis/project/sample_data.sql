-- Create table
CREATE TABLE employees (
  id INTEGER PRIMARY KEY,
  name TEXT,
  department TEXT,
  salary INTEGER,
  hire_date TEXT
);

-- Insert sample data
INSERT INTO employees (name, department, salary, hire_date) 
VALUES
('Alice Johnson', 'Marketing', 65000, '2019-04-23'),
('Brandon Lee', 'Engineering', 85000, '2017-08-14'),
('Chloe Kim', 'Sales', 72000, '2020-01-10'),
('Daniel Wu', 'Marketing', 61000, '2021-03-03'),
('Ella Stone', 'Engineering', 91000, '2016-11-19'),
('Felix Tran', 'HR', 58000, '2018-07-02'),
('Gina Park', 'Sales', 75000, '2019-06-15'),
('Henry Zhao', 'HR', 54000, '2022-05-01'),
('Isabella Chen', 'Engineering', 97000, '2015-02-28'),
('James Brooks', 'Sales', 70000, '2021-10-20');



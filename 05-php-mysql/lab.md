# Lab: Build a Dynamic Blog with PHP + MySQL

## Goal:
Use PHP to fetch and display blog posts from a MySQL database.

---

## Step 1: Set Up

Use a local dev tool like XAMPP or MAMP to run PHP + MySQL.

Inside your project folder, create:
- `index.php` for the blog logic
- `style.css` for basic design
- `blog.sql` to set up the database

---

## Step 2: Create the Database

Run `blog.sql` in phpMyAdmin or MySQL Workbench:

CREATE DATABASE blog;
USE blog;

CREATE TABLE posts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  content TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO posts (title, content) VALUES
('First Post', 'Welcome to my blog! This is my first post.'),
('Second Post', 'PHP and MySQL are powerful together.'),
('Third Post', 'Soon, I’ll connect this to a real frontend.');

---

## Step 3: Write PHP to Query Posts

In `index.php`, connect to the database and show each post on 
the page.

---

## Step 4: Stretch Goals

- Style the page with CSS  
- Add a form to insert new posts  
- Show only the 5 most recent posts

---

## ✅ Done!

You just built a real dynamic web app — where content lives in a 
database and appears on your page 💜



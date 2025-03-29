-- Create the database
CREATE DATABASE IF NOT EXISTS blog;
USE blog;

-- Create the posts table
CREATE TABLE posts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  content TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample posts
INSERT INTO posts (title, content) VALUES
('First Post', 'Welcome to my blog! This is my first post.'),
('Second Post', 'PHP and MySQL are powerful together.'),
('Third Post', 'Soon, I’ll connect this to a real frontend.');



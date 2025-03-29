# Lab: Build an Interactive Web App with JavaScript

## Goal:
Learn how HTML, CSS, and JavaScript work together by building a 
simple To-Do List.

---

## Step 1: Set Up Your Folder

Navigate to your project folder:

cd ~/datadiva93-bootcamp/03-javascript-basics/project

Create three files:

touch index.html style.css script.js

---

## Step 2: Write the HTML

In index.html, add the following:

<!DOCTYPE html>
<html>
<head>
  <title>To-Do List</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1>My To-Do List</h1>
  <input type="text" id="taskInput" placeholder="New task..." />
  <button onclick="addTask()">Add</button>
  <ul id="taskList"></ul>
  <script src="script.js"></script>
</body>
</html>

---

## Step 3: Add Styling

In style.css, paste this:

body {
  font-family: sans-serif;
  background: #f5f5f5;
  padding: 20px;
}

input, button {
  padding: 10px;
  font-size: 16px;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  margin-top: 10px;
  padding: 8px;
  background: white;
  border: 1px solid #ddd;
}

---

## Step 4: Write JavaScript

In script.js, add this:

function addTask() {
  const input = document.getElementById("taskInput");
  const taskText = input.value.trim();
  if (taskText === "") return;

  const li = document.createElement("li");
  li.textContent = taskText;
  document.getElementById("taskList").appendChild(li);
  input.value = "";
}

---

## Stretch Goals:
- Add a checkbox to mark tasks complete  
- Add a delete button for each task  
- Save tasks in local storage

---

## ✅ Done!

You just built a working JavaScript web app! Share your code 
with the community 💜



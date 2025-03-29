<?php
// Connect to MySQL
$conn = new mysqli("localhost", "root", "", "blog");

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Query the posts
$sql = "SELECT title, content, created_at FROM posts ORDER BY 
created_at DESC";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
  <title>My Blog</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1>Welcome to My Blog</h1>

  <?php if ($result->num_rows > 0): ?>
    <?php while($row = $result->fetch_assoc()): ?>
      <div class="post">
        <h2><?php echo $row['title']; ?></h2>
        <p><?php echo $row['content']; ?></p>
        <small>Posted on <?php echo $row['created_at']; 
?></small>
      </div>
    <?php endwhile; ?>
  <?php else: ?>
    <p>No posts found.</p>
  <?php endif; ?>

</body>
</html>

<?php $conn->close(); ?>

0


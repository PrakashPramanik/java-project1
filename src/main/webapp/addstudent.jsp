<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Student</title>
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f4f4f9;
    }
    .card {
      border-radius: 12px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }
    .btn-custom {
      background-color: #007BFF;
      color: white;
      border-radius: 8px;
    }
    .btn-custom:hover {
      background-color: #0056b3;
    }
     .btn-home {
      background-color: #6c757d;
      color: white;
      border-radius: 8px;
      margin-top: 10px;
    }
    .btn-home:hover {
      background-color: #5a6268;
    }
  </style>
</head>
<body>
  <div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card p-4" style="width: 350px;">
      <h3 class="text-center mb-4">Add Student</h3>
      <form action="AddController" method="post">
        <div class="mb-3">
          <label for="rollno" class="form-label">Roll Number</label>
          <input type="number" class="form-control" id="rollno" name="rollno" placeholder="Enter Roll Number" required>
        </div>
        <div class="mb-3">
          <label for="name" class="form-label">Name</label>
          <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" required>
        </div>
        <div class="mb-3">
          <label for="classname" class="form-label">Class</label>
          <input type="text" class="form-control" id="classname" name="classname" placeholder="Enter Class" required>
        </div>
        <button type="submit" class="btn btn-custom w-100">Add Student</button>
      </form>
      <a href="/Student" class="btn btn-home w-100">Home</a>
    </div>	
  </div>
  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

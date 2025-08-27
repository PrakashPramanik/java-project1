<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 100px;
        }
        .card {
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .card-header {
            background-color: #007bff;
            color: white;
            font-size: 1.2rem;
            text-align: center;
        }
        .btn-custom {
            background-color: #007bff;
            color: white;
            border-radius: 8px;
            padding: 10px 20px;
            transition: 0.3s;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    Retrieve Student Data
                </div>
                <div class="card-body text-center">
                    <h4 class="mb-4">View all Students</h4>
                    <form action="StudentController" method="get">
                        <input type="submit" value="Click Here to Get Student Details" class="btn btn-custom">
                    </form>
                </div>
            </div>
            <br>
            <div class="card">
                <div class="card-header">
                    Add Student.
                </div>
                <div class="card-body text-center">
                    <h4 class="mb-4">Add a Student</h4>
                    <form action="addstudent.jsp" method="get">
                        <input type="submit" value="Click Here to Add Student" class="btn btn-custom">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

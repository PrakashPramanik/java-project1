<%@ page import="java.util.List" %>
<%@ page import="com.example.bean.Student" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Students</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- FontAwesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }

        .container {
            padding: 40px;
        }

        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background: linear-gradient(90deg, #007bff, #0056b3);
            color: white;
            border-radius: 15px 15px 0 0;
            padding: 20px;
        }

        .table-responsive {
            margin-top: 20px;
        }

        .table {
            border-radius: 15px;
            overflow: hidden;
        }

        .table thead th {
            background-color: #343a40;
            color: white;
            border: none;
            text-align: center;
        }

        .table tbody td {
            vertical-align: middle;
        }

        .table tbody tr:hover {
            background-color: #f1f1f1;
        }

        .btn-action {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            margin-right: 5px;
        }

        .update-form input {
            border-radius: 20px;
            border: 1px solid #ced4da;
            padding: 5px 10px;
            margin-right: 5px;
            width: 120px;
        }

        .home-button {
            margin-top: 25px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-header text-center">
            <h2>Student List</h2>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover text-center align-middle">
                    <thead>
                        <tr>
                            <th>Roll No</th>
                            <th>Name</th>
                            <th>Class</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<Student> students = (List<Student>) request.getAttribute("students");
                            if (students != null && !students.isEmpty()) {
                                for (Student s : students) {
                        %>
                        <tr>
                            <td><%= s.getRollNo() %></td>
                            <td><%= s.getName() %></td>
                            <td><%= s.getClassName() %></td>
                            <td>
                                <!-- Update Form -->
                                <form action="UpdateController" method="post" class="d-inline update-form">
                                    <input type="hidden" name="rollNo" value="<%= s.getRollNo() %>">
                                    <input type="text" name="name" value="<%= s.getName() %>" required>
                                    <input type="text" name="className" value="<%= s.getClassName() %>" required>
                                    <button type="submit" class="btn btn-warning btn-action" title="Update">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </form>

                                <!-- Delete -->
                                <a href="DeleteController?rollNo=<%= s.getRollNo() %>"
                                   class="btn btn-danger btn-action"
                                   title="Delete"
                                   onclick="return confirm('Are you sure you want to delete this student?')">
                                    <i class="fas fa-trash"></i>
                                </a>
                            </td>
                        </tr>
                        <%
                                }
                            } else {
                        %>
                        <tr>
                            <td colspan="4" class="text-center text-muted">No students found.</td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>

            <div class="text-center home-button">
                <a href="/Student" class="btn btn-primary">
                    <i class="fas fa-home"></i> Home
                </a>
            </div>
        </div>
    </div>
</div>
</body>
</html>

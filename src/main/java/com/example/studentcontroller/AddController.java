package com.example.studentcontroller;



import com.example.bean.Student;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/AddController")
public class AddController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int rollNo = Integer.parseInt(request.getParameter("rollno"));
        String name = request.getParameter("name");
        String className = request.getParameter("classname");

        Student student = new Student(rollNo, name, className);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb", "root", "root");

            PreparedStatement ps = con.prepareStatement("INSERT INTO students VALUES (?,?,?)");
            ps.setInt(1, student.getRollNo());
            ps.setString(2, student.getName());
            ps.setString(3, student.getClassName());

            ps.executeUpdate();
            con.close();

            response.sendRedirect("StudentController");  
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}


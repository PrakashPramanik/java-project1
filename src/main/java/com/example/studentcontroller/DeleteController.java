package com.example.studentcontroller;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // ✅ Correct parameter name: rollNo (same as in JSP)
        String rollNoStr = request.getParameter("rollNo");

        if (rollNoStr != null && !rollNoStr.isEmpty()) {
            int rollNo = Integer.parseInt(rollNoStr);

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/studentdb", "root", "root");

                PreparedStatement ps = con.prepareStatement(
                        "DELETE FROM students WHERE roll_no = ?");
                ps.setInt(1, rollNo);

                ps.executeUpdate();
                con.close();

                // Redirect back to student list after deletion
                response.sendRedirect("StudentController");

            } catch (Exception e) {
                e.printStackTrace();
                response.getWriter().println("Error while deleting student: " + e.getMessage());
            }
        } else {
            response.getWriter().println("Invalid Roll Number");
        }
    }
}

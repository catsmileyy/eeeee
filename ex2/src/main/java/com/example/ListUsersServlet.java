package com.example;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class ListUsersServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String jdbcURL = "jdbc:sqlserver://LAPTOP-7SVOI8TF\\CAT;databaseName=UserDatabase;encrypt=true;trustServerCertificate=true";
        String dbUser = "sa";
        String dbPass = "1111";

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<head>");
        out.println("<style>");
        out.println("body { font-family: Arial, sans-serif; margin: 20px; background-color: #f4f4f4; }");
        out.println(".center { display: flex; flex-direction: column; align-items: center; }");
        out.println("h2 { color: #333; }");
        out.println("table { border-collapse: collapse; width: 100%; max-width: 600px; margin-bottom: 20px; }");
        out.println("th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }");
        out.println("th { background-color: #f2f2f2; }");
        out.println("button { padding: 10px 15px; margin-top: 10px; background-color: #0288D1; color: white; border: none; border-radius: 4px; cursor: pointer; }");
        out.println("button:hover { background-color: #039be5; }");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div class='center'>");
        out.println("<h2>User List</h2>");
        out.println("<table>");
        out.println("<tr><th>ID</th><th>Name</th><th>Email</th></tr>");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);
                 Statement stmt = conn.createStatement();
                 ResultSet rs = stmt.executeQuery("SELECT * FROM Users")) {
                while (rs.next()) {
                    int id = rs.getInt("ID");
                    String name = rs.getString("Name");
                    String email = rs.getString("Email");
                    out.println("<tr><td>" + id + "</td><td>" + name + "</td><td>" + email + "</td></tr>");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<tr><td colspan='3'>Error: " + e.getMessage() + "</td></tr>");
        }
        out.println("</table>");
        out.println("<button type='button' onclick=\"window.location.href='http://localhost:8080/MyServletApp-1.0-SNAPSHOT/hello'\">Go to Submit Form</button>");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
        out.close();
    }
}
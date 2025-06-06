package com.example;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class HelloServlet extends HttpServlet {  

    @Override  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  

        out.println("<html>");  
        out.println("<head>");  
        out.println("<style>");  
        out.println("body { font-family: Arial, sans-serif; margin: 20px; background-color: #f4f4f4; }");  
        out.println(".container { display: flex; flex-direction: column; align-items: center; }");  
        out.println("h2 { color: #333; text-align: center; }");  
        out.println("form { background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); max-width: 400px; width: 100%; display: flex; flex-direction: column; align-items: center; }");  
        out.println("input[type='text'] { padding: 8px; width: 100%; margin-bottom: 10px; border: 1px solid #ccc; border-radius: 4px; }");  
        out.println("input[type='submit'], button { padding: 10px 15px; margin-top: 10px; background-color: #0288D1; color: white; border: none; border-radius: 4px; cursor: pointer; }");  
        out.println("input[type='submit']:hover, button:hover { background-color: #039be5; }");  
        out.println("div.buttons { display: flex; justify-content: center; width: 100%; gap: 10px; margin-top: 20px; }");  
        out.println("</style>");  
        out.println("</head>");  
        out.println("<body>");  
        out.println("<div class='container'>");  
        out.println("<h2>Welcome to Servlet Example</h2>");  
        out.println("<form method='post' action='hello'>");  
        out.println("Name: <input type='text' name='name'><br>");  
        out.println("Email: <input type='text' name='email'><br>");  
        out.println("<input type='submit' value='Submit'>");  
        out.println("<div class='buttons'>");  
        out.println("<button type='button' onclick=\"window.location.href='http://localhost:8080/MyServletApp-1.0-SNAPSHOT/list'\">View User List</button>");  
        out.println("</div>");  
        out.println("</form>");  
        out.println("</div>");  
        out.println("</body>");  
        out.println("</html>");  
        out.close();  
    }  

    @Override  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
        String name = request.getParameter("name");  
        String email = request.getParameter("email");  

        String jdbcURL = "jdbc:sqlserver://LAPTOP-7SVOI8TF\\CAT;databaseName=UserDatabase;encrypt=true;trustServerCertificate=true";  
        String dbUser = "sa";  
        String dbPass = "1111";  

        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  

        try {  
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
            try (Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);  
                 PreparedStatement stmt = conn.prepareStatement("INSERT INTO Users (Name, Email) VALUES (?, ?)")) {  

                stmt.setString(1, name);  
                stmt.setString(2, email);  
                stmt.executeUpdate();  

                out.println("<html>");  
                out.println("<head>");  
                out.println("<style>");  
                out.println("body { font-family: Arial, sans-serif; margin: 20px; background-color: #f4f4f4; }");  
                out.println(".center { display: flex; flex-direction: column; align-items: center; }");  
                out.println("h2 { color: #333; }");  
                out.println("button { padding: 10px 15px; margin-top: 10px; background-color: #0288D1; color: white; border: none; border-radius: 4px; cursor: pointer; }");  
                out.println("button:hover { background-color: #039be5; }");  
                out.println("</style>");  
                out.println("</head>");  
                out.println("<body>");  
                out.println("<div class='center'>");  
                out.println("<h2>User " + name + " with email " + email + " has been successfully saved.</h2>");  
                out.println("<button onclick=\"window.location.href='hello'\">Back to form</button>");  
                out.println("<button onclick=\"window.location.href='http://localhost:8080/MyServletApp-1.0-SNAPSHOT/list'\">View User List</button>");  
                out.println("</div>");  
                out.println("</body>");  
                out.println("</html>");  
            }  
        } catch (Exception e) {  
            e.printStackTrace();  
            out.println("<html><body><h2>Error: " + e.getMessage() + "</h2></body></html>");  
        } finally {  
            out.close();  
        }  
    }  
}  
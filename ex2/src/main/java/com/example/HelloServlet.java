package com.example;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        out.println("<html><head><title>Servlet Example</title></head><body>");
        out.println("<h1>Welcome to Servlet Example</h1>");
        out.println("<form method='post' action='hello'>");
        out.println("Name: <input type='text' name='name'/><br/><br/>");
        out.println("Email: <input type='email' name='email'/><br/><br/>");
        out.println("<input type='submit' value='Submit'/>");
        out.println("</form>");
        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");

        out.println("<html><head><title>Form Submitted</title></head><body>");
        out.println("<h2>Thank you for submitting!</h2>");
        out.println("<p>Name: " + name + "</p>");
        out.println("<p>Email: " + email + "</p>");
        out.println("</body></html>");
    }
}

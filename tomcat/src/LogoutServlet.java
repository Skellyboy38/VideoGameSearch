package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class LogoutServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession();
        session.removeAttribute("username");
        session.removeAttribute("shopping_cart");
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    public void destroy() {
        //nothing for now
    }
}
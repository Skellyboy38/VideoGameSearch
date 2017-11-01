package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class LoginServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(UserTDG.getUser(username, password) != null){
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            session.removeAttribute("login_error");
            request.getRequestDispatcher("home.jsp").forward(request, response);
         }
        else {
            HttpSession session = request.getSession();
            session.setAttribute("login_error", "Incorrect login");
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
    }

    public void destroy() {
        //nothing for now
    }
}
package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Date;
import java.text.SimpleDateFormat;

public class LoginServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserModel user = UserTDG.getUser(username, password);

        if(user != null){
            HttpSession session = request.getSession();
            String old_login = UserTDG.updateLastLogin(user, new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(new Date()));

            session.setAttribute("username", username);
            session.setAttribute("last_login", old_login);
            session.removeAttribute("login_error");
            session.removeAttribute("email_message");
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
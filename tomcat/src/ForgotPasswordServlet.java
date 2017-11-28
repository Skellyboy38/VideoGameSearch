package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.UUID;

public class ForgotPasswordServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("/forgotPassword.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String emailAttempt = request.getParameter("email");

        String email = UserTDG.getEmail(username);
        String newPassword = UUID.randomUUID().toString().replace("-", "").substring(0, 9);

        UserTDG.setPassword(username, newPassword);

        if(!emailAttempt.equalsIgnoreCase(email)) {
            HttpSession session = request.getSession();
            session.setAttribute("email_message", "Provided email address did not match email on record.");
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }

        SendMail.send(email, "Forgot Password", username+", your new password is: "+newPassword+". Don't forget to change your password in the profile page.", "robertComp387", "robertcomp");
        HttpSession session = request.getSession();
        session.setAttribute("email_message", "Email sent to: "+email);
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    public void destroy() {
        //nothing for now
    }
}
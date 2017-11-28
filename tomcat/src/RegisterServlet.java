package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class RegisterServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserModel user = new UserModel(
            request.getParameter("username"),
            request.getParameter("password"),
            request.getParameter("firstname"),
            request.getParameter("lastname"),
            request.getParameter("email"),
            request.getParameter("address1"),
            request.getParameter("address2"),
            request.getParameter("city"),
            request.getParameter("state"),
            request.getParameter("zip"),
            request.getParameter("country"),
            request.getParameter("credit_card_type"),
            request.getParameter("credit_card_number"),
            request.getParameter("credit_card_cvv"),
            request.getParameter("credit_card_expiry"),
            0,
            0,
            0
        );

        if(UserTDG.addUser(user)) {
            HttpSession session = request.getSession();
            session.removeAttribute("registration_error");
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
        else {
            HttpSession session = request.getSession();
            session.setAttribute("registration_error", "Username already exists");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }

    public void destroy() {
        //nothing for now
    }
}
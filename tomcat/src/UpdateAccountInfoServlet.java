package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class UpdateAccountInfoServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("/accountInfo.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String oldUsername = (String)request.getSession().getAttribute("username");
        UserModel user = new UserModel(
            username,
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
            0
        );
        UserTDG.updateUserInfo(user, oldUsername);
        response.setContentType("text/html");
        request.getSession().setAttribute("favorites", UserTDG.getFavorites(username));
        request.getSession().setAttribute("user", UserTDG.getUserInfo(username));
        request.getRequestDispatcher("/accountInfo.jsp").forward(request, response);
    }

    public void destroy() {
        //nothing for now
    }
}
package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class AccountInfoServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("/accountInfo.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        if(username != null || username != "null" || username != "") {
            response.setContentType("text/html");
            request.getSession().setAttribute("favorites", UserTDG.getFavorites(username));
            request.getSession().setAttribute("user", UserTDG.getUserInfo(username));
            request.getRequestDispatcher("/accountInfo.jsp").forward(request, response);
        }
        else {
            response.setContentType("text/html");
            request.getRequestDispatcher("/home.jsp").forward(request, response);
        }
    }

    public void destroy() {
        //nothing for now
    }
}
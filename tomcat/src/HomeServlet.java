package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HomeServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getSession().removeAttribute("login_error");
        GameIdentityMap gameMap = new GameIdentityMap();
        request.getSession().setAttribute("gameIdentityMap", gameMap);
        request.getSession().setAttribute("games", gameMap.getGames());
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        if(username != null || username != "null" || username != "") {
            request.getSession().setAttribute("username", username);
        }
        response.setContentType("text/html");
        request.getSession().removeAttribute("login_error");
        request.getSession().setAttribute("games", GameTDG.getGames());
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }

    public void destroy() {
        //nothing for now
    }
}
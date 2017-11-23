package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class FavoritesServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("/accountInfo.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String gameId = request.getParameter("game_id");
        String remove = request.getParameter("remove");
        if(remove.equals("true")) {
            UserTDG.removeFavorite(username, gameId);
        }
        else if(remove.equals("false")) {
            UserTDG.addFavorite(username, gameId);
        }
        response.setContentType("text/html");
        request.getSession().setAttribute("favorites", UserTDG.getFavorites(username));
        request.getSession().setAttribute("user", UserTDG.getUserInfo(username));
        request.getRequestDispatcher("/accountInfo.jsp").forward(request, response);
    }

    public void destroy() {
        //nothing for now
    }
}
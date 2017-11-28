package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class ModifyGameServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        GameModel game = new GameModel(
            request.getParameter("game_id"),
            request.getParameter("game_name"),
            null,
            request.getParameter("console"),
            request.getParameter("num_players"),
            request.getParameter("coop"),
            request.getParameter("genre"),
            request.getParameter("release_date"),
            request.getParameter("developer"),
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            0,
            Integer.parseInt(request.getParameter("inventory"))
        );

        GameTDG.modifyGame(game);
        request.getSession().setAttribute("games", GameTDG.getGames());
        request.getRequestDispatcher("home.jsp").forward(request, response);

    }

    public void destroy() {
        //nothing for now
    }
}
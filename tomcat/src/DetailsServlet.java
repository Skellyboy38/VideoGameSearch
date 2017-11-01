package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class DetailsServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String gameId = request.getParameter("game_id");
        String username = request.getParameter("username");

        GameModel game = GameTDG.getGame(gameId);

        HttpSession session = request.getSession();
        session.setAttribute("game_id", game.gameId);
        session.setAttribute("game_name", game.gameName);
        session.setAttribute("game_description", game.gameDescription);
        session.setAttribute("console", game.console);
        session.setAttribute("num_players", game.numPlayers);
        session.setAttribute("coop", game.coop);
        session.setAttribute("genre", game.genre);
        session.setAttribute("release_date", game.releaseDate);
        session.setAttribute("developer", game.developer);
        session.setAttribute("publisher", game.publisher);
        session.setAttribute("front_box_art", game.frontBoxArt);
        session.setAttribute("back_box_art", game.backBoxArt);
        session.setAttribute("logo", game.logo);
        session.setAttribute("developer_logo", game.developerLogo);
        session.setAttribute("price", game.price);
        session.setAttribute("discount", game.discount);

        session.setAttribute("comments", CommentTDG.getComments(gameId));

        if(username != null || username != "null" || username != "") {
            session.setAttribute("username", username);
        }
        request.getRequestDispatcher("details.jsp").forward(request, response);
    }

    public void destroy() {
        //nothing for now
    }
}
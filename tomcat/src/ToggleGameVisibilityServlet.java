package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ToggleGameVisibilityServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String gameId = request.getParameter("game_id");
        GameTDG.toggleGameVisibility(gameId);
        response.setContentType("text/html");
        request.getSession().setAttribute("games", GameTDG.getSpecials());
        request.getRequestDispatcher("/specials.jsp").forward(request, response);
    }

    public void destroy() {
        //nothing for now
    }
}
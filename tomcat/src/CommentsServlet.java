package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.DateFormat;

public class CommentsServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String details = request.getParameter("details");
        String rating = request.getParameter("rating");
        String username = request.getParameter("username");
        String gameId = request.getParameter("game_id");

        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        String currentDate = dateFormat.format(date);

        CommentModel comment = new CommentModel("-1", username, gameId, currentDate, details, rating);
        CommentTDG.addComment(comment);

        HttpSession session = request.getSession();
        if(username != null || username != "null" || username != "") {
            session.setAttribute("username", username);
        }
        session.setAttribute("comments", CommentTDG.getComments(gameId));
        request.getRequestDispatcher("details.jsp").forward(request, response);
    }

    public void destroy() {
        //nothing for now
    }
}
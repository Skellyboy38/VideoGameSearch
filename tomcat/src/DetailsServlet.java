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

        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection
                        ("jdbc:mysql://videogamesearch_mysql_1:3306/videogames?autoReconnect=true&useSSL=false","root","password");
            PreparedStatement ps =con.prepareStatement
                             ("select * from game where game_id=?");
            ps.setString(1, gameId);
            ResultSet game = ps.executeQuery();
            game.next();

            HttpSession session = request.getSession();
            session.setAttribute("game_id", game.getString("game_id"));
            session.setAttribute("game_name", game.getString("game_name"));
            session.setAttribute("game_description", game.getString("game_description"));
            session.setAttribute("console", game.getString("console"));
            session.setAttribute("num_players", game.getString("num_players"));
            session.setAttribute("coop", game.getString("coop"));
            session.setAttribute("genre", game.getString("genre"));
            session.setAttribute("release_date", game.getString("release_date"));
            session.setAttribute("developer", game.getString("developer"));
            session.setAttribute("publisher", game.getString("publisher"));
            session.setAttribute("front_box_art", game.getString("front_box_art"));
            session.setAttribute("back_box_art", game.getString("back_box_art"));
            session.setAttribute("logo", game.getString("logo"));
            session.setAttribute("developer_logo", game.getString("developer_logo"));
            session.setAttribute("price", game.getString("price"));
            session.setAttribute("discount", game.getString("discount"));

            if(username != null || username != "null" || username != "") {
                session.setAttribute("username", username);
            }
            request.getRequestDispatcher("details.jsp").forward(request, response);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally {
            try {
                con.close();
            }
            catch(Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void destroy() {
        //nothing for now
    }
}
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

        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection
                        ("jdbc:mysql://videogamesearch_mysql_1:3306/videogames?autoReconnect=true&useSSL=false","root","password");
            PreparedStatement ps =con.prepareStatement
                             ("insert into comments(user_id, game_id, comment_date, comment_details, ratings) values(?, ?, ?, ?, ?)");
            ps.setString(1, username);
            ps.setString(2, gameId);
            ps.setString(3, currentDate);
            ps.setString(4, details);
            ps.setString(5, rating);
            int rs = ps.executeUpdate();

            HttpSession session = request.getSession();
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
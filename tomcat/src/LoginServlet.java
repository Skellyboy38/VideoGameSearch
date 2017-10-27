import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class LoginServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection con = null;
        try{
	        //loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");
 	        //creating connection with the database
            con=DriverManager.getConnection
                        ("jdbc:mysql://videogamesearch_mysql_1:3306/videogames?autoReconnect=true&useSSL=false","root","password");
            PreparedStatement ps =con.prepareStatement
                             ("select * from user where user_id=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                session.removeAttribute("login_error");
                request.getRequestDispatcher("home.jsp").forward(request, response);
            }
            else {
                HttpSession session = request.getSession();
                session.setAttribute("login_error", "Incorrect login");
                request.getRequestDispatcher("home.jsp").forward(request, response);
            }
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
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

        try{
	        //loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");
 	        //creating connection with the database
            Connection con=DriverManager.getConnection
                        ("jdbc:mysql://videogamesearch_mysql_1:3306/videogames","root","password");
            PreparedStatement ps =con.prepareStatement
                             ("select * from user where user_id=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                //response.getSession().setAttribute("username", username);
                response.sendRedirect("home.jsp");
            }
            else {
                out.println("Invalid password <a href='home.jsp'>try again</a>");
                response.sendRedirect("home.jsp");
            }
        }
        catch(Exception e){
          e.printStackTrace();
        }
    }

    public void destroy() {
        //nothing for now
    }
}
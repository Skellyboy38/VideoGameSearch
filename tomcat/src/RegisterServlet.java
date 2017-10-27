import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class RegisterServlet extends HttpServlet {

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
            con = DriverManager.getConnection
                        ("jdbc:mysql://videogamesearch_mysql_1:3306/videogames?autoReconnect=true&useSSL=false","root","password");
            PreparedStatement ps = con.prepareStatement
                             ("insert into user(user_id, password) values(?,?)");
            ps.setString(1, username);
            ps.setString(2, password);
            int rs = ps.executeUpdate();
            HttpSession session = request.getSession();
            session.removeAttribute("registration_error");
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
        catch(Exception e){
            e.printStackTrace();
            HttpSession session = request.getSession();
            session.setAttribute("registration_error", "User already exists");
            request.getRequestDispatcher("home.jsp").forward(request, response);
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
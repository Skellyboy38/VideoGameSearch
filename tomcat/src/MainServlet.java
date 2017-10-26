import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MainServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession().getAttribute("username") == null || request.getSession().getAttribute("username") == "") {
            request.getRequestDispatcher("/home.jsp").forward(request, response);
        }
        else {
            request.getRequestDispatcher("/main.jsp").forward(request, response);
        }
    }

    public void destroy() {
        //nothing for now
    }
}
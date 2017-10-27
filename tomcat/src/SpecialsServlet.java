import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SpecialsServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        if(username != null || username != "null" || username != "") {
            request.getSession().setAttribute("username", username);
        }
        response.setContentType("text/html");
        request.getRequestDispatcher("/specials.jsp").forward(request, response);
    }

    public void destroy() {
        //nothing for now
    }
}
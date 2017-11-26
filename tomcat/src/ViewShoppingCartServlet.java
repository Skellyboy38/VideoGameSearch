package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ViewShoppingCartServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("/shoppingCart.jsp").forward(request, response);
    }

    public void destroy() {
        //nothing for now
    }
}
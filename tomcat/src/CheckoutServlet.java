package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.math.BigDecimal;

public class CheckoutServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String totalPrice = request.getParameter("total_price");
        String username = (String)request.getSession().getAttribute("username");
        System.out.println(ValidatePayment.validatePayment(username));
        if(!ValidatePayment.validatePayment(username)) {
            request.getSession().setAttribute("checkout_error", "Credit card information is missing. Go to profile to update it.");
            response.setContentType("text/html");
            request.getRequestDispatcher("/shoppingCart.jsp").forward(request, response);
        }
        else {
            PaymentTDG.makePayment(username, totalPrice);
            request.getSession().removeAttribute("checkout_error");
            request.getSession().removeAttribute("shopping_cart");
            response.setContentType("text/html");
            request.getRequestDispatcher("/shoppingCart.jsp").forward(request, response);
        }
    }

    public void destroy() {
        //nothing for now
    }
}
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

        Map<String, Map<String, String>> shoppingCart = (Map<String, Map<String, String>>)request.getSession().getAttribute("shopping_cart");
        boolean enoughInventory = true;
        for(Map.Entry<String, Map<String, String>> entry : shoppingCart.entrySet()) {
            if(!GameTDG.canReduceInventory(entry.getKey(), Integer.parseInt(entry.getValue().get("quantity")))) {
                enoughInventory = false;
            }
        }
        String totalPrice = request.getParameter("total_price");
        String username = (String)request.getSession().getAttribute("username");
        if(!enoughInventory) {
            request.getSession().setAttribute("checkout_error", "Not enough inventory.");
            response.setContentType("text/html");
            request.getRequestDispatcher("/shoppingCart.jsp").forward(request, response);
        }
        else if(!ValidatePayment.validatePayment(username)) {
            request.getSession().setAttribute("checkout_error", "Credit card information is missing. Go to profile to update it.");
            response.setContentType("text/html");
            request.getRequestDispatcher("/shoppingCart.jsp").forward(request, response);
        }
        else {
            PaymentTDG.makePayment(username, totalPrice);
            for(Map.Entry<String, Map<String, String>> entry : shoppingCart.entrySet()) {
                GameTDG.reduceInventory(entry.getKey(), Integer.parseInt(entry.getValue().get("quantity")));
            }
            request.getSession().setAttribute("checkout_error", "Payment completed successfully.");
            request.getSession().removeAttribute("shopping_cart");
            response.setContentType("text/html");
            request.getRequestDispatcher("/shoppingCart.jsp").forward(request, response);
        }
    }

    public void destroy() {
        //nothing for now
    }
}
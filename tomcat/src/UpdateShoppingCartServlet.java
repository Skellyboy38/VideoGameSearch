package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.math.BigDecimal;

public class UpdateShoppingCartServlet extends HttpServlet {

    public void init() throws ServletException {}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String quantity = request.getParameter("quantity");
        String gameId = request.getParameter("game_id");
        if(Integer.parseInt(quantity) == 0) {
            Map<String, Map<String, String>> shoppingCart = (Map<String, Map<String, String>>)request.getSession().getAttribute("shopping_cart");
            shoppingCart.remove(gameId);
            request.getSession().setAttribute("shopping_cart", shoppingCart);
        }
        else {
            Map<String, Map<String, String>> shoppingCart = (Map<String, Map<String, String>>)request.getSession().getAttribute("shopping_cart");
            Map<String, String> details = new HashMap<String, String>();
            details.put("quantity", quantity);
            details.put("game_name", GameTDG.getGameName(gameId));
            details.put("unit_price", GameTDG.getUnitPrice(gameId));
            BigDecimal bd = new BigDecimal("" + Float.parseFloat(details.get("unit_price"))*Integer.parseInt(quantity));
            bd = bd.setScale(2, BigDecimal.ROUND_HALF_UP);
            details.put("total_price", "" + bd.floatValue());
            shoppingCart.put(gameId, details);
            request.getSession().setAttribute("shopping_cart", shoppingCart);
        }
        response.setContentType("text/html");
        request.getRequestDispatcher("/shoppingCart.jsp").forward(request, response);
    }

    public void destroy() {
        //nothing for now
    }
}
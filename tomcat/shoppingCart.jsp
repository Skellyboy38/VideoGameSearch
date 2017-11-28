<%@page import="java.util.*, src.GameModel, src.UserModel"%><html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="main.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script>
$(document).ready(function() {
  $('#shopping_cart').DataTable();
});
</script>
</head>
<body>

<% if(session.getAttribute("username") != "null" && session.getAttribute("username") != null && session.getAttribute("username") != "") { %>
    Currently logged in as <%= session.getAttribute("username") %><br>
    <form action="home" method="post">
        <input type="submit" value="home">
        <input type="hidden" name="username" value='<%= session.getAttribute("username") %>'>
    </form>
    <hr>
    <h3>Shopping Cart</h3>
    <% Map<String, Map<String, String>> shoppingCart = (HashMap<String, Map<String, String>>)session.getAttribute("shopping_cart"); %>
    <% float totalPrice = 0f; %>
    <% if(shoppingCart == null || shoppingCart.isEmpty()) { %>
        <h5>You currently do not have any games in your shopping cart. Search through the games to add some.</h5>
        <br><br>
    <% } else { %>
        <table id="shopping_cart" class="table table-hover table-bordered" cellspacing="0" width="100%">
        <thead>
            <th>Game ID</th>
            <th>Game Name</th>
            <th>Unit Price</th>
            <th>Total Price</th>
            <th>Update</th>
        </thead>
        <tbody>
            <% for(Map.Entry<String, Map<String, String>> entry : shoppingCart.entrySet()) { %>
                    <tr>
                        <td><%= entry.getKey() %></td>
                        <td><%= entry.getValue().get("game_name") %></td>
                        <td>$<%= entry.getValue().get("unit_price") %></td>
                        <td>$<%= entry.getValue().get("total_price") %></td>
                        <% totalPrice += Float.parseFloat(entry.getValue().get("total_price")); %>
                        <td>
                            <form action="update_shopping_cart" method="post">
                                Quantity: <input type="number" name="quantity" value='<%= entry.getValue().get("quantity") %>'/>
                                <input type="hidden" name="game_id" value='<%= entry.getKey() %>'/>
                                <input type="submit" value="Update" />
                            </form>
                        </td>
                    </tr>
            <% }%>
        </tbody>
        </table>
        <h4>Total: <%= ""+totalPrice %></h4>
        <form action="empty_cart" method="post">
            <input type="submit" value="Empty Cart" />
        </form>
        <form action="checkout" method="post">
            <input type="hidden" name="total_price" value="<%= totalPrice %>" />
            <input type="submit" value="Checkout" />
        </form>
    <% } %>
    <% if(session.getAttribute("checkout_error") != null) { %>
        <h6><%= session.getAttribute("checkout_error") %></h6>
    <% } %>
<% } %>
    </body>
</html>
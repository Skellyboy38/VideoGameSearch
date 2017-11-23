<%@page import="java.util.ArrayList, src.GameModel, src.UserModel"%><html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="main.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script>
$(document).ready(function() {
  $('#favorites').DataTable();
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
    <h3>Favorites</h3>
    <% ArrayList<GameModel> favorites = (ArrayList<GameModel>)session.getAttribute("favorites"); %>
    <hr>
        <table id="favorites" class="table table-hover table-bordered" cellspacing="0" width="100%">
        <thead>
            <th>Name</th>
            <th>Price</th>
            <th>Discount</th>
            <th>Discounted Price</th>
            <th>Remove</th>
        </thead>
        <tbody>
            <% for(GameModel game : favorites) { %>
                    <tr>
                        <td><%= game.gameName %></td>
                        <td>$<%= game.price %></td>
                        <td><%= game.discount %>%</td>
                        <td>$<%= Math.round(Float.parseFloat(game.price) * (100-Float.parseFloat(game.discount)))/100.0 %></td>
                        <td>
                            <form action="favorites" method="post">
                                <input type="hidden" name="game_id" value="<%= game.gameId %>" />
                                <input type="hidden" name="username" value='<%= session.getAttribute("username") %>' />
                                <input type="hidden" name="remove" value="true" />
                                <input type="submit" value="Remove" />
                            </form>
                        </td>
                    </tr>
            <% }%>
        </tbody>
        </table>
        <hr>
        <h3>Account Info</h3>
        <form action="update_account_info" method="post">
            <% UserModel user = (UserModel)session.getAttribute("user"); %>
            <table>
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="username" value="<%= user.userId %>"/></td>
                    <td>Password:</td>
                    <td><input type="password" name="password" value="<%= user.password %>"/></td>
                </tr>
                <tr>
                    <td><hr></td>
                    <td><hr></td>
                    <td><hr></td>
                    <td><hr></td>
                </tr>
                <tr>
                    <td><h4>Personal Info:</h4></td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td><input type="text" name="firstname" value="<%= user.firstName %>"/></td>
                    <td>Last Name:</td>
                    <td><input type="text" name="lastname" value="<%= user.lastName %>"/></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="email" value="<%= user.email %>"/></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Address #1:</td>
                    <td><input type="text" name="address1"value="<%= user.address1 %>"/></td>
                    <td>Address #2:</td>
                    <td><input type="text" name="address2" value="<%= user.address2 %>"/></td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td><input type="text" name="city" value="<%= user.city %>"/></td>
                    <td>State:</td>
                    <td><input type="text" name="state" value="<%= user.state %>"/></td>
                </tr>
                <tr>
                    <td>Zip Code:</td>
                    <td><input type="text" name="zip" value="<%= user.zip %>"/></td>
                    <td>Country:</td>
                    <td><input type="text" name="country" value="<%= user.country %>"/></td>
                </tr>
                <tr>
                    <td><hr></td>
                    <td><hr></td>
                    <td><hr></td>
                    <td><hr></td>
                </tr>
                <tr>
                    <td><h4>Credit Card Info:</h4></td>
                </tr>
                <tr>
                    <td>Type:</td>
                    <td><input type="text" name="credit_card_type" value="<%= user.creditCardType %>"/></td>
                </tr>
                <tr>
                    <td>Number:</td>
                    <td><input type="text" name="credit_card_number" value="<%= user.creditCardNumber %>"/></td>
                </tr>
                <tr>
                    <td>CVV:</td>
                    <td><input type="text" name="credit_card_cvv" value="<%= user.creditCardCvv %>"/></td>
                </tr>
                <tr>
                    <td>Expiration Date:</td>
                    <td><input type="text" name="credit_card_expiry" value="<%= user.creditCardExpiry %>"/></td>
                </tr>
            </table>
            <hr>
            <input type="submit" value="Save Changes">
        </form>
    <% } %>
    </body>
</html>
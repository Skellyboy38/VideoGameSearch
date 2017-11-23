<%@page import="java.util.ArrayList, src.GameModel"%><html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="main.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script>
$(document).ready(function() {
  $('#specials').DataTable();
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
    <h3>Specials</h3>
    <% ArrayList<GameModel> games = (ArrayList<GameModel>)session.getAttribute("games"); %>
    <hr>
    <% if((int)session.getAttribute("is_admin") == 1) { %>
        <table id="specials" class="table table-hover table-bordered" cellspacing="0" width="100%">
        <thead>
            <th>Name</th>
            <th>Price</th>
            <th>Discount</th>
            <th>Discounted Price</th>
            <th>Should Display</th>
            <th>Toggle Display</th>
        </thead>
        <tbody>
            <% for(GameModel game : games) { %>
                    <tr>
                        <td><%= game.gameName %></td>
                        <td>$<%= game.price %></td>
                        <td><%= game.discount %>%</td>
                        <td>$<%= Math.round(Float.parseFloat(game.price) * (100-Float.parseFloat(game.discount)))/100.0 %></td>
                        <td><%= game.display %></td>
                        <td>
                            <form action="toggle_game_visibility" method="post">
                                <input type="hidden" name="game_id" value="<%= game.gameId %>" />
                                <input type="submit" value="toggle" />
                            </form>
                        </td>
                    </tr>
            <% }%>
        </tbody>
    </table>
    <% } else {%>
        <table id="specials" class="table table-hover table-bordered" cellspacing="0" width="100%">
        <thead>
            <th>Name</th>
            <th>Price</th>
            <th>Discount</th>
            <th>Discounted Price</th>
            <th>Add to favorites</th>
        </thead>
        <tbody>
            <% for(GameModel game : games) { %>
                    <tr>
                        <td><%= game.gameName %></td>
                        <td>$<%= game.price %></td>
                        <td><%= game.discount %>%</td>
                        <td>$<%= Math.round(Float.parseFloat(game.price) * (100-Float.parseFloat(game.discount)))/100.0 %></td>
                        <td>
                            <form action="favorites" method="post">
                                <input type="hidden" name="game_id" value="<%= game.gameId %>" />
                                <input type="hidden" name="username" value='<%= session.getAttribute("username") %>' />
                                <input type="hidden" name="remove" value="false" />
                                <input type="submit" value="Add" />
                            </form>
                        </td>
                    </tr>
            <% }%>
        </tbody>
    </table>
    <% } %>

<% } else {%>
    Not logged in
    <form action="home" method="get">
        <input type="submit" value="home">
    </form>
    <hr>
    <h3>Specials</h3>
    <% ArrayList<GameModel> games = (ArrayList<GameModel>)session.getAttribute("games"); %>
    <hr>
    <table id="specials" class="table table-hover table-bordered" cellspacing="0" width="100%">
        <thead>
            <th>Name</th>
            <th>Price</th>
            <th>Discount</th>
            <th>Discounted Price</th>
        </thead>
        <tbody>
            <% for(GameModel game : games) { %>
                <% if(game.display == 0) { %>
                    <tr>
                        <td><%= game.gameName %></td>
                        <td>$<%= game.price %></td>
                        <td><%= game.discount %>%</td>
                        <td>$<%= Math.round(Float.parseFloat(game.price) * (100-Float.parseFloat(game.discount)))/100.0 %></td>
                    </tr>
                <% } %>
            <% }%>
        </tbody>
    </table>
<% } %>
</body>
</html>
<%@page import="src.GameModel, java.util.ArrayList"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="main.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script>
$(document).ready(function() {
  $('#videogames').DataTable();
});
</script>
</head>
<body>
<h3 class="centercustom">Welcome to VideoGameSearch</h3><br>
<% if(session.getAttribute("username") == null) { %>
        <hr>
        <h4>Log in below</h4>
        <br/>
        <form action="login" method="post">
            Username:<input type="text" name="username"/>
            Password:<input type="password" name="password"/>
            <input type="submit" value="login"/>
        </form>

        <% if(session.getAttribute("login_error") != null) { %>
            <h5><%= session.getAttribute("login_error") %></h5>
        <%}%>

        <% if(session.getAttribute("email_message") != null) { %>
            <h5><%= session.getAttribute("email_message") %></h5>
        <%}%>

        <br/>
        <form action="forgot_password" method="get">
            <input type="submit" value="Forgot Password"/>
        </form>

        <hr>
        <h4>Register for new users</h4>
        <br/>
        <form action="register" method="get">
            <input type="submit" value="register"/>
        </form>
        <form action="specials" method="get">
           <input type="submit" value="view specials">
        </form>
<% } else { %>
        <h5>Logged in as <%= session.getAttribute("username") %></h5>
        <% if(session.getAttribute("last_login") == "" || session.getAttribute("last_login") == null) { %>
            <h5>Last login: n/a</h5>
        <% } else { %>
            <h5>Last login: <%= session.getAttribute("last_login") %></h5>
        <% } %>
        <form action="logout" method="post">
            <input type="submit" value="logout">
        </form>
        <form action="specials" method="post">
           <input type="hidden" name="username" value='<%= session.getAttribute("username") %>'/>
           <input type="submit" value="view specials">
        </form>
        <% if((int)session.getAttribute("is_admin") == 1) { %>
            <form action="control_panel" method="post">
                <input type="submit" value="Control Panel">
            </form>
        <% } else {%>
            <form action="account_info" method="post">
                <input type="hidden" name="username" value='<%= session.getAttribute("username") %>'>
                <input type="submit" value="Account Information">
            </form>
            <form action="view_shopping_cart" method="post">
                <input type="submit" value="View Shopping Cart">
            </form>
        <% } %>
<% } %>
<hr>
<h5>List of current video games</h5>
<% ArrayList<GameModel> games = (ArrayList<GameModel>)session.getAttribute("games"); %>
<table id="videogames" class="table table-hover table-bordered" cellspacing="0" width="100%">
    <thead>
        <th>Game ID</th>
        <th>Name</th>
        <th>Console</th>
        <th>Number of players</th>
        <th>Coop</th>
        <th>Genre</th>
        <th>Release Date</th>
        <th>Developer</th>
        <th>Inventory</th>
        <th>More Info</th>
        <% if(session.getAttribute("is_admin") != null && (int)session.getAttribute("is_admin") == 1) { %>
            <th>Save Changes</th>
        <% } %>
    </thead>
    <tbody>
        <% for(GameModel game : games) { %>
            <% if(session.getAttribute("is_admin") != null && (int)session.getAttribute("is_admin") == 1) { %>
                <tr>
                    <td><%= game.gameId %></td>
                    <form action="modify_game" method="post">
                        <input type="hidden" name="game_id" value="<%= game.gameId %>"/>
                        <td><input type="text" name="game_name" value="<%= game.gameName %>"/></td>
                        <td><input type="text" name="console" value="<%= game.console %>"/></td>
                        <td><input type="text" name="num_players" value="<%= game.numPlayers %>"/></td>
                        <td><input type="text" name="coop" value="<%= game.coop %>"/></td>
                        <td><input type="text" name="genre" value="<%= game.genre %>"/></td>
                        <td><input type="text" name="release_date" value="<%= game.releaseDate %>"/></td>
                        <td><input type="text" name="developer" value="<%= game.developer %>"/></td>
                        <td><input type="number" name="inventory" value="<%= game.inventory %>"/></td>
                        <td><input type="submit" value="Save Changes"></td>
                    </form>
                    <td>
                        <form action="details" method="post">
                            <input type="hidden" name="game_id" value="<%= game.gameId %>" />
                            <% if(session.getAttribute("username") != null) { %>
                                <input type="hidden" name="username" value='<%= session.getAttribute("username") %>' />
                            <% } %>
                            <input type="submit" value="more info" />
                        </form>
                    </td>
                 </tr>
            <% } else { %>
                <tr>
                    <td><%= game.gameId %></td>
                    <td><%= game.gameName %></td>
                    <td><%= game.console %></td>
                    <td><%= game.numPlayers %></td>
                    <td><%= game.coop %></td>
                    <td><%= game.genre %></td>
                    <td><%= game.releaseDate %></td>
                    <td><%= game.developer %></td>
                    <td><%= game.inventory %></td>
                    <td>
                        <form action="details" method="post">
                            <input type="hidden" name="game_id" value="<%= game.gameId %>" />
                            <% if(session.getAttribute("username") != null) { %>
                                <input type="hidden" name="username" value='<%= session.getAttribute("username") %>' />
                            <% } %>
                            <input type="submit" value="more info" />
                        </form>
                    </td>
                </tr>
            <% } %>
        <% } %>
    </tbody>
</table>
</body>
</html>

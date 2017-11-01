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
<h3 class="centercustom">Welcome to VideoGameSearch</h3>
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

<hr>
<h4>Register for new users</h4>
<br/>
<form action="register" method="get">
    <input type="submit" value="register"/>
</form>

<% } else { %>
<h4>Logged in as <%= session.getAttribute("username") %></h4>

<form action="specials" method="post">
    <input type="hidden" name="username" value='<%= session.getAttribute("username") %>'/>
    <input type="submit" value="view specials">
</form>
<form action="logout" method="post">
    <input type="submit" value="logout">
</form>
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
        <th>Publisher</th>
        <th>More Info</th>
    </thead>
    <tbody>
        <% for(GameModel game : games) { %>
            <tr>
                <td><%= game.gameId %></td>
                <td><%= game.gameName %></td>
                <td><%= game.console %></td>
                <td><%= game.numPlayers %></td>
                <td><%= game.coop %></td>
                <td><%= game.genre %></td>
                <td><%= game.releaseDate %></td>
                <td><%= game.developer %></td>
                <td><%= game.publisher %></td>
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
    </tbody>
</table>
</body>
</html>

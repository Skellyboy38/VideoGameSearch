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

<form action="home" method="post">
    <input type="submit" value="home">
    <% if(session.getAttribute("username") != null) { %>
        <input type="hidden" name="username" value='<%= session.getAttribute("username") %>'>
    <% } %>
</form>

<% if(session.getAttribute("username") != null) { %>
Currently logged in as <%= session.getAttribute("username") %>
<% } else {%>
Not logged in
<% } %>

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
                <tr>
                    <td><%= game.gameName %></td>
                    <td>$<%= game.price %></td>
                    <td><%= game.discount %>%</td>
                    <td>$<%= Math.round(Float.parseFloat(game.price) * (100-Float.parseFloat(game.discount)))/100.0 %></td>
                </tr>
        <% }%>
    </tbody>
</table>
</body>
</html>
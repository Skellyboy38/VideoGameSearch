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
  $('#game').DataTable();
});
</script>
</head>
<body>
</body>
</html>

<form action="home" method="get">
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
<h4><%= session.getAttribute("game_name") %></h4>
<image src='<%= session.getAttribute("front_box_art") %>' width="200"/>
<image src='<%= session.getAttribute("back_box_art") %>' width="200"/>

<table id="game" class="table table-hover table-bordered" cellspacing="0" width="100%">
    <tr>
        <td>Game ID:</td>
        <td><%= session.getAttribute("game_id") %></td>
    </tr>
    <tr>
        <td>Description:</td>
        <td><%= session.getAttribute("game_description") %></td>
    </tr>
    <tr>
        <td>Console:</td>
        <td><%= session.getAttribute("console") %></td>
    </tr>
    <tr>
        <td>Number of Players:</td>
        <td><%= session.getAttribute("num_players") %></td>
    </tr>
    <tr>
        <td>Coop:</td>
        <td><%= session.getAttribute("coop") %></td>
    </tr>
    <tr>
        <td>Genre:</td>
        <td><%= session.getAttribute("genre") %></td>
    </tr>
    <tr>
        <td>Release Date:</td>
        <td><%= session.getAttribute("release_date") %></td>
    </tr>
    <tr>
        <td>Developer:</td>
        <td><%= session.getAttribute("developer") %></td>
    </tr>
    <tr>
        <td>Publisher:</td>
        <td><%= session.getAttribute("publisher") %></td>
    </tr>
    <tr>
        <td>Price:</td>
        <td><%= session.getAttribute("price") %></td>
    </tr>
    <% if(session.getAttribute("username") != null) { %>
    <tr>
        <td>Discount:</td>
        <td><%= session.getAttribute("discount") %></td>
    </tr>
    <% } %>
</table>
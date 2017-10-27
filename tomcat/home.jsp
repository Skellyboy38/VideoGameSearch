<%@page import="java.sql.*"%>
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
<form action="register" method="post">
    Username:<input type="text" name="username"/>
    Password:<input type="password" name="password"/>
    <input type="submit" value="register"/>
</form>

<% if(session.getAttribute("registration_error") != null) { %>
    <h5><%= session.getAttribute("registration_error") %></h5>
<%}%>

<% } else { %>
<h4>Logged in as <%= session.getAttribute("username") %></h4>

<form action="specials" method="post">
    <input type="submit" value="view specials">
</form>
<form action="logout" method="post">
    <input type="submit" value="logout">
</form>
<% } %>
<hr>
<h5>List of current video games</h5>
<%
Connection con = null;
ResultSet games = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection
                        ("jdbc:mysql://videogamesearch_mysql_1:3306/videogames?autoReconnect=true&useSSL=false","root","password");
            PreparedStatement ps = con.prepareStatement
                             ("select * from game");
            games = ps.executeQuery();
        }
        catch(Exception e){
            e.printStackTrace();
        }
%>
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
        <% while(games.next()) { %>
            <tr>
                <td><%= games.getString("game_id") %></td>
                <td><%= games.getString("game_name") %></td>
                <td><%= games.getString("console") %></td>
                <td><%= games.getString("num_players") %></td>
                <td><%= games.getString("coop") %></td>
                <td><%= games.getString("genre") %></td>
                <td><%= games.getString("release_date") %></td>
                <td><%= games.getString("developer") %></td>
                <td><%= games.getString("publisher") %></td>
                <td>
                    <form action="details" method="post">
                        <input type="hidden" name="game_id" value='<%= games.getString("game_id") %>' />
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
<% con.close(); %>
</body>
</html>

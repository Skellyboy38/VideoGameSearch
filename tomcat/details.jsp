<%@page import="java.sql.*"%><html>
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
  $('#reviews').DataTable();
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
        <td>$<%= session.getAttribute("price") %></td>
    </tr>
    <% if(session.getAttribute("username") != null) { %>
    <tr>
        <td>Discount:</td>
        <td><%= session.getAttribute("discount") %>% off</td>
    </tr>
    <% } %>
</table>
<h3>Reviews</h3>
<% if(session.getAttribute("username") != null) { %>
    <h5>Leave a review</h5>
    <form action="comments" id="rating_form" method="post">
        Comments: <input type="textarea" name="details" />
        Rating (from 1 to 10): <select name="rating" form="rating_form">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
            <option>10</option>
        </select>
        <input type="hidden" name="game_id" value='<%= session.getAttribute("game_id") %>' />
        <input type="hidden" name="username" value='<%= session.getAttribute("username") %>' />
        <input type="submit" value="submit">
    </form>
<% } else { %>
<h5>Log in to leave a review</h5>
<% } %>
<%
Connection con = null;
ResultSet reviews = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection
                        ("jdbc:mysql://videogamesearch_mysql_1:3306/videogames?autoReconnect=true&useSSL=false","root","password");
            PreparedStatement ps = con.prepareStatement
                             ("select * from comments where game_id=?");
            ps.setString(1, (String)session.getAttribute("game_id"));
            reviews = ps.executeQuery();
        }
        catch(Exception e){
            e.printStackTrace();
        }
%>
<hr>
<table id="reviews" class="table table-hover table-bordered" cellspacing="0" width="100%">
    <thead>
        <th>ID</th>
        <th>User</th>
        <th>Date</th>
        <th>Comments</th>
        <th>Rating</th>
    </thead>
    <tbody>
        <% while(reviews.next()) { %>
                <tr>
                    <td><%= reviews.getString("comment_id") %></td>
                    <td><%= reviews.getString("user_id") %></td>
                    <td><%= reviews.getString("comment_date") %></td>
                    <td><%= reviews.getString("comment_details") %></td>
                    <td><%= reviews.getString("ratings") %></td>
                </tr>
        <% }%>
    </tbody>
</table>
<% con.close(); %>
</body>
</html>
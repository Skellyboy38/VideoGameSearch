<%@page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="main.css">
<script>
$(document).ready(function() {
  $(".search").keyup(function () {
    var searchTerm = $(".search").val();
    var listItem = $('.results tbody').children('tr');
    var searchSplit = searchTerm.replace(/ /g, "'):containsi('")

  $.extend($.expr[':'], {'containsi': function(elem, i, match, array){
        return (elem.textContent || elem.innerText || '').toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
    }
  });

  $(".results tbody tr").not(":containsi('" + searchSplit + "')").each(function(e){
    $(this).attr('visible','false');
  });

  $(".results tbody tr:containsi('" + searchSplit + "')").each(function(e){
    $(this).attr('visible','true');
  });

  var jobCount = $('.results tbody tr[visible="true"]').length;
    $('.counter').text(jobCount + ' item');

  if(jobCount == '0') {$('.no-result').show();}
    else {$('.no-result').hide();}
		  });
});
</script>
</head>
<body>
<h3>Welcome to VideoGameSearch</h3>
<% if(session.getAttribute("username") == null) { %>
<h4>Log in below</h4>
<br/>
<form action="login" method="post">
    Username:<input type="text" name="username"/>
    Password:<input type="password" name="password"/>
    <input type="submit" value="login"/>
</form>

<h4>Register for new users</h4>
<br/>
<form action="register" method="post">
    Username:<input type="text" name="username"/>
    Password:<input type="password" name="password"/>
    <input type="submit" value="register"/>
</form>
<% } else { %>
<h4>Logged in as <%= session.getAttribute("username") %> <a>  View specials</a> </h4>
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
            PreparedStatement ps =con.prepareStatement
                             ("select * from game");
            games = ps.executeQuery();
        }
        catch(Exception e){
            e.printStackTrace();
        }
%>
<div class="form-group pull-right">
    <input type="text" class="search form-control" placeholder="What you looking for?">
</div>
<table class="table table-hover table-bordered results">
    <thead>
        <th >Game ID</th>
        <th>Name</th>
        <th>Description</th>
        <th>Console</th>
        <th>Number of players</th>
        <th>Coop</th>
        <th>Genre</th>
        <th>Release Date</th>
        <th>Developer</th>
        <th>Publisher</th>
        <th>Front box art</th>
        <th>Back box art</th>
    </thead>
    <tbody>
            <tr class="warning no-result">
                <td colspan="4"><i class="fa fa-warning"></i> No result</td>
            </tr>
        <% while(games.next()) { %>
            <tr>
                <td scope="row"><%= games.getString("game_id") %></td>
                <td><%= games.getString("game_name") %></td>
                <td><%= games.getString("game_description") %></td>
                <td><%= games.getString("console") %></td>
                <td><%= games.getString("num_players") %></td>
                <td><%= games.getString("coop") %></td>
                <td><%= games.getString("genre") %></td>
                <td><%= games.getString("release_date") %></td>
                <td><%= games.getString("developer") %></td>
                <td><%= games.getString("publisher") %></td>
                <td><img src='<%= games.getString("front_box_art") %>' height="100" width="100"></td>
                <td><img src='<%= games.getString("back_box_art") %>' height="100" width="100"></td>
            </tr>
        <% } %>
    </tbody>
</table>
<% con.close(); %>
</body>
</html>

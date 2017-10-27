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
<%
Connection con = null;
ResultSet specials = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection
                        ("jdbc:mysql://videogamesearch_mysql_1:3306/videogames?autoReconnect=true&useSSL=false","root","password");
            PreparedStatement ps = con.prepareStatement
                             ("select * from game where discount > 0");
            specials = ps.executeQuery();
        }
        catch(Exception e){
            e.printStackTrace();
        }
%>
<hr>
<table id="specials" class="table table-hover table-bordered" cellspacing="0" width="100%">
    <thead>
        <th>Name</th>
        <th>Price</th>
        <th>Discount</th>
        <th>Discounted Price</th>
    </thead>
    <tbody>
        <% while(specials.next()) { %>
                <tr>
                    <td><%= specials.getString("game_name") %></td>
                    <td>$<%= specials.getString("price") %></td>
                    <td><%= specials.getString("discount") %>%</td>
                    <td>$<%= Math.round(Float.parseFloat(specials.getString("price")) * (100-Float.parseFloat(specials.getString("discount"))))/100.0 %></td>
                </tr>
        <% }%>
    </tbody>
</table>
<% con.close(); %>
</body>
</html>
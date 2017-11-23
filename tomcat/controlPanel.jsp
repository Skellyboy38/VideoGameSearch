<%@page import="java.util.ArrayList, src.GameModel, src.UserModel, src.LoginModel"%><html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="main.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script>
$(document).ready(function() {
  $('#accounts').DataTable();
  $('#logins').DataTable();
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
    <h3>Login History</h3>
    <% ArrayList<LoginModel> logins = (ArrayList<LoginModel>)session.getAttribute("logins"); %>
    <hr>
    <% if((int)session.getAttribute("is_admin") == 1) { %>
        <table id="logins" class="table table-hover table-bordered" cellspacing="0" width="100%">
        <thead>
            <th>Username</th>
            <th>Date</th>
        </thead>
        <tbody>
            <% for(LoginModel login : logins) { %>
                    <tr>
                        <td><%= login.userId %></td>
                        <td><%= login.date %></td>
                    </tr>
            <% }%>
        </tbody>
        </table>
    <% } %>
    <br><br><br>
    <h3>Purchase History</h3>
    <hr>
    <br><br><br>
    <h3>Inventory</h3>
    <hr>
    <br><br><br>
    <h3>Block Accounts</h3>
    <% ArrayList<UserModel> users = (ArrayList<UserModel>)session.getAttribute("users"); %>
    <hr>
    <% if((int)session.getAttribute("is_admin") == 1) { %>
        <table id="accounts" class="table table-hover table-bordered" cellspacing="0" width="100%">
        <thead>
            <th>Username</th>
            <th>Blocked</th>
            <th>Toggle Block</th>
        </thead>
        <tbody>
            <% for(UserModel user : users) { %>
                    <tr>
                        <td><%= user.userId %></td>
                        <td><%= user.isBlocked %></td>
                        <td>
                            <form action="block_user" method="post">
                                <input type="hidden" name="username" value="<%= user.userId %>" />
                                <input type="submit" value="toggle" />
                            </form>
                        </td>
                    </tr>
            <% }%>
        </tbody>
        </table>
    <% } %>
<% } %>
</body>
</html>
<%@page import="src.GameModel, java.util.ArrayList"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="main.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
</head>
<body>
<h3 class="centercustom">Retrieve Password</h3><br>
<hr>
<h4>Enter username below</h4>
<br/>
<form action="forgot_password" method="post">
    Username:<input type="text" name="username"/>
    Email:<input type="text" name="email"/>
    <input type="submit" value="Send"/>
</form>

<form action="home" method="post">
    <input type="submit" value="home">
</form>

</body>
</html>

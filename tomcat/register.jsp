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

<form action="home" method="get">
    <input type="submit" value="home">
</form>
<h3>Register below</h3>
<br/>
<form action="register" method="post">
    <table>
        <tr>
            <td><h4>Credentials:</h4></td>
        </tr>
        <tr>
            <td>Username:</td>
            <td><input type="text" name="username"/></td>
            <td>Password:</td>
            <td><input type="password" name="password"/></td>
        </tr>
        <tr>
            <td><hr></td>
            <td><hr></td>
            <td><hr></td>
            <td><hr></td>
        </tr>
        <tr>
            <td><h4>Personal Info:</h4></td>
        </tr>
        <tr>
            <td>First Name:</td>
            <td><input type="text" name="firstname"/></td>
            <td>Last Name:</td>
            <td><input type="text" name="lastname"/></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><input type="text" name="email"/></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Address #1:</td>
            <td><input type="text" name="address1"/></td>
            <td>Address #2:</td>
            <td><input type="text" name="address2"/></td>
        </tr>
        <tr>
            <td>City:</td>
            <td><input type="text" name="city"/></td>
            <td>State:</td>
            <td><input type="text" name="state"/></td>
        </tr>
        <tr>
            <td>Zip Code:</td>
            <td><input type="text" name="zip"/></td>
            <td>Country:</td>
            <td><input type="text" name="country"/></td>
        </tr>
        <tr>
            <td><hr></td>
            <td><hr></td>
            <td><hr></td>
            <td><hr></td>
        </tr>
        <tr>
            <td><h4>Credit Card Info:</h4></td>
        </tr>
        <tr>
            <td>Type:</td>
            <td><input type="text" name="credit_card_type"/></td>
        </tr>
        <tr>
            <td>Number:</td>
            <td><input type="text" name="credit_card_number"/></td>
        </tr>
        <tr>
            <td>CVV:</td>
            <td><input type="text" name="credit_card_cvv"/></td>
        </tr>
        <tr>
            <td>Expiration Date:</td>
            <td><input type="text" name="credit_card_expiry"/></td>
        </tr>
    </table>
    <hr>
    <input type="submit" value="register">
</form>

<% if(session.getAttribute("registration_error") != null) { %>
    <h5><%= session.getAttribute("registration_error") %></h5>
<% } %>
</body>
</html>

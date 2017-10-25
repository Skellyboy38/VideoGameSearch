<h3>Login form</h3>
<%
String profile_msg=(String)request.getAttribute("profile_msg");
if(profile_msg != null) {
    out.print(profile_msg);
}
String login_msg=(String)request.getAttribute("login_msg");
if(login_msg != null) {
    out.print(login_msg);
}
%>
<br/>
<form action="login.jsp" method="post">
Username:<input type="text" name="username"/>
Password:<input type="password" name="password"/>
<input type="submit" value="login"/>
</form>
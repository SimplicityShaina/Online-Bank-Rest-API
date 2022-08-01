<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>ACCOUNT RECORDS</title>
<link rel="icon" href="https://pngimg.com/uploads/bank/bank_PNG26.png">
<%
String id = request.getParameter("accno");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "bank1";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Account Records</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1"/>
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Account Number</b></td>
<td><b>Account Balance</b></td>
<td><b>Account Type</b></td>
<td><b>Account Holder Name</b></td>
<td><b>Mobile Number</b></td>
<td><b>Username</b></td>
<td><b>Password</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost/bank1?serverTimezone=UTC","root","root");
statement=connection.createStatement();
String sql ="SELECT * FROM account";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("accno") %></td>
<td><%=resultSet.getString("accBalance") %></td>
<td><%=resultSet.getString("accType") %></td>
<td><%=resultSet.getString("accholdername") %></td>
<td><%=resultSet.getString("mobile") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("password") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<html>
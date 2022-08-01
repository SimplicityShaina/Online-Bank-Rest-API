<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>TRANSACTION RECORDS</title>
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
<h2 align="center"><font><strong>Transaction Records</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>ID</b></td>
<td><b>Total Balance</b></td>
<td><b>Transaction</b></td>
<td><b>From Account</b></td>
<td><b>To Account</b></td>
<td><b>Date Transaction</b></td>
<td><b>Deposit</b></td>
<td><b>Withdraw</b></td>

</tr>
<%
try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost/bank1?serverTimezone=UTC","root","root");
statement=connection.createStatement();
String sql ="SELECT * FROM transaction";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("amounttx") %></td>
<td><%=resultSet.getString("comments") %></td>
<td><%=resultSet.getString("fromAccount") %></td>
<td><%=resultSet.getString("toAccount") %></td>
<td><%=resultSet.getString("txdate") %></td>
<td><%=resultSet.getString("depositamt") %></td>
<td><%=resultSet.getString("withdrawamt") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<html>
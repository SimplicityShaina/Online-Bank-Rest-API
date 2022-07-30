<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VIEW ACCOUNT</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="form-group col-12 p-0">
             <%
                Connection con;
                PreparedStatement pst;
                ResultSet rs;
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/bank1?serverTimezone=UTC","root","root");
                String accno = request.getParameter("accno");
                 out.print("<h3>Account Stored</h3>");
                if (accno == null || accno.isEmpty()) 
                {
                  pst = con.prepareStatement("select * from account");
                  rs = pst.executeQuery();
                   
                 while(rs.next())
                 {    
                     out.print("<Table border=1 bgcolor=yellow cellpadding=2 cellspacing=2>");
                     out.print("<TR>");
                     out.print("<TD>" + rs.getString("accno") + "<TD>");
                     out.print("<TD>" + rs.getString("accType") + "<TD>");
                     out.print("<TD>" + rs.getString("accholdername") + "<TD>");
                     out.print("<TD>" + rs.getString("mobile") + "<TD>");
                     out.print("<TD>" + rs.getString("opendate") + "<TD>");
                     out.print("<TD>" + rs.getString("password") + "<TD>");
                     out.print("<TD>" + rs.getString("username") + "<TD>");
                     out.print("</TR>");
                      out.print("</Table>");
                 }  
                }
               else {
                pst = con.prepareStatement("select * from bank1 where accno =?");
                pst.setString(1, accno);
                rs = pst.executeQuery();
                 while(rs.next())
                 {   
                     out.print("<Table border=1 bgcolor=yellow>");
                     out.print("<TR>");
                     out.print("<TD>" + rs.getString("accno") + "<TD>");
                     out.print("<TD>" + rs.getString("accType") + "<TD>");
                     out.print("<TD>" + rs.getString("accholdername") + "<TD>");
                     out.print("<TD>" + rs.getString("mobile") + "<TD>");
                     out.print("<TD>" + rs.getString("opendate") + "<TD>");
                     out.print("<TD>" + rs.getString("password") + "<TD>");
                     out.print("<TD>" + rs.getString("username") + "<TD>");
                     out.print("</TR>");
                      out.print("</Table>");
                 }
                }
              %>                   
 
        <div class="container">
             <div class="form-group col-6 p-0">
                 <form id="form" method="post" action="/accountDetails" class="form-horizontal">
                       <div class="form-group col-md-6"> 
                        <div><input type="button" value="Black" onclick="goToBackWelcome()" style="color: red;"></div>
                        </div>

				</form>
			</div>
			

	<script type="text/javascript">
		function goToBackWelcome(){
			window.location.href="/welcome";
		}
	</script>
              
                        </div>
                     
                 
                 
           
         </div> 
         </div>
    </body>
</html>
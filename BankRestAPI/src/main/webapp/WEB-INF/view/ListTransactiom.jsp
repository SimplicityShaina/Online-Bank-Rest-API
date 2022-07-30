<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Account</title>
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
                String transac = request.getParameter("transaction");
                 out.print("<h3>Transaction Details</h3>");
                if (transac == null || transac.isEmpty()) 
                {
                  pst = con.prepareStatement("select * from transaction");
                  rs = pst.executeQuery();
                  
                  
                   
                 while(rs.next())
                 {    
                     out.print("<Table border=1 bgcolor=yellow cellpadding=2 cellspacing=2>");
                     out.print("<TR>");
                     out.print("<TD>" + rs.getString("comments") + "<TD>");
                     out.print("<TD>" + rs.getString("fromAccount") + "<TD>");
                     out.print("<TD>" + rs.getString("toAccount") + "<TD>");
                     out.print("<TD>" + rs.getString("txdate") + "<TD>");
                     out.print("</TR>");
                      out.print("</Table>");
                 }  
                }
              %>                   
 
        <div class="container">
             <div class="form-group col-6 p-0">
                 <form id="form" method="post" action="/accountDetails" class="form-horizontal">
                       <div class="form-group col-md-6"> 
                           <label>label</label>
                        </div>
                      <div class="form-group col-md-6" align="center"> 

                        <<p class="w3-medium"> <a href="/listAccountPage" target="_blank" class="w3-hover-text-green">Yes</a></p>
              
                        </div>
                     
                 </form>
                 
             </div>
         </div>  
         </div> 
         </div>
    </body>
</html>
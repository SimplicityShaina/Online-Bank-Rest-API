<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TRANSACTION RECORDS</title>
        <link rel="icon" href="https://pngimg.com/uploads/bank/bank_PNG26.png">
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
                String fromAccount = request.getParameter("fromAccount");

                 %>
                 <h2 align="center"><font><strong>Transaction Records</strong></font></h2>
                 <table align="center" cellpadding="5" cellspacing="5" border="1">
                 <tr>

                 </tr>
                 <tr bgcolor="#A52A2A">
                 <td><b>From Account</b></td>
                 <td><b>To Account</b></td>
                 <td><b>Date Transaction</b></td>
                 <td><b>Total Balance</b></td>
                 <td><b>Transaction</b></td>
                 <td><b>Deposit</b></td>
                 <td><b>Withdraw</b></td>

                 </tr>
                 <%
                if (fromAccount == null || fromAccount.isEmpty()) 
                {
                  pst = con.prepareStatement("select * from transaction");
                  rs = pst.executeQuery();
                   
                  
                }
               else {
                pst = con.prepareStatement("select * from transaction where fromAccount =?");
                pst.setString(1, fromAccount);
                rs = pst.executeQuery();
                 while(rs.next())
                 {   
                	 %>
                	 <tr bgcolor="#DEB887">
                	 <td><%=rs.getString("fromAccount") %></td>
                	 <td><%=rs.getString("toAccount") %></td>
                	 <td><%=rs.getString("txdate") %></td>
                	 <td><%=rs.getString("amounttx") %></td>
                	 <td><%=rs.getString("comments") %></td>
                	 <td><%=rs.getString("depositamt") %></td>
                	 <td><%=rs.getString("withdrawamt") %></td>

                	 </tr>

                	 <% 
                     
                 }
                }
              %>                   
 
        <div class="container1">
             <div class="form-group col-6 p-0">
                 <form id="form" method="get" action="/listTransaction" class="form-horizontal">
                       <div class="form-group col-md-6"> 
                          <label>Account Number</label>
     					  <input type="text" name="fromAccount" class="form-control" id="accno" placeholder="Account Number">
                        </div>
                      <div class="form-group col-md-6" align="center">
 
                        <Button class="btn btn-success" style="width: 80px;">Submit</Button>
              
                        </div>
                    
                 </form> 
             </div>
         </div>  
         </div> 
         </div>
    </body>
</html>
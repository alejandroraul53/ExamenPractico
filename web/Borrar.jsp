<%@page import="javax.crypto.ExemptionMechanismException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
  


        <%
                    String id=request.getParameter("id");
                    
                    Connection conex=null;
                    Statement sta=null;
                    ResultSet rs=null;
                    try{
                    Class.forName("com.mysql.jdbc.Driver");
                    conex= DriverManager.getConnection("jdbc:mysql://localhost:3306/examenpractico", "root", "12345");
                    System.out.println("conexion exitosa");
                    sta=conex.createStatement();
                    sta.executeUpdate("delete from productos where idproducto='"+id+"'");
                    request.getRequestDispatcher("Borrarlista.jsp").forward(request, response);
                    sta.close();
                    rs.close();
                    conex.close();
                    
                    }
                    catch(Exception e){
                      System.out.println(e);
                       }
                    
                %>
  </body>
</html>

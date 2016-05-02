<%-- 
    Document   : key123
    Created on : Feb 16, 2013, 4:26:47 PM
    Author     : Arun
--%>
<%@page import="javax.swing.filechooser.FileNameExtensionFilter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.DbConnector"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpSession;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><p><p><p><center><h1>Secure Outsourced Attribute-Based Signatures</h1></center><form action="content.jsp">
        <%  String s1="";
        String filename="";
                                    String id=request.getParameter("filename");
                                    int id1=Integer.parseInt(id);
                                    System.out.println("FILE NAME: "+id);
                                    session.setAttribute("id1",id);
                               Connection  conn = DbConnector.getConnection();
                                String sql="select * from upload where id=?";
                                System.out.println(sql);
                                    
                                             PreparedStatement   pst = conn.prepareStatement(sql);
                                             pst.setInt(1,id1);
                                                ResultSet rs = pst.executeQuery();
                                                 while (rs.next()){
                                                    s1=rs.getString("key_");
                                                    filename=rs.getString("filename");
                                                 }
                                                System.out.println("fn : "+filename);                
                                                    %>
                                                    
                                                    
                                                    <table><tr>
                                                            <td><input type="text" name="filename" value=<%=filename%> </tr>
                                                           <tr> <td><input type="text" name="key" value=<%=s1%>></td>  </tr>
                                                           <tr> <td><input type="submit" name="submit" value="submit"></td> </tr> 
                                                    </table>                                  
        </form>                                                
    </body>
</html>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <title>Secure Outsourced Attribute-Based Signatures</title>
        <!--		<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css" />-->
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body><p><p><p><center><h1>Secure Outsourced Attribute-Based Signatures</h1></center>
        <div id="wrapper">
            <div id="header">
                <div id="logo">
                    <h1></h1>
                </div>
                <div id="menu">
                    <ul>
                                            
                        <li><a href="#">verifying-CSP</a></li>
                        <li><a href="index.jsp">LogOut</a></li>
                    </ul>
                    <br class="clearfix" />
                </div>
            </div>
            <div id="inner">
                <div id="splash">
                    <span style="font-size: 22px;">verifying-CSP</span>
                    <%if (request.getParameter("msg") != null) {
                            out.println(request.getParameter("msg"));
                        }%>
                    <form method="post" action="key123.jsp">
                        <table width="90%">
                            <tr style="height: 40px;"><td>User id:</td>
                                <td>
                                    <select id="keys" name="filename" onchange="loadXMLDoc()">
                                        <option value="-1">-Select-</option>

                                        <% String ss=null,s1=null,key_="";
                                            String sql = "select * from upload";
                                            System.out.println(";;;;;;;;;;;;;;;" + sql);
                                            PreparedStatement pst = null;
                                            Connection conn = null;
                                            try {
                                                conn = DbConnector.getConnection();
                                                pst = conn.prepareStatement(sql);
                                                ResultSet rs = pst.executeQuery();
                                                while (rs.next()) {
			key_=rs.getString("key_");%>
                                        <option value="<%=rs.getString(1)%>"><%=rs.getString("filename")%></option>
                                        <%}
                                            } catch (Exception e) {
                                            }%>
                                    </select>  
                                </td></tr>
                                   
                                    <tr><td>Key</td><td><input type="submit" value="Submit"/></td></tr>
                        </table>
                    </form>	

                </div>

            </div>

        </div>

    </body>
</html>
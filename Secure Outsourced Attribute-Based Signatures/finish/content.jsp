<%@page import="com.util.Utilities"%>
<%@page import="java.sql.*"%>
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
                        <li class="first current_page_item"><a href="consumerHome.jsp">Back </a></li>                       
                        <li><a href="index.jsp">LogOut</a></li>
                    </ul>
                    <br class="clearfix" />
                </div>
            </div>
            <div id="inner">
                <div id="splash">
                    <span style="font-size: 22px;">Data:</span>
                    
                    <form method="post" action="content.jsp">
                        <table width="90%">
                            <tr style="height: 40px;">
                                <td>
								<%!String data="";%>
                                <%
								String name=session.getAttribute("id1").toString();
									
								Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hasbe","root","root");
	   Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select AES_DECRYPT(data_,'key') from upload where id="+name);
		if(rs.next())
		data=rs.getString(1);						%>
                                </td></tr>
												<tr><td> <textarea rows="10" cols="50">  <%=data%>
                                                     </textarea>
                                                 
                                                 
                                                 
                                                 
                                                 
                                                 
                                                 
                                                 
                                                 </td></tr>
                        </table>
                                    
                    </form>	

                </div>

            </div>

        </div>

    </body>
</html>
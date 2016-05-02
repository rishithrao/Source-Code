<%@page import="java.sql.*"%>
<%
String id="";
try{
Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hasbe","root","root");
	   Statement st=con.createStatement();
	   Statement st1=con.createStatement();
		ResultSet rs=st.executeQuery("select max(id) from upload");
		if(rs.next())
	{
		id=rs.getString(1);	
	}
	int id1=Integer.parseInt(id)+1;
	System.out.println("id : "+id1);
String data=request.getParameter("block1");
String ui=session.getAttribute("userid").toString();
System.out.println("uid : "+ui);
String key=request.getParameter("secret");
System.out.println("key : "+key);
String fn=request.getParameter("fileName");
System.out.println("debug--------------------------1");

int x=st1.executeUpdate("insert into upload(id,userid,data_,key_,filename) values("+id1+",'"+ui+"',AES_ENCRYPT('"+data+"','key'),"+key+",'"+fn+"')");
System.out.println("debug--------------------------2");
if(x==1)
response.sendRedirect("dataOwnerHome.jsp?msg=File Uploaded");
}
catch(Exception e)
{
	e.printStackTrace();
	response.sendRedirect("dataOwnerHome.jsp?msg=File Upload failed");
}
%>
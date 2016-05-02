     <%@page import="java.sql.*"%>
	 
	 <%
       String key=request.getParaameter("publickey");
	   String att1=request.getParaameter("att1");
	   String att2=request.getParameter("att2");
	   String master=request.getParameter("master");
	   String secret=request.getParameter("secret");
	   String block1=request.getParameter("block1");
	Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Secure Outsourced Attribute-Based Signatures","root","root");
	   Statement st=con.createStatement();
	   int i=st.executeUpdate("inser into upload");
	   %>
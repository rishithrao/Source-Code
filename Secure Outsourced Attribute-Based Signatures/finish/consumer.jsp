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
                       <li class="first current_page_item"><a href="#">Welcome Domain Authority! </a></li>                       
                       <li class="first current_page_item"><a href="domAuthHome.jsp">Signing-CSP</a></li>                       
                        <li><a href="consumer.jsp">verifying-CSP</a></li>
                        <li><a href="index.jsp">LogOut</a></li>
                    </ul>
                    <br class="clearfix" />
                </div>
            </div>
            <div id="inner">
                <div id="splash">
                    <span style="font-size: 22px;">verifying-CSP Registration:</span>
                        <%if (request.getParameter("msg") != null) {
                                out.println(request.getParameter("msg"));
                            }%>
                        <form method="post" action="Consumer">
                            <table width="90%">
                            <tr style="height: 40px;"><td>User id:</td><td><input type="text" size="30" style="height: 25px;" id="_name" name="_name"/></td></tr>
                                <tr style="height: 40px;"><td>Password:</td><td><input type="text" size="30" style="height: 25px;" id="_password" name="_password"/></td></tr>
                                <tr style="height: 40px;"><td>Address:</td><td><input type="text" size="30" style="height: 25px;" id="add" name="add" />
                                       </td></tr>
                                <tr style="height: 40px;"><td>Age:</td><td><input type="text" size="30" style="height: 25px;" id="_age" name="_age"/></td></tr>
                                <tr style="height: 40px;"><td>Phone:</td><td><input type="text" size="30" style="height: 25px;" id="_phone" name="_phone"/></td></tr>
                                <tr style="height: 40px;"><td>Email-Id:</td><td><input type="text" size="30" style="height: 25px;" id="_emailid" name="_emailid"/></td></tr>                                
                                <tr style="height: 40px;"><td></td><td><input type="submit" value="Submit" style="height: 25px;width: 90px;"/></td></tr>
                          
                            </table>
                        </form>	
                       
                </div>
            
            </div>

        </div>

    </body>
</html>
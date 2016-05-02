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
                      <li class="first current_page_item"><a href="index.jsp">Home</a></li>
                        <li><a href="trustedAuthLogin.jsp">Trusted Auth</a></li>
                        <li><a href="domainLogin.jsp">Domain Auth</a></li>
                       <li><a href="ownerLogin.jsp">Signing-CSP</a></li>
                        <li><a href="consumerLogin.jsp">verifying-CSP</a></li>
                    </ul>
                    <br class="clearfix" />
                </div>
            </div>
            <div id="inner">
                <%if (request.getParameter("msg") != null) {
                                out.println(request.getParameter("msg"));
                            }%>
                <div id="splash">
                    <img src="images/homo.png" width="900" height="260" alt="" class="image" />
                </div>
            
            </div>

        </div>

    </body>
</html>
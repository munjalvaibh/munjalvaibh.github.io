<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Library Management</title>
        <link rel="stylesheet" type="text/css" href="loginstyle.css">
    </head>
    <%@ include file = "header.html" %>
    <body>
        
        
        <div class="container">
            <img src="man.jpg">
            <form name="login" method="post" action="validatelogin.jsp">
                <div class="form-input">
                    <input type="text" name="username" id="text1" placeholder="Enter Userame"/>
                </div>
                <div class="form-input">
                    <input type="password" name="password" id="text2" placeholder="Enter Password"/>
                </div>
                <input type="submit" name="submit" value="Login" class="btn-login"/>
            </form>
        </div>
        
    </body>
    <%@ include file = "footer.html" %>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Librarian</title>
        <link rel="stylesheet" type="text/css" href="returnstyle.css">
    </head>
    <%@ include file = "headeradmin.html" %>
    <body>
        <div id="nav">
            <b>Remove Librarian</b><br>
                <form name="remove" action="removelibsql.jsp">
            <input type="text" placeholder="Email Id" name="id" ><br>
            <input type="submit" value="Remove" name="Remove" >
                </form>
        </div>
    </body>
    <%@ include file = "footer.html" %>
</html>

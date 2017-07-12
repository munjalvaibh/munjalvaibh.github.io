<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Return Book</title>
        <link rel="stylesheet" type="text/css" href="returnstyle.css">
    </head>
    <%@ include file = "headerlib.html" %>
    <body>
        <div id="nav">
            <b>Return Book</b><br>
            <input type="text" placeholder="Book id" name="id" ><br>
            <input type="submit" value="Return" name="Return" >
        </div>
    </body>
    <%@ include file = "footer.html" %>
</html>

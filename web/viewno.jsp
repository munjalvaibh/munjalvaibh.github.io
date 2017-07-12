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
            <form name="viewno" method="post" action="viewbookno.jsp">
            <b>Return Book</b><br>
            <input type="text" placeholder="Book Name" name="name" ><br>
            <input type="submit" value="View No." name="view" >
            </form>
        </div>
    </body>
    <%@ include file = "footer.html" %>
</html>

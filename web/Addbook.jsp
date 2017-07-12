<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book</title>
        <link rel="stylesheet" type="text/css" href="addbookstyle.css">
    </head>
    <%@ include file = "headerlib.html" %>
    <body>
        <div id="nav">
            <b>Add Book</b><br>
            <form action="addbooksql.jsp">
            <input type="text" placeholder="Book Name" name="bkname"><br>
            <input type="text" placeholder="Genre" name="genre" ><br>
            <input type="submit" value="Add" name="add" >
            </form>
        </div>
    </body>
    <%@ include file = "footer.html" %>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Issue Book</title>
        <link rel="stylesheet" type="text/css" href="issuebookstyle.css">
    </head>
    <%@ include file = "headerlib.html" %>
    <body>
        <div id="nav">
            <b>Issue Book</b><br>
            <form name="issue" action="issuesql.jsp" method="post">
            <input type="text" placeholder="Book id" name="id" ><br>
            Issue Date:  <input type="date" name="idate"><br>
            Return Date:  <input type="date" name="rdate"><br>
            <input type="submit" value="Issue" name="issue" >
            </form>
        </div>
    </body>
    <%@ include file = "footer.html" %>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" type="text/css" href="admin.css">
        <script>
            function addfunc(){
                window.open("addlib.jsp","_self");
            }
            function logoutfunc(){
                window.open("index.jsp","_self");
            }
            function removefunc(){
                window.open("removelib.jsp","_self");
            }
        </script>
</head>
     <%@ include file = "headeradmin.html" %>
    <body>
        <h2> Hello Administrator,</h2>
        <button id="add" type="button" onclick="addfunc()">Add Librarian</button>
        <button id="remove" type="button" onclick="removefunc()">Remove Librarian</button>
        <button id="logout" type="button" onclick="logoutfunc()">Logout</button>
    </body>
    <%@ include file = "footer.html" %>
</html>

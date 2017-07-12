<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Librarian</title>
        <link rel="stylesheet" type="text/css" href="librarianstyle.css">
        <script>
            function addbook(){
                window.open("Addbook.jsp","_self");
            }
            function logoutfunc(){
                window.open("index.jsp","_self");
            }
            function viewfunc(){
                window.open("viewbook.jsp","_self");
            }
            function bookno(){
                window.open("viewno.jsp","_self");
            }
            function removebook(){
                window.open("removebook.jsp","_self");
            }
            function issuefunc(){
                window.open("issue.jsp","_self");
            }
            function viewissuefunc(){
                window.open("viewissued.jsp","_self");
            }
            function viewissuefunc(){
                window.open("viewissued.jsp","_self");
            }
        </script>
    </head>
    <%@ include file = "headerlib.html" %>
    <body>
        <div id="nav">
            <button id="view" type="button" onclick="viewfunc()">View Books</button><br>
            <button id="add" type="button" onclick="addbook()" >Add Book</button><br>
            <button id="issue" type="button" onclick="issuefunc()">Issue Books</button><br>
            <button id="issued_book" type="button" onclick="viewissuefunc()">Issued Books</button><br>
            <button id="bokkno" type="button" onclick="bookno()">View Book No.</button><br>
            <button id="removebookl" type="button" onclick="removebook()">Remove Book</button><br>
        </div>
        <button id="logout" type="button" onclick="logoutfunc()">Logout</button><br>
    <%@ include file = "footer.html" %>
    </body>
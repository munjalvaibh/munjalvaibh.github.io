<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Employee</title>
        <link rel="stylesheet" type="text/css" href="addlibstyle.css">
        <script>
            function verify(){
            if(document.getElementById("text1").value === ""|| document.getElementById("text2").value === ""||document.getElementById("text3").value === ""||document.getElementById("text4").value === ""||document.getElementById("text5").value === ""||document.getElementById("text6").value === "" )
                alert( "All fields are required" );
            else{
                if(  document.getElementById("text5").value === document.getElementById("text6).value)
                    alert("Password and Re-Entered Password must be same");
            }}
        </script>
    </head>
    <%@ include file = "headeradmin.html" %>
    <body>
        <div id="nav">
            <b>Add Librarian</b><br>
            <form name="addlib" method="post" action="addlibsql.jsp" >
                <input type="text" placeholder="Last Name" name="lname" id="text1" >
                <input type="text" placeholder="First Name" name="fname" id="text2"><br>
                <input type="text" placeholder="Email" name="email" id="text3" ><br>
                <input type="text" placeholder="Mobile No." name="mob" id="text4" ><br>
                <input type="Password" placeholder="Password" name="pass" id="text5" >
                <input type="Password" placeholder="Re-Enter" name="rpass" id="text6" ><br>
                <input type="submit" value="Add" name="add"  >
            </form>
        </div>
    </body>
    <%@ include file = "footer.html" %>
</html>

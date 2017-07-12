<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Books</title>
        <link rel="stylesheet" type="text/css" href="viewbookstyle.css">
    </head>
    <%@include file="headerlib.html" %>
    <body>
        <%@ page import ="java.sql.*" %>
        <%
            try{
                Statement stmt;
                String URL = "jdbc:mysql://localhost/libman";
                String USERNAME = "root";
                String PASSWORD = "";
                String tableName = "books";
                Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                stmt = conn.createStatement();
                stmt.executeQuery("SELECT * FROM " + tableName);                        
                ResultSet rs = stmt.getResultSet();%>
                <table>
                    <tr  style="background-color: #1E90FF; color: black;">
                        <td>Book Id</td>
                        <td>Book Name</td>
                        <td>Genre</td>
                    </tr>
                <%while(rs.next()){%>
                    
                    <tr>
                        <td><%=rs.getInt("id") %></td>
                        <td><%=rs.getString("Book_Name") %></td>
                        <td><%=rs.getString("Genre") %></td>
                    </tr>
                    
                <%
                }%>
                </table>
                <%}
           catch(Exception e){       
               out.println(e.getMessage());       
           }      
        %>
        <%@include file="footer.html" %>
    </body>
    
</html>
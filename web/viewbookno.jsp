<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Book No.</title>
    </head>
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
                ResultSet rs = stmt.getResultSet();
                String name = request.getParameter("name");
                int count=0;
                while(rs.next()){
                int n= rs.getInt("id");
                String bname= rs.getString("Book_Name");
                if(name.equals(bname)){ 
                    count++;
                    out.print("Book ID = "+n);
                    break;
                }
                }
                if(count==0){out.print("Book not found");%>
                <br><a href="viewno.jsp">Search Again</a>
        <% }
                }
                catch(Exception e){       
                    out.println(e.getMessage());       
                }      
        %>
        <br><a href="librarian.jsp">Re-Direct to Librarian Section</a>
        </body>
    
</html>
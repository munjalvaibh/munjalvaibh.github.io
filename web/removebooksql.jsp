<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validation Page</title>
    </head>
    <body>
        <%@ page import ="java.sql.*" %>
        <%
            String st="";
            try{
                Statement stmt;
                String URL = "jdbc:mysql://localhost/libman";
                String USERNAME = "root";
                String PASSWORD = "";
                String tableName = "books";    
                String id = request.getParameter("id");
                if(id.equals("")){out.print("Book id is required");%>
                <br><a href="removebook.jsp">Plz remove again</a>
                <%}else{
                Statement stm = null;
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                stm = conn.createStatement();
                st = "DELETE FROM books WHERE id = '"+id+"' ";
                stm.executeUpdate(st);
                conn.close();
                out.println("book deleted if such book id exist");}
                }
                    catch(Exception e){       
                    out.println(e.getMessage());       
               }
                
                %>
            <br><a href="librarian.jsp">Re-Direct to Librarian Section</a>
    </body>
</html>

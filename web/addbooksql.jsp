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
            try{
                Statement stmt;
                String URL = "jdbc:mysql://localhost/libman";
                String USERNAME = "root";
                String PASSWORD = "";
                String tableName = "books";    
                String bname = request.getParameter("bkname");
                String genre = request.getParameter("genre");
                if(bname.equals("") || genre.equals(""))
                {  %>All fields are required<br>
                <a href="Addbook.jsp">Please add again</a>   <%} else{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                stmt = conn.createStatement();
                stmt.executeQuery("SELECT * FROM " + tableName);                        
                ResultSet rs = stmt.getResultSet();
                int count=1;
                while(rs.next()){count++;}
                PreparedStatement ps = conn.prepareStatement("insert into books values(?,?,?)");
                ps.setObject(1, count);
                ps.setString(2, bname);
                ps.setString(3, genre);
                ps.executeUpdate();
                out.println("Successfully Added");
                }}
                    catch(Exception e){       
                    out.println(e.getMessage());       
               }
        %>
        <br><a href="librarian.jsp">Re-Direct to Librarian Section</a>
    </body>
</html>

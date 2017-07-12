
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validation Page</title>
    </head>
    <body>
        <%@ page import ="java.sql.*" %>
        <%@ page import ="java.util.Date" %>
        <%@ page import ="java.text.*" %>
        <%
            try{
                Statement stmt;
                String URL = "jdbc:mysql://localhost/libman";
                String USERNAME = "root";
                String PASSWORD = "";
                String tableName = "books";    
                String id = request.getParameter("id");
                String idate = request.getParameter("idate");
                String rdate = request.getParameter("rdate");
                if(id.equals("")||idate.equals("")||rdate.equals("")){out.println("All fields are required ");%>
                <br><a href="issue.jsp">Plz Issue Again</a>
                <%}else{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                PreparedStatement pstm = conn.prepareStatement("insert into issued_bk values(?,?,?)");
                pstm.setString(1, id);
                pstm.setString(2, idate);
                pstm.setString(3, rdate);
                pstm.executeUpdate();
                out.print("Book issued");
                }}
                    catch(Exception e){       
                    out.println(e.getMessage());       
               }
        %>
        <br><a href="librarian.jsp">Re-Direct to Librarian Section</a>
    </body>
</html>

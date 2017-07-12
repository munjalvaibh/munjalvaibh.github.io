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
                String tableName = "login";    
                String id = request.getParameter("id");
                if(id.equals("")){out.print("E-mail is required");%>
                <br><a href="removelib.jsp">Plz remove again</a>
                <%}else{
                String post = "lib";
                Statement stm = null;
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                stm = conn.createStatement();
                st = "DELETE FROM login WHERE Email = '"+id+"' ";
                stm.executeUpdate(st);
                conn.close();
                out.println("record deleted");
                }}
                    catch(Exception e){       
                    out.println(e.getMessage());       
               }
                
                %>
            <br><a href="Admin_section.jsp">Re-Direct to Admin Section</a>
    </body>
</html>

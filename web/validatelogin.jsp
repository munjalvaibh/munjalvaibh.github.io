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
                String tableName = "login";
                String username = request.getParameter("username");   
                String password = request.getParameter("password");
                if(username.equals("") || password.equals("")){out.print("username/password is reqired");}
                else{
                Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                stmt = conn.createStatement();
                stmt.executeQuery("SELECT * FROM " + tableName);                        
                ResultSet rs = stmt.getResultSet();
                int count=0;
                while(rs.next()){
                String user = rs.getString(2);
                String pass = rs.getString(5);
                String post = rs.getString(6);
                    if(username.equals(user)){
                        count++;
                        if(pass.equals(password))
                        {
                            if(post.equals("admin")){
                            response.sendRedirect("Admin_section.jsp"); 
                            break;
                        }
                        else{
                            response.sendRedirect("librarian.jsp");
                        }
                    }
                    else{
                        out.println("Username/Password is incorrect");
                        break;
                    }
                }
                
                
           }
                if(count==0){out.println("Username not registerd");}
        }}
           catch(Exception e){       
               out.println(e.getMessage());       
           }      
        %>
        <br><a href="index.jsp">Please Login Again</a>
    </body>
</html>
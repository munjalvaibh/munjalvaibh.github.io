<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validation Page</title>
    </head>
    
        <%@ page import ="java.sql.*" %>
        <%
            try{
                Statement stmt;
                String URL = "jdbc:mysql://localhost/libman";
                String USERNAME = "root";
                String PASSWORD = "";
                String tableName = "login";    
                String fname = request.getParameter("fname");
                String lname = request.getParameter("lname");
                String email = request.getParameter("email");
                String mob = request.getParameter("mob");
                String pwd = request.getParameter("pass");
                String rpwd = request.getParameter("rpass");
                if(fname.equals("") || lname.equals("")|| email.equals("")|| mob.equals("")|| pwd.equals("") || rpwd.equals(""))
                {  %>All fields are required<br>
                <a href="addlib.jsp">Please add again</a>   <%} else{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                stmt = conn.createStatement();
                stmt.executeQuery("SELECT * FROM " + tableName);                        
                ResultSet rs = stmt.getResultSet();
                int count=0;
                if(pwd.equals(rpwd)){
                while(rs.next()){
                String mail = rs.getString(3);
                if(mail.equals(email)){
                    count++;}}
                if(count!=0){ %>
                    Email Id is already registred<br>
                    <a href="addlib.jsp">Please add again</a>   
                <%}
                    else{
                        String post = "lib";
                        PreparedStatement ps = conn.prepareStatement("insert into login values(?,?,?,?,?,?)");
                        ps.setString(1, lname);
                        ps.setString(2, fname);
                        ps.setString(3, email);
                        ps.setString(4, mob);
                        ps.setString(5, pwd);
                        ps.setString(6, post);
                        ps.executeUpdate();
                        out.println("Successfully Added");
                        }}else{%>
                            Password and Re-entered password must be same.<br>
                    <a href="addlib.jsp">Please add again</a>
                <% }}}
                    catch(Exception e){       
                    out.println(e.getMessage());       
               }
        %>
        <br><a href="Admin_section.jsp">Re-Direct to Admin Section</a>
    
</html>

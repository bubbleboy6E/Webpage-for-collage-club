<%@page import="java.sql.*" %>
<%
  String Name = request.getParameter("name"); 
  String Email = request.getParameter("email");
  String rollNo = request.getParameter("rollNo"); 
  String department = request.getParameter("department"); 
  String anyQueries = request.getParameter("anyQueries"); 
  Class.forName("com.mysql.jdbc.Driver");  
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/intern", "root", "root"); 
  PreparedStatement ps = con.prepareStatement("INSERT INTO registration(Name, Email, RollNo,Department, anyQueries) VALUES (?, ?, ?, ?,?)");
  ps.setString(1, Name);
  ps.setString(2, Email);
  ps.setString(3, rollNo);
  ps.setString(4, department);
  ps.setString(5, anyQueries);
  int row= ps.executeUpdate();
  System.out.println(ps);
%>  
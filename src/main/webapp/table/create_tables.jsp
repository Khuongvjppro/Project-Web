<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table user(name varchar(100),email varchar(100)primary key,mobilenumber bigint,password varchar(100),address varchar(500))";
	String q2="create table product(id int,name varchar(500),category varchar(200),price int,active varchar(10))";
	System.out.print(q1);
	System.out.print(q2);
	//st.execute(q1);
	st.execute(q2);
	System.out.print("Table created");
	con.close();
	}
catch(Exception e){
	System.out.print(e);
}
%>
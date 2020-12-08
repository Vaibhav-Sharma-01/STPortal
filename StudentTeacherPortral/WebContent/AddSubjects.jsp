<%@ page import = "Dao.JSconnector" %>
<%@ page import = "java.sql.*" %>
<%
String Scode = request.getParameter("Scode");
String Sname = request.getParameter("Sname");
String department = request.getParameter("department");
String semester = request.getParameter("semester");
if(Scode.equalsIgnoreCase("1")&&Sname.equalsIgnoreCase("1")){
	Scode="KIT-501";
	Sname="Web Technology";
}
if(Scode.equalsIgnoreCase("2")&&Sname.equalsIgnoreCase("2")){
	Scode="KCS-503";
	Sname="DAA";
}
if(Scode.equalsIgnoreCase("3")&&Sname.equalsIgnoreCase("3")){
	Scode="KCS-501";
	Sname="DBMS";
}
if(Scode.equalsIgnoreCase("4")&&Sname.equalsIgnoreCase("4")){
	Scode="KCS-055";
	Sname="ML";
}
try{
     	Connection con = JSconnector.getConnection();
		PreparedStatement ps = con.prepareStatement("INSERT INTO subjects (Scode,Sname,department,semester) VALUES (?, ?, ?, ?)");
		ps.setString(1, Scode);
		ps.setString(2, Sname);
		ps.setString(3, department);
		ps.setString(4, semester);
		ps.executeUpdate();
		response.sendRedirect("HOD.jsp");
}
catch(Exception e)
{
	out.println(e);
	}

%>
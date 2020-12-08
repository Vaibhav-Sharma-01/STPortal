<%@ page import = "Dao.JSconnector"%>
<%@ page import = "java.sql.*"%>
<%
String sectiont = request.getParameter("sectiont");
String date = request.getParameter("date");
application.setAttribute("hitCounter", "passsection");
request.setAttribute("sectionteacher", sectiont);
request.setAttribute("dates", date);
request.getRequestDispatcher("TeacherHome.jsp").forward(request, response);

%>
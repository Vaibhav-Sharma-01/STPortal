<%@page import="java.util.Iterator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="Dao.RegisterDao"%>
<%@page import="controller.Teacher"%>
<%@ page import = "Dao.JSconnector"%>
<%@ page import = "java.sql.*"%>
<%
String id = request.getParameter("Id");
String name = request.getParameter("name");
String branch = request.getParameter("branch");
String subject = request.getParameter("subject");
String email = request.getParameter("email");
String imgpath = request.getParameter("imgpath");
String[] section = request.getParameterValues("chk");
String semester=request.getParameter("semester");
List list = Arrays.asList(section);
Teacher teacher=new Teacher();
teacher.setId(Integer.parseInt(id));
teacher.setName(name);
teacher.setBranch(branch);
teacher.setSubject(subject);
teacher.setEmail(email);
teacher.setPassword(email);
teacher.setSemester(semester);
teacher.setSection1(String.valueOf(list.get(0)));
if(list.size()==2){
	teacher.setSection2(String.valueOf(list.get(1)));	
}else{
	teacher.setSection2("NULL");	
}
RegisterDao rDao = RegisterDao.getRegisterDao();
int result=rDao.insertteacher(teacher);
if(result>0) {
	String message = "Registration successfull";
    request.setAttribute("message", message);
    RequestDispatcher dispatcher = request.getRequestDispatcher(request.getParameter("viewid"));
    dispatcher.forward(request, response);
}
else {
	String message = "Registration failed";
    request.setAttribute("message", message);
    RequestDispatcher dispatcher = request.getRequestDispatcher(request.getParameter("viewid"));
    dispatcher.forward(request, response);
}
%>
<%@page import="Dao.RegisterDao"%>
<%@page import="controller.Student"%>
<%
String course = request.getParameter("course");
String branch = request.getParameter("branch");
String rollNo = request.getParameter("rollno");
String name = request.getParameter("name");
String fatherName = request.getParameter("fathername");
String gender = request.getParameter("gender");
String semester = request.getParameter("semester");
String section = request.getParameter("rad");


Student student = new Student();
student.setCourse_name(course);
student.setBranch_name(branch);
student.setRoll_no(Long.parseLong(rollNo));
student.setName(name);
student.setFathers_name(fatherName);
student.setGender(gender);
student.setPassword(rollNo);
student.setSemester(semester);
student.setSection(section);

RegisterDao rDao = RegisterDao.getRegisterDao();
int result = rDao.insertstudent(student);
if(result>0) {
	String message = "Successfully Registered";
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
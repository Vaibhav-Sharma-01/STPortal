<%@page import="Dao.RegisterDao"%>
<%@page import="controller.Member"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String password = request.getParameter("password");
String department = request.getParameter("dept");

Member mem=new Member();
mem.setUname(name);
mem.setPassword(email);
mem.setId(id);
mem.setEmail(email);
mem.setDepartment(department);
mem.setPhone(phone);
RegisterDao rDao = RegisterDao.getRegisterDao();
int result=rDao.insert(mem);
if(result>0) {
	String message = "Successfully Registered";
    request.setAttribute("message", message);
    RequestDispatcher dispatcher = request.getRequestDispatcher("Admin.jsp");
    dispatcher.forward(request, response);
}
else {
	String message = "Registration failed";
    request.setAttribute("message", message);
    RequestDispatcher dispatcher = request.getRequestDispatcher("Admin.jsp");
    dispatcher.forward(request, response);
}
%>
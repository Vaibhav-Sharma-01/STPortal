package worker;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.RegisterDao;
import controller.Admin;
import controller.Member;
import controller.Student;
import controller.Teacher;
@WebServlet("/login")
public class Login extends HttpServlet{
	static Member user;
	static Student student;
	static Teacher teacher;
	static Admin admin;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RegisterDao userDao=RegisterDao.getRegisterDao();
		if(req.getParameter("role").equalsIgnoreCase("HOD")) {
			 user=userDao.login(req.getParameter("email"), req.getParameter("password"));
			if(user!=null) {
				HttpSession session=req.getSession(false);
				session.setAttribute("email", user.getEmail());
				session.setAttribute("password", user.getPassword());
				session.setAttribute("phone", user.getPhone());
				session.setAttribute("uname", user.getUname());
				session.setAttribute("imgpath", user.getImgpath());
				session.setAttribute("department", user.getDepartment());
				resp.sendRedirect("HOD.jsp");
			}else {
				String message = "Invalid email/password";
                req.setAttribute("message", message);
                RequestDispatcher dispatcher = req.getRequestDispatcher("Login.jsp");
                dispatcher.forward(req, resp);
			}	
			
	}else if(req.getParameter("role").equalsIgnoreCase("STUDENT")) {
		student=userDao.loginstudent(req.getParameter("email"), req.getParameter("password"));
		if(student!=null) {
			HttpSession session=req.getSession(false);
			session.setAttribute("course", student.getCourse_name());
			session.setAttribute("branch", student.getBranch_name());
			session.setAttribute("roll", student.getRoll_no());
			session.setAttribute("name", student.getName());
			session.setAttribute("father", student.getFathers_name());
			session.setAttribute("password", student.getPassword());
			session.setAttribute("imgpath", student.getImgpath());
			session.setAttribute("semester", student.getSemester());
			session.setAttribute("section", student.getSection());
			resp.sendRedirect("StudentHome.jsp");
		}else {
			String message = "Invalid rollno/password";
            req.setAttribute("message", message);
            RequestDispatcher dispatcher = req.getRequestDispatcher("Login.jsp");
            dispatcher.forward(req, resp);
		}	
	}else if(req.getParameter("role").equalsIgnoreCase("TEACHER")) {
		teacher=userDao.loginteacher(req.getParameter("email"), req.getParameter("password"));
		if(teacher!=null) {
			HttpSession session=req.getSession(false);
			session.setAttribute("idteacher", teacher.getId());
			session.setAttribute("name", teacher.getName());
			session.setAttribute("branch", teacher.getBranch());
			session.setAttribute("subject", teacher.getSubject());
			session.setAttribute("email", teacher.getEmail());
			session.setAttribute("password", teacher.getPassword());
			session.setAttribute("imgpaths", teacher.getImgpath());
			session.setAttribute("semester", teacher.getSemester());
			session.setAttribute("sec1", teacher.getSection1());
			session.setAttribute("sec2", teacher.getSection2());
			resp.sendRedirect("TeacherHome.jsp");
		}else {
			String message = "Invalid email/password";
            req.setAttribute("message", message);
            RequestDispatcher dispatcher = req.getRequestDispatcher("Login.jsp");
            dispatcher.forward(req, resp);
		}	
	}else if(req.getParameter("role").equalsIgnoreCase("ADMIN")) {
		admin=userDao.loginadmin(req.getParameter("email"), req.getParameter("password"));
		if(admin!=null) {
			HttpSession session=req.getSession(false);
			session.setAttribute("email", admin.getEmail());
			session.setAttribute("password", admin.getPassword());
			session.setAttribute("name", admin.getName());
			session.setAttribute("imgpath", admin.getImgpath());
			resp.sendRedirect("Admin.jsp");
		}else {
			String message = "Invalid email/password";
            req.setAttribute("message", message);
            RequestDispatcher dispatcher = req.getRequestDispatcher("Login.jsp");
            dispatcher.forward(req, resp);
		}	
	}else {
		System.out.println("wrong password or login");
	}
	}
}

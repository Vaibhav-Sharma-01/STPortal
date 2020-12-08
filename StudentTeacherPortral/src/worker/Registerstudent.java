package worker;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.RegisterDao;
import controller.Member;
import controller.Student;

@WebServlet("/Registerstudent")
public class Registerstudent extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String course = request.getParameter("course");
		String branch = request.getParameter("branch");
		String rollNo = request.getParameter("rollno");
		String name = request.getParameter("name");
		String fatherName = request.getParameter("fathername");
		String gender = request.getParameter("gender");
		
		Student student = new Student();
		student.setCourse_name(course);
		student.setBranch_name(branch);
		student.setRoll_no(Integer.parseInt(rollNo));
		student.setName(name);
		student.setFathers_name(fatherName);
		student.setGender(gender);
		student.setPassword(rollNo);
		RegisterDao rDao = RegisterDao.getRegisterDao();
		int result = rDao.insertstudent(student);
		if(result>0) {
			String message = "Successfully Registered";
            request.setAttribute("message", message);
            RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
            dispatcher.forward(request, response);
		}
		else {
			String message = "Registration failed";
            request.setAttribute("message", message);
            RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
            dispatcher.forward(request, response);
		}
		
		
		
	}

}

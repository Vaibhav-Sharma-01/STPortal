package worker;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.RegisterDao;
import controller.Student;
import controller.Teacher;
@WebServlet("/deletestudent")
public class Deletestudents extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String roll = req.getParameter("roll");
		Student student=new Student();
		student.setRoll_no(Integer.parseInt(roll));
		RegisterDao rDao = RegisterDao.getRegisterDao();
		int result = rDao.deletestudent(student);
		if(result>0) {
            RequestDispatcher dispatcher = req.getRequestDispatcher(req.getParameter("viewid"));
            dispatcher.forward(req, resp);
		}
		else {
            RequestDispatcher dispatcher = req.getRequestDispatcher(req.getParameter("viewid"));
            dispatcher.forward(req, resp);
		}
	}

}

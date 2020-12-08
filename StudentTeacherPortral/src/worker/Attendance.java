package worker;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.RegisterDao;
import controller.StudentAttendance;
@WebServlet("/attendance")
public class Attendance extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String roll = req.getParameter("rollno");
		String name = req.getParameter("name");
		String date = req.getParameter("date");
		String subject = req.getParameter("subject");
		String semester = req.getParameter("semester");
		String section = req.getParameter("section");
		String attendance = req.getParameter("attendance");	
		
		StudentAttendance sa=new StudentAttendance();
		sa.setRollno(roll);
		sa.setDate(date);
		sa.setAttendance(attendance);
		sa.setName(name);
		sa.setSection(section);
		sa.setSemester(semester);
		sa.setSubject(subject);
		RegisterDao rDao = RegisterDao.getRegisterDao();
		int result=rDao.insertatt(sa);
		if(result>0) {
			resp.getWriter().print("Attendance updated successfully");
		}
		else {
			resp.getWriter().print("Whoops something went wrong....");
		}
	}

}

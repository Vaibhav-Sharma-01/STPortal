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
import controller.Teacher;
@WebServlet("/deletehod")
public class DeleteHOD extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		Member HOD=new Member();
		HOD.setEmail(email);
		RegisterDao rDao = RegisterDao.getRegisterDao();
		int result = rDao.deletehod(HOD);
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

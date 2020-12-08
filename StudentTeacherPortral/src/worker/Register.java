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

@WebServlet("/Register")
public class Register extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		Member member = new Member();
		member.setEmail(email);
		member.setPassword(password);
		member.setPhone(phone);
		member.setUname(uname);
		RegisterDao rDao = RegisterDao.getRegisterDao();
		int result = rDao.insert(member);
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

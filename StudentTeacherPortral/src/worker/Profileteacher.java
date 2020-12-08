package worker;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

import Dao.RegisterDao;
import controller.Teacher;

@WebServlet("/profileteacher")
public class Profileteacher extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		Teacher teacher = Login.teacher;
		PrintWriter out = resp.getWriter();
		if (!ServletFileUpload.isMultipartContent(req)) {
			out.println("Nothing to upload");
		}
		DiskFileItemFactory factory = new DiskFileItemFactory();
		String rootlocation = session.getServletContext().getRealPath("/");
		File folder = new File(rootlocation, "profileimage");
		folder.mkdir();
		System.out.println(rootlocation);
		factory.setRepository(folder);
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			List<FileItem> items = upload.parseRequest(new ServletRequestContext(req));
			Iterator iterator = items.iterator();
			while (iterator.hasNext()) {
				String str;
				FileItem item = (FileItem) iterator.next();
				if (!item.isFormField()) {
					str = item.getName();
					str = teacher.getEmail() + (str.substring(str.indexOf(".")));
					File file = new File(rootlocation + File.separator + "profileimage", str);
					item.write(file);
					teacher.setImgpath(str);
					session.setAttribute("imgpath", teacher.getImgpath());
					int i = RegisterDao.updateProfileteacher(teacher);
					if (i > 0) {
						resp.setIntHeader("Refresh", 10);
						resp.sendRedirect("Teacher.jsp");
					}
				}
				if(item.getFieldName().equalsIgnoreCase("pass")) {
					teacher.setPassword(item.getString());
					session.setAttribute("password", teacher.getPassword());
					int i = RegisterDao.updateProfileteacher(teacher);
					if (i > 0) {
						resp.setIntHeader("Refresh", 10);
						resp.sendRedirect("Teacher.jsp");
					}
				}
			}
		} catch (FileUploadException e) {
			out.println("upload failed");
		} catch (Exception e) {
			out.println("no file to upload");
		}
		}
}
package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import controller.Admin;
import controller.Member;
import controller.Student;
import controller.StudentAttendance;
import controller.Teacher;

public class RegisterDao {

	private static RegisterDao registerdao = new RegisterDao();

	private RegisterDao() {
	}

	public static RegisterDao getRegisterDao() {
		return registerdao;
	}

	public int insert(Member mem) {
		int i = 0;
		try (Connection con = JSconnector.getConnection()) {
			PreparedStatement ps = con.prepareStatement("insert into member values(?,?,?,?,?,?,?)");
			ps.setString(1, mem.getUname());
			ps.setString(2, mem.getPassword());
			ps.setString(3, mem.getEmail());
			ps.setString(4, mem.getPhone());
			ps.setString(5, mem.getImgpath());
			ps.setInt(6, mem.getId());
			ps.setString(7, mem.getDepartment());
			i = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}
	
	public int insertstudent(Student stu) {
		int i = 0;
		try (Connection con = JSconnector.getConnection()) {
			PreparedStatement ps = con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, stu.getCourse_name());
			ps.setString(2, stu.getBranch_name());
			ps.setLong(3, stu.getRoll_no());
			ps.setString(4, stu.getName());
			ps.setString(5, stu.getFathers_name());
			ps.setString(6, stu.getGender());
			ps.setString(7, stu.getPassword());
			ps.setString(8, stu.getImgpath());
			ps.setString(9, stu.getSemester());
			ps.setString(10, stu.getSection());
			i = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}

	public int insertteacher(Teacher stu) {
		int i = 0;
		try (Connection con = JSconnector.getConnection()) {
			PreparedStatement ps = con.prepareStatement("insert into teacher values(?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, stu.getId());
			ps.setString(2, stu.getName());
			ps.setString(3, stu.getBranch());
			ps.setString(4, stu.getSubject());
			ps.setString(5, stu.getEmail());
			ps.setString(6, stu.getPassword());
			ps.setString(7, stu.getImgpath());
			ps.setString(8, stu.getSemester());
			ps.setString(9, stu.getSection1());
			ps.setString(10, stu.getSection2());
			i = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}
	
	public int insertatt(StudentAttendance sa) {
		int i = 0;
		try (Connection con = JSconnector.getConnection()) {
			PreparedStatement ps = con.prepareStatement("insert into attendance values(?,?,?,?,?,?,?)");
			ps.setString(1, sa.getRollno());
			ps.setString(2, sa.getName());
			ps.setString(3, sa.getDate());
			ps.setString(4, sa.getSubject());
			ps.setString(5, sa.getSemester());
			ps.setString(6, sa.getSection());
			ps.setString(7, sa.getAttendance());
			i = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}

	public Member login(String email, String pass) {
		Member user = null;
		try (Connection con = JSconnector.getConnection();) {
			PreparedStatement ps = con.prepareStatement("select * from member where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user = new Member();
				user.setUname(rs.getString(1));
				user.setPassword(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setPhone(rs.getString(4));
				user.setImgpath(rs.getString(5));
				user.setId(rs.getInt(6));
				user.setDepartment(rs.getString(7));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return user;

	}

	public Student loginstudent(String roll, String pass) {
		Student user = null;
		try (Connection con = JSconnector.getConnection();) {
			PreparedStatement ps = con.prepareStatement("select * from student where roll_no=? and password=?");
			ps.setString(1, roll);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user = new Student();
				user.setCourse_name(rs.getString(1));
				user.setBranch_name(rs.getString(2));
				user.setRoll_no(rs.getLong(3));
				user.setName(rs.getString(4));
				user.setFathers_name(rs.getString(5));
				user.setGender(rs.getString(6));
				user.setPassword(rs.getString(7));
				user.setImgpath(rs.getString(8));
				user.setSemester(rs.getString(9));
				user.setSection(rs.getString(10));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return user;

	}

	public Teacher loginteacher(String email, String pass) {
		Teacher user = null;
		try (Connection con = JSconnector.getConnection();) {
			PreparedStatement ps = con.prepareStatement("select * from teacher where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user = new Teacher();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setBranch(rs.getString(3));
				user.setSubject(rs.getString(4));
				user.setEmail(rs.getString(5));
				user.setPassword(rs.getString(6));
				user.setImgpath(rs.getString(7));
				user.setSemester(rs.getString(8));
				user.setSection1(rs.getString(9));
				user.setSection2(rs.getString(10));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return user;

	}

	public Admin loginadmin(String email, String pass) {
		Admin user = null;
		try (Connection con = JSconnector.getConnection();) {
			PreparedStatement ps = con.prepareStatement("select * from admin where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user = new Admin();
				user.setEmail(rs.getString(1));
				user.setPassword(rs.getString(2));
				user.setName(rs.getString(3));
				user.setImgpath(rs.getString(4));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return user;

	}

	public static int updateProfile(Member common) {
		int i = 0;
			try (Connection con = JSconnector.getConnection()) {
				PreparedStatement ps = con.prepareStatement("update member set password=?,imgpath=?,department=? where email=?");
				ps.setString(1, common.getPassword());
				ps.setString(2, common.getImgpath());
				ps.setString(3, common.getDepartment());
				ps.setString(4, common.getEmail());
				i = ps.executeUpdate();
			} catch (Exception e) {
				System.out.println(e);
			} 
		return i;
	}
	
	public static int updateProfilestudent(Student common) {
		int i = 0;
		try (Connection con = JSconnector.getConnection()) {
			PreparedStatement ps = con.prepareStatement("update student set password=?,imgpath=? where roll_no=?");
			ps.setString(1, common.getPassword());
			ps.setString(2, common.getImgpath());
			ps.setLong(3, common.getRoll_no());
				i = ps.executeUpdate();
			} catch (Exception e) {
				System.out.println(e);
			} 
		return i;
	}
	
	public static int updateProfileteacher(Teacher common) {
		int i = 0;
		try (Connection con = JSconnector.getConnection()) {
			PreparedStatement ps = con.prepareStatement("update teacher set password=?,imgpath=? where email=?");
			ps.setString(1, common.getPassword());
			ps.setString(2, common.getImgpath());
			ps.setString(3, common.getEmail());
				i = ps.executeUpdate();
			} catch (Exception e) {
				System.out.println(e);
			} 
		return i;
	}
	
	public static int updateProfileadmin(Admin common) {
		int i = 0;
		try (Connection con = JSconnector.getConnection()) {
			PreparedStatement ps = con.prepareStatement("update admin set password=?,name=?,imgpath=? where email=?");
			ps.setString(1, common.getPassword());
			ps.setString(2, common.getName());
			ps.setString(3, common.getImgpath());
			ps.setString(4, common.getEmail());
				i = ps.executeUpdate();
			} catch (Exception e) {
				System.out.println(e);
			} 
		return i;
	}
	
	public int deleteteacher(Teacher teacher) {
		int i=0;
		try (Connection con = JSconnector.getConnection()) {
			PreparedStatement ps = con.prepareStatement("delete from teacher where email=?");
			ps.setString(1, teacher.getEmail());
				i = ps.executeUpdate();
			} catch (Exception e) {
				System.out.println(e);
			} 
		return i;
	}
	
	public int deletehod(Member mem) {
		int i=0;
		try (Connection con = JSconnector.getConnection()) {
			PreparedStatement ps = con.prepareStatement("delete from member where email=?");
			ps.setString(1, mem.getEmail());
				i = ps.executeUpdate();
			} catch (Exception e) {
				System.out.println(e);
			} 
		return i;
	}
	
	public int deletestudent(Student std) {
		int i=0;
		try (Connection con = JSconnector.getConnection()) {
			PreparedStatement ps = con.prepareStatement("delete from student where roll_no=?");
			ps.setLong(1, std.getRoll_no());
				i = ps.executeUpdate();
			} catch (Exception e) {
				System.out.println(e);
			} 
		return i;
	}
	
	public int deletesubject(String Scode) {
		int i=0;
		try (Connection con = JSconnector.getConnection()) {
			PreparedStatement ps = con.prepareStatement("delete from subjects where id=?");
			ps.setString(1, Scode);
				i = ps.executeUpdate();
			} catch (Exception e) {
				System.out.println(e);
			} 
		return i;
	}
	
}

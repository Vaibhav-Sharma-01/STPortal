package controller;

public class Teacher {
private int id;
private String name,branch,subject,email,password,imgpath,semester,section1,section2;

public String getImgpath() {
	return imgpath;
}
public void setImgpath(String imgpath) {
	this.imgpath = imgpath;
}
public int getId() {
	return id;
}
public String getSemester() {
	return semester;
}
public void setSemester(String semester) {
	this.semester = semester;
}
public String getSection1() {
	return section1;
}
public void setSection1(String section1) {
	this.section1 = section1;
}
public String getSection2() {
	return section2;
}
public void setSection2(String section2) {
	this.section2 = section2;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getBranch() {
	return branch;
}
public void setBranch(String branch) {
	this.branch = branch;
}
public String getSubject() {
	return subject;
}
public void setSubject(String subject) {
	this.subject = subject;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
}

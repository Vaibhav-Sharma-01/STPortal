package controller;

public class Student {
private String course_name,branch_name,name,fathers_name,gender,password,imgpath,semester,section;
private long roll_no;
public long getRoll_no() {
	return roll_no;
}
public void setRoll_no(long roll_no) {
	this.roll_no = roll_no;
}
public String getCourse_name() {
	return course_name;
}
public void setCourse_name(String course_name) {
	this.course_name = course_name;
}
public String getSemester() {
	return semester;
}
public void setSemester(String semester) {
	this.semester = semester;
}
public String getSection() {
	return section;
}
public void setSection(String section) {
	this.section = section;
}
public String getBranch_name() {
	return branch_name;
}
public void setBranch_name(String branch_name) {
	this.branch_name = branch_name;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getFathers_name() {
	return fathers_name;
}
public void setFathers_name(String fathers_name) {
	this.fathers_name = fathers_name;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getImgpath() {
	return imgpath;
}
public void setImgpath(String imgpath) {
	this.imgpath = imgpath;
}
}

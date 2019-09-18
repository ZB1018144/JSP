package exp2;

import java.util.ArrayList;

public class Student {
	private String studentid;
	private String name;
	private String sex;
	public String classid;
	public double score;
	public String getStudentid() {
		return studentid;
	}
	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getClassid() {
		return classid;
	}
	public void setClassid(String classid) {
		this.classid = classid;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	
	public Student(String studentid, String name, String sex, String classid,
			double score) {
		super();
		this.studentid = studentid;
		this.name = name;
		this.sex = sex;
		this.classid = classid;
		this.score = score;
	}

}

package com.example.student.entities;

import java.sql.Date;

import javax.persistence.*;

@Entity
@Table(name = "studenttab_new")
public class Student {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(name = "sname")
	private String name;
	private String scourse;
	private String sfee;
	
	
	private String saddress;
	private long scontact_details;
	private Date sbirthdate;
	private int sclass;
	private long sroll_no;
	private String sparents_details;
	private String sgrade;
	private int smarks;
	
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getScourse() {
		return scourse;
	}
	public void setScourse(String scourse) {
		this.scourse = scourse;
	}
	public String getSfee() {
		return sfee;
	}
	public void setSfee(String sfee) {
		this.sfee = sfee;
	}
	
	
	
	public String getSaddress() {
		return saddress;
	}
	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}
	public long getScontact_details() {
		return scontact_details;
	}
	public void setScontact_details(long scontact_details) {
		this.scontact_details = scontact_details;
	}
	public Date getSbirthdate() {
		return sbirthdate;
	}
	public void setSbirthdate(Date sbirthdate) {
		this.sbirthdate = sbirthdate;
	}
	public int getSclass() {
		return sclass;
	}
	public void setSclass(int sclass) {
		this.sclass = sclass;
	}
	public long getSroll_no() {
		return sroll_no;
	}
	public void setSroll_no(long sroll_no) {
		this.sroll_no = sroll_no;
	}
	public String getSparents_details() {
		return sparents_details;
	}
	public void setSparents_details(String sparents_details) {
		this.sparents_details = sparents_details;
	}
	public String getSgrade() {
		return sgrade;
	}
	public void setSgrade(String sgrade) {
		this.sgrade = sgrade;
	}
	public int getSmarks() {
		return smarks;
	}
	public void setSmarks(int smarks) {
		this.smarks = smarks;
	}
	
}

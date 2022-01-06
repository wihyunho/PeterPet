package com.pp.peterpet.board;

import java.sql.Date;

public class BoardDTO {

	int b_no;
	String b_title;
	String b_type;
	String b_content;
	Date b_date;
	String b_thumbnail;
	String b_writer;
	
	public BoardDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public BoardDTO(int b_no, String b_title, String b_type, String b_content, Date b_date, String b_thumbnail,
			String b_writer) {
		super();
		this.b_no = b_no;
		this.b_title = b_title;
		this.b_type = b_type;
		this.b_content = b_content;
		this.b_date = b_date;
		this.b_thumbnail = b_thumbnail;
		this.b_writer = b_writer;
	}

	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_type() {
		return b_type;
	}
	public void setB_type(String b_type) {
		this.b_type = b_type;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public Date getB_date() {
		return b_date;
	}
	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}
	public String getB_thumbnail() {
		return b_thumbnail;
	}
	public void setB_thumbnail(String b_thumbnail) {
		this.b_thumbnail = b_thumbnail;
	}
	public String getB_writer() {
		return b_writer;
	}
	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}
	
	
}

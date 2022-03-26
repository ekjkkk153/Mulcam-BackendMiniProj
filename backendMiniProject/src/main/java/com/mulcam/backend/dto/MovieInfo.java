package com.mulcam.backend.dto;

import java.sql.Date;

public class MovieInfo {
	int mov_article_num;
	String mov_subject;
	Date mov_date;
	String mov_content;
	String mov_filename;
	String mov_youtube;

	public int getMov_article_num() {
		return mov_article_num;
	}

	public void setMov_article_num(int mov_article_num) {
		this.mov_article_num = mov_article_num;
	}

	public String getMov_subject() {
		return mov_subject;
	}

	public void setMov_subject(String mov_subject) {
		this.mov_subject = mov_subject;
	}

	public Date getMov_date() {
		return mov_date;
	}

	public void setMov_date(Date mov_date) {
		this.mov_date = mov_date;
	}

	public String getMov_content() {
		return mov_content;
	}

	public void setMov_content(String mov_content) {
		this.mov_content = mov_content;
	}

	public String getMov_filename() {
		return mov_filename;
	}

	public void setMov_filename(String mov_filename) {
		this.mov_filename = mov_filename;
	}

	public String getMov_youtube() {
		return mov_youtube;
	}

	public void setMov_youtube(String mov_youtube) {
		this.mov_youtube = mov_youtube;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return mov_article_num + ":" + mov_subject;
	}
	
	public MovieInfo() {}
	
	public MovieInfo(String subject, Date date, String content, String filename, String youtube) {
		this.mov_subject = subject;
		this.mov_date = date;
		this.mov_content = content;
		this.mov_filename = filename;
		this.mov_youtube = youtube;
	}

	public MovieInfo(int movienum, String subject, Date date, String content, String filename, String youtube) {
		this.mov_article_num = movienum;
		this.mov_subject = subject;
		this.mov_date = date;
		this.mov_content = content;
		this.mov_filename = filename;
		this.mov_youtube = youtube;
	}
}

package com.mulcam.backend.service;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mulcam.backend.controller.MovieController;
import com.mulcam.backend.dao.AccountDAO;
import com.mulcam.backend.dao.MovieInfoDAO;
import com.mulcam.backend.dto.Account;
import com.mulcam.backend.dto.MovieInfo;

@Service
public class MovieInfoServiceImpl implements MovieInfoService{
	private static final Logger logger = LoggerFactory.getLogger(MovieInfoServiceImpl.class);
	@Autowired
	MovieInfoDAO movDAO;

	@Override
	public List<MovieInfo> queryAll() throws Exception {
		// TODO Auto-generated method stub
		List<MovieInfo> listmov = movDAO.queryAllMovie();
		if(listmov==null) throw new Exception("오류");
		return listmov;
	}

	@Override
	public void addMovie(String subject, Date date, String content, String file, String youtube ) throws SQLException {
		MovieInfo mov = new MovieInfo(subject, date, content, file, youtube);
		movDAO.insertMovie(mov);
		if (movDAO.queryMovieByTitle(subject) == null) throw new SQLException("NOT INSERTED");
	}
	
	
}

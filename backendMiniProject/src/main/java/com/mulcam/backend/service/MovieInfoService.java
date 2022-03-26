package com.mulcam.backend.service;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Service;

import com.mulcam.backend.dto.MovieInfo;

@Service
public interface MovieInfoService {
	public List<MovieInfo> queryAll() throws Exception;
	public void addMovie(String subject, Date date, String content, String file, String youtube) throws SQLException;
}

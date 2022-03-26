package com.mulcam.backend.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mulcam.backend.dto.MovieInfo;

@Mapper
@Repository
public interface MovieInfoDAO {
	public MovieInfo queryMovie(String id) throws SQLException;
	public MovieInfo queryMovieByTitle(String title) throws SQLException;
	public List<MovieInfo> queryAllMovie() throws SQLException;
	public void insertMovie(MovieInfo movinfo) throws SQLException;
}
package com.mulcam.backend.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mulcam.backend.dto.MovieInfo;
import com.mulcam.backend.service.MovieInfoService;

@Controller
public class MovieController {
	private static final Logger logger = LoggerFactory.getLogger(MovieController.class);
	@Autowired
	private ServletContext servletContext;
	@Autowired
	MovieInfoService movService;
	
	//@ResponseBody
	@GetMapping("/queryallmov")
	public ResponseEntity<List<MovieInfo>> queryAllMovie() {
		ResponseEntity<List<MovieInfo>> result = null;
		try {
			List<MovieInfo> listmov = movService.queryAll();
			result= new ResponseEntity<List<MovieInfo>>(listmov, HttpStatus.OK);
		} catch (Exception e) {
			result = new ResponseEntity<List<MovieInfo>>(new ArrayList<MovieInfo>(), HttpStatus.BAD_REQUEST);
		}
		
		return result;
	}
	
	@PostMapping("/insertmovie")
	//consumes = { MediaType.APPLICATION_JSON_VALUE, MediaType.MULTIPART_FORM_DATA_VALUE })
	public ResponseEntity<String> fileupload(@RequestParam(value="movtitle") String title, 
			@RequestParam(value="movimage", required=false) MultipartFile file, 
			@RequestParam(value="movdate", required=false) Date date,
			@RequestParam(value="movinfo", required=false) String movinfo,
			@RequestParam(value="movyoutube", required=false) String youtube, Model model) {
		ResponseEntity<String> result = null;
		logger.info(String.valueOf(file.isEmpty()));
		
		if(file != null) {
			logger.info(file.getName());
			String path = servletContext.getRealPath("/resources/img/");
			File destFile = new File(path+file.getOriginalFilename());
			logger.info(destFile.getName());
			System.out.println(destFile.getName());
			try {
				file.transferTo(destFile);
				movService.addMovie(title, date, movinfo, destFile.getName(), youtube);
				result = new ResponseEntity<String>("true", HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				result = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
			}
		} else {
			//logger.info(file.getName());
			try {
				movService.addMovie(title, date, movinfo, null, youtube);
				result = new ResponseEntity<String>("true", HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				result = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
			}
		}
		return result;
	}
	
	@PostMapping("/editmovie")
	public ResponseEntity<String> editmovieinfo() {
		ResponseEntity<String> result = null;
		return result;
	}
}

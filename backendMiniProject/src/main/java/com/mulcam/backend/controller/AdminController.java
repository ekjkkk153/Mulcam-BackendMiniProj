package com.mulcam.backend.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@RequestMapping(value={"/", "/admin"}, method=RequestMethod.GET)
	public String admin(Model model) {
		//String cpage = request.getParameter("cpage");
		model.addAttribute("cpage", "admin/admin");
		return "home";
	}
	
	
	@RequestMapping(value = "/insertmovie", method=RequestMethod.GET)
	public String insertmovie(Model model) {
		//String cpage = request.getParameter("cpage");
		model.addAttribute("cpage", "admin/insertmovie");
		return "home";
	}
	
	@RequestMapping(value = "/editmovie", method=RequestMethod.GET)
	public String editmovie(Model model) {
		//String cpage = request.getParameter("cpage");
		model.addAttribute("cpage", "admin/editmovie");
		return "home";
	}
	
	@RequestMapping(value = "/editmovieform", method=RequestMethod.GET)
	public String editmovieform(Model model) {
		//String cpage = request.getParameter("cpage");
		model.addAttribute("cpage", "admin/editmovieform");
		return "home";
	}
	
	
	@RequestMapping(value = "/managemovie", method=RequestMethod.GET)
	public String managemovie(Model model) {
		//String cpage = request.getParameter("cpage");
		model.addAttribute("cpage", "admin/managemovie");
		return "home";
	}
}

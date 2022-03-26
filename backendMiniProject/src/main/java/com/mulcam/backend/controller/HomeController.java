package com.mulcam.backend.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
//		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("cpage", "index");
		
		return "home";
	}
	
	
	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public String memmenu(HttpServletRequest request, Model model) {
		String cpage = request.getParameter("cpage");
		model.addAttribute("cpage", cpage);
		return "home";
	}
	
	@GetMapping(value = "/login")
	public String login(HttpServletRequest request, Model model) {
		model.addAttribute("cpage", "login");
		return "home";
	}
	
	@GetMapping(value = "/signUp")
	public String signUp(HttpServletRequest request, Model model) {
		model.addAttribute("cpage", "signUp");
		return "home";
	}
	
	@RequestMapping(value = "/err", method = {RequestMethod.GET, RequestMethod.POST})
	public String err(HttpServletRequest request, Model model) {
		model.addAttribute("cpage", "err");
		return "home";
	}
	
//	@RequestMapping(value = "/admin", method=RequestMethod.GET)
//	public String admin(HttpServletRequest request, Model model) {
//		String cpage = request.getParameter("cpage");
//		model.addAttribute("cpage", "admin/admin");
//		return "home";
//	}
//	
//	@RequestMapping(value = "/admin/insertmovie", method=RequestMethod.GET)
//	public String insertmovie(HttpServletRequest request, Model model) {
//		String cpage = request.getParameter("cpage");
//		model.addAttribute("cpage", "admin/insertmovie");
//		return "home";
//	}
}

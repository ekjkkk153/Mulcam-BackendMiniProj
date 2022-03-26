package com.mulcam.backend.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mulcam.backend.dto.Account;
import com.mulcam.backend.service.AccountService;

@Controller
public class AccountController {
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
	//private static final Logger logger = LoggerFactory.getLogger(ReactController.class);
	@Autowired
	AccountService accountService;
	@Autowired
	HttpSession session;

	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
//	public ModelAndView login(HttpServletRequest request) {
	public ModelAndView login(@RequestParam("id") String id, @RequestParam("pw") String pw) {
		ModelAndView modelAndView = new ModelAndView("home");
		try {
//			String id = request.getParameter("id");
//			String pw = request.getParameter("password");
			logger.info(id);
			logger.info(pw);
			Account mem = accountService.login(id, pw);
			if (mem == null) throw new Exception("로그인 실패");
			session.setAttribute("account", mem);
			//session.setAttribute("id", mem.getId());
			modelAndView.addObject("cpage", "index");
		} catch (Exception e) {
			modelAndView.addObject("err", e.getMessage());
			modelAndView.addObject("cpage", "err");
		}
		return modelAndView;
	}
//
//	@RequestMapping(value = "/memmenu", method = RequestMethod.GET)
//	public String memmenu(HttpServletRequest request, Model model) {
//		String cpage = request.getParameter("cpage");
//		model.addAttribute("cpage", cpage);
//		return "home";
//	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model) {
		session.removeAttribute("account");
		model.addAttribute("cpage", "login");
		return "home";
	}

	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public ModelAndView join(@RequestParam("id") String id, @RequestParam("password") String password, @RequestParam("name") String name) {
		ModelAndView modelAndView = new ModelAndView("home");
		try {
//			String id = request.getParameter("email");
//			String name = request.getParameter("name");
//			String password = request.getParameter("pw");
			logger.info(id);
			logger.info(name);
			logger.info(password);
			
			Account rmem = accountService.join(new Account(id, name, password));
//			Account rmem = accountService.join(acc);
			if (rmem == null) throw new Exception("계정 생성 오류");
			//modelAndView.addObject("account", rmem);
			modelAndView.addObject("cpage", "login");
		} catch (Exception e) {
			modelAndView.addObject("err", e.getMessage());
			modelAndView.addObject("cpage", "err");
		}
		return modelAndView;
	}

	
	@ResponseBody
	@RequestMapping(value="accountoverlap", method=RequestMethod.POST)
	public String accountoverlap(@RequestParam(value="id", required = true) String id) {
		boolean overlap=false;
		try {
			overlap = accountService.accOverlap(id);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return String.valueOf(overlap);
	}
}

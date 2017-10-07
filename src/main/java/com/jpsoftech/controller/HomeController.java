package com.jpsoftech.controller;

import java.lang.invoke.MethodHandles;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.impl.StaticLoggerBinder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jpsoftech.Model.Login;
import com.jpsoftech.Model.Register;
import com.jpsoftech.Repo.RegisterRepo;



@Controller
public class HomeController {
	@Autowired
	RegisterRepo registerRepo;
	private static final Logger LOGGER = LoggerFactory.getLogger(MethodHandles.lookup().lookupClass());
    final StaticLoggerBinder binder = StaticLoggerBinder.getSingleton();
	@RequestMapping("/")
	public String index(Map<String, Object> model) {
		LOGGER.info("Index Page");
		return "index";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String signin(ModelMap model) {
		LOGGER.info("Login page");
		return "Login";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String Logout(ModelMap model, HttpSession session) {
		session.setAttribute("username", "");
		return "index";
	}
	@RequestMapping(value = "/Dashboard", method = RequestMethod.GET)
	public String Dashboard(ModelMap model, HttpSession session) {
		session.setAttribute("username", session.getAttribute("username"));
		return "DashBoard";
	}
	
	
@RequestMapping(value = "/request", method = RequestMethod.POST)
public String login(ModelMap model, @ModelAttribute("loginForm") @Validated Login login, HttpSession session) {
	List<Register> loginResult=registerRepo.findByUsernameAndPassword(login.getUsername(),login.getPassword());
	if(loginResult.size()==0){
		model.put("result", "Invalid Username password");
		return"index";
	}
	else
	{
		session.setAttribute("username", login.getUsername());
		return"DashBoard";
	}
		
	
}


}
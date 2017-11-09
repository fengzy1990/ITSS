package com.fengzi.ITSS.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class UserController {

	@RequestMapping(value="/checkuser",method =RequestMethod.POST)
	@ResponseBody
	public String checkUser( String inputName,  String inputPassword,Model model) {
		
		//进行校验
		System.out.println("checkuser"+inputName+inputPassword);
		
		return "nav";
	}
}

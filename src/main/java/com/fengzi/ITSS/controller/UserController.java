package com.fengzi.ITSS.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class UserController {

	@ResponseBody
	@RequestMapping(value="/checkuser",method=RequestMethod.POST)
	public String checkUser(@RequestParam("userid") String userid, @RequestParam("password") String password) {
		
		//进行校验
		System.out.println("checkuser");
		return "nav";
	}
}

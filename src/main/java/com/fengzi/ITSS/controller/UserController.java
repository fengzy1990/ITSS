package com.fengzi.ITSS.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class UserController  {

	@RequestMapping(value="/checkuser",method =RequestMethod.POST)
	@ResponseBody
	public ModelAndView checkUser( String inputName,  String inputPassword,Model model) {
		ModelAndView mView= new ModelAndView();
		//进行校验
		System.out.println("checkuser"+inputName+inputPassword);
		mView.addObject("msg","success");
		mView.setViewName("nav");
		//System.out.println(mView);
		return mView;
		
	}
}

package com.fengzi.ITSS.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fengzi.ITSS.service.userLoginService;

@Controller
public class UserLoginController {
	@Autowired
	userLoginService uLoginService;

	@RequestMapping(value = "/checkuser", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView checkUser(String inputName, String inputPassword,HttpSession session, Model model) {
		ModelAndView mView = new ModelAndView();
		// 进行校验
		System.out.println("checkuser" + inputName + inputPassword);
		if (uLoginService.login(inputName, inputPassword)) {
			mView.addObject("msg", "success");
			session.setAttribute("SESSION_USER",inputName);
			mView.setViewName("views/main");

		} else {
			mView.addObject("msg", "fail");
			mView.setViewName("index");
		}
		// System.out.println(mView);
		return mView;

	}
}

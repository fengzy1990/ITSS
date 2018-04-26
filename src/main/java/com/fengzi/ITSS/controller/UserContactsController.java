package com.fengzi.ITSS.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fengzi.ITSS.bean.Msg;
import com.fengzi.ITSS.bean.UserContacts;
import com.fengzi.ITSS.service.UserContactsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class UserContactsController {
	@Autowired
	UserContactsService userContactsService;

	/**
	 * 返回所有的联系人名单
	 * 
	 * @param pn
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/allusercontacts")
	public Msg getUserContacts(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		PageHelper.startPage(pn, 10);
		List<UserContacts> userContacts = userContactsService.get_ALL();
		PageInfo page = new PageInfo(userContacts, 10);
		return Msg.success().add("pageInfo", page);
	}

	/**
	 * 增加用户 保存
	 * 
	 * @param userContacts
	 * @param bindingResult
	 * @return
	 */

	@ResponseBody
	@RequestMapping(value = "/usercontacts", method = RequestMethod.POST)
	public Msg saveUserContacts(@Valid UserContacts userContacts, BindingResult bindingResult) {
		System.out.println("进入saveUserContacts方法");
		if (bindingResult.hasErrors()) {
			// 校验失败
			Map<String, Object> map = new HashMap<>();
			List<FieldError> list = bindingResult.getFieldErrors();
			for (FieldError fieldError : list) {
				map.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			return Msg.fail().add("errorFields", map);
		} else {
			// System.out.println(userContacts.getUseremail());
			// System.out.println(userContacts.getUserphone());
			userContactsService.saveUserContacts(userContacts);
			return Msg.success();
		}
	}

	/**
	 * 删除操作 支持批量删除，根据id来删除，前台用_来分割id参数
	 * 
	 * @PathVariable用来获取请求URL中动态参数
	 * @param ids
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/usercontacts/{ids}", method = RequestMethod.DELETE)
	public Msg deleteUserContacts(@PathVariable("ids") String ids) {
		if (ids.contains("_")) {
			List<Integer> del_List = new ArrayList<>();
			String[] str_ids = ids.split("_");
			for (String id : str_ids) {
				del_List.add(Integer.parseInt(id));
			}
			// System.out.println(del_List.toString());
			// 批量删除
			userContactsService.deleteBatch(del_List);
		} else {
			int id = Integer.parseInt(ids);
			// 只删除一个用户
			userContactsService.deleteUserContacts(id);
		}
		return Msg.success();
	}

	/**
	 * 根据id查找对应用户全部信息
	 * 
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/usercontacts/{id}", method = RequestMethod.GET)
	public Msg getUser(@PathVariable("id") Integer id) {
		UserContacts uContacts = userContactsService.getUserContacts(id);
		return Msg.success().add("userContacts", uContacts);
	}
	@ResponseBody
	@RequestMapping(value = "usercontacts/{id}",method=RequestMethod.PUT)
	public Msg updateUser(UserContacts uContacts) {
		userContactsService.updateUserContacts(uContacts);
		return Msg.success();
	}
}

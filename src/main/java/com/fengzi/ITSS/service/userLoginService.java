package com.fengzi.ITSS.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fengzi.ITSS.dao.userLoginMapper;
import com.fengzi.curd.bean.userLoginExample;
import com.fengzi.curd.bean.userLoginExample.Criteria;

@Service
public class userLoginService {
	@Autowired
	private userLoginMapper uLoginmapper;

	/**
	 * 登录方法 验证用户名和密码的正确性
	 * 
	 * @param name
	 * @param password
	 * @return
	 */
	public boolean login(String name, String password) {
		boolean flag = false;
		userLoginExample uLoginExample = new userLoginExample();
		Criteria criteria = uLoginExample.createCriteria();
		criteria.andUseridEqualTo(name);
		criteria.andUserpasswordEqualTo(password);
		long num = uLoginmapper.countByExample(uLoginExample);
		if (num >= 0) {
			flag = true;
		}
		return flag;
	}
}

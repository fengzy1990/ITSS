package com.fengzi.ITSS.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fengzi.ITSS.dao.UserContactsMapper;
import com.fengzi.curd.bean.UserContacts;
import com.fengzi.curd.bean.UserContactsExample;
import com.fengzi.curd.bean.UserContactsExample.Criteria;

@Service
public class UserContactsService {
	@Autowired
	private UserContactsMapper userContactsMapper;
	
	//查询所有联系人
	public List<UserContacts> get_ALL(){
		return userContactsMapper.selectByExample(null);
	}
	/**
	 * 保存联系人
	 * @param userContacts
	 */
	public void saveUserContacts(UserContacts userContacts) {
		// TODO Auto-generated method stub
		userContactsMapper.insertSelective(userContacts);
	}
	/**
	 * 批量删除联系人id
	 * @param del_List
	 */
	public void deleteBatch(List<Integer> del_List) {
		// TODO Auto-generated method stub
		UserContactsExample userContactsExample=new UserContactsExample();
		Criteria criteria = userContactsExample.createCriteria();
		criteria.andIdIn(del_List);
		userContactsMapper.deleteByExample(userContactsExample);
	}
	/**
	 * 删除单个用户
	 * @param id
	 */
	public void deleteUserContacts(int id) {
		// TODO Auto-generated method stub
		userContactsMapper.deleteByPrimaryKey(id);
	}
	

}

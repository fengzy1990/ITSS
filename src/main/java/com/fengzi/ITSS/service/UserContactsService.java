package com.fengzi.ITSS.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fengzi.ITSS.bean.UserContacts;
import com.fengzi.ITSS.bean.UserContactsExample;
import com.fengzi.ITSS.bean.UserContactsExample.Criteria;
import com.fengzi.ITSS.dao.UserContactsMapper;

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
	/**
	 * 根据id查找该用户所有信息
	 * @param id
	 * @return
	 */
	public UserContacts getUserContacts(Integer id) {
		// TODO Auto-generated method stub
		UserContacts uContacts = userContactsMapper.selectByPrimaryKey(id);
		return uContacts;
	}
	public void updateUserContacts(UserContacts uContacts) {
		// TODO Auto-generated method stub
		userContactsMapper.updateByPrimaryKeySelective(uContacts);
	}
	//按照条件综合查询，根据字段查询出符合条件的数据
	public List<UserContacts> select_All(String args) {
		// TODO Auto-generated method stub
		return userContactsMapper.selectByArgs(args);
	}
	

}

package com.fengzi.ITSS.dao;

import com.fengzi.curd.bean.userLogin;
import com.fengzi.curd.bean.userLoginExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface userLoginMapper {
	long countByExample(userLoginExample example);

	int deleteByExample(userLoginExample example);

	int deleteByPrimaryKey(Integer id);

	int insert(userLogin record);

	int insertSelective(userLogin record);

	List<userLogin> selectByExample(userLoginExample example);

	userLogin selectByPrimaryKey(Integer id);

	// 根据用户登录id查找是否存在
	long selectByUserId(String userId);

	int updateByExampleSelective(@Param("record") userLogin record, @Param("example") userLoginExample example);

	int updateByExample(@Param("record") userLogin record, @Param("example") userLoginExample example);

	int updateByPrimaryKeySelective(userLogin record);

	int updateByPrimaryKey(userLogin record);
}
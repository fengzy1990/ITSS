package com.fengzi.ITSS.dao;

import com.fengzi.ITSS.bean.UserContacts;
import com.fengzi.ITSS.bean.UserContactsExample;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserContactsMapper {
    long countByExample(UserContactsExample example);

    int deleteByExample(UserContactsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(UserContacts record);

    int insertSelective(UserContacts record);

    List<UserContacts> selectByExample(UserContactsExample example);
    
    List<UserContacts> selectByArgs(String args);

    UserContacts selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") UserContacts record, @Param("example") UserContactsExample example);

    int updateByExample(@Param("record") UserContacts record, @Param("example") UserContactsExample example);

    int updateByPrimaryKeySelective(UserContacts record);

    int updateByPrimaryKey(UserContacts record);
}
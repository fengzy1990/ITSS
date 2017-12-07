package com.fengzi.ITSS.dao;

import com.fengzi.curd.bean.UserContacts;
import com.fengzi.curd.bean.UserContactsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserContactsMapper {
    long countByExample(UserContactsExample example);

    int deleteByExample(UserContactsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(UserContacts record);

    int insertSelective(UserContacts record);

    List<UserContacts> selectByExample(UserContactsExample example);

    UserContacts selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") UserContacts record, @Param("example") UserContactsExample example);

    int updateByExample(@Param("record") UserContacts record, @Param("example") UserContactsExample example);

    int updateByPrimaryKeySelective(UserContacts record);

    int updateByPrimaryKey(UserContacts record);
}
package com.fengzi.ITSS.test;

import java.io.InputStream;
import java.util.Properties;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PropertiesLoaderUtils;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.fengzi.ITSS.dao.userLoginMapper;
import com.fengzi.ITSS.service.utilService;

/**
 * 
 * @author FengZY 测试DAO层相关服务 测试CURD是否正常
 */
@Configuration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class MapperTest {

	@Value("${jdbc.user}")
	private String jdbcuser;

	Properties pros = new Properties();
	InputStream is = PropertiesLoaderUtils.class.getClassLoader().getResourceAsStream("dbconfig.propertise");

	@Autowired
	utilService utilservice;

	@Autowired
	userLoginMapper userloginMapper;

	@Autowired
	SqlSession sqlSession;

	@Test
	public void TEST_CURD() {
		System.out.println(jdbcuser);
		jdbcuser = "abc";
		System.out.println(jdbcuser);
		// 测试数据插入 ，测试通过
		// userloginMapper.insert(new userLogin(null,"ZHANGSAN"," "," "," "," "," ","
		// "));

		// 测试根据条件统计数量
		// userLoginExample uLoginExample=new userLoginExample();
		// Criteria criteria =uLoginExample.createCriteria();
		// criteria.andUseridEqualTo("admin");
		// criteria.andUserpasswordEqualTo("admin");
		// long num =userloginMapper.countByExample(uLoginExample);

		// 测试登录id是否存在 ，测试通过
		// long num = userloginMapper.selectByUserId("admin");
		// System.out.println("num="+num);

		// 测试员工删除按照主键 ，测试通过
		// userloginMapper.deleteByPrimaryKey(2);

		// 测试员工删除，按照样例 ，测试通过
		// userLoginExample uLoginExample=new userLoginExample();
		// Criteria criteria=uLoginExample.createCriteria();
		// criteria.andUseridEqualTo("ZHANGSAN");
		// userloginMapper.deleteByExample(uLoginExample);

		// 测试数据更新，测试通过。通过主键更新，必须填写好主键字段才能更新。
		// 带有的Selective方法，是有选择的更新，不必bean的所有字段填写完成。
		// userLogin uLogin=new userLogin();
		// uLogin.setId(1);
		// uLogin.setUsername("张三");
		// userloginMapper.updateByPrimaryKeySelective(uLogin);
	}

}

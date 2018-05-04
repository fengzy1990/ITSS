package com.fengzi.ITSS.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;

import com.fengzi.ITSS.bean.Equip;
import com.fengzi.ITSS.bean.EquipExample;
import com.fengzi.ITSS.bean.EquipExample.Criteria;
import com.fengzi.ITSS.dao.EquipMapper;

@Configuration
@Service
public class EquipService {
	@Autowired
	private EquipMapper equipMapper;
	@Value("${jdbc.crt}")
	public String jdbcrt;

	// 获得所有设备
	public List<Equip> getAllEquips() {
		// TODO Auto-generated method stub
		return equipMapper.selectByExample(null);
	}

	// 登录设备
	public void loginEquip(Integer eqId) {
		// TODO Auto-generated method stub
		Equip equip = equipMapper.selectByPrimaryKey(eqId);
		String ip = equip.getEqAddress();
		String port = equip.getEqPort();
		String lname = equip.getEqName();
		String passwd = equip.getEqLoginpassword();

	}

	// 添加设备
	public void addEquip(Equip equip) {
		equipMapper.insertSelective(equip);
	}

	// 更新设备信息
	public void updateEquip(Equip equip) {
		equipMapper.updateByPrimaryKeySelective(equip);
	}

	// 根据ID查找设备信息
	public Equip getEquipsById(Integer eqId) {
		// TODO Auto-generated method stub
		Equip equip = equipMapper.selectByPrimaryKey(eqId);
		return equip;
	}

	// 根据id删除设备
	public void delEquip(Integer eqId) {
		equipMapper.deleteByPrimaryKey(eqId);
	}

	// 批量根据ID删除设备
	public void delEquipList(List<Integer> deList) {
		EquipExample equipExample = new EquipExample();
		Criteria criteria = equipExample.createCriteria();
		criteria.andEqIdIn(deList);
		equipMapper.deleteByExample(equipExample);
	}

	/**
	 * 批量删除
	 * 
	 * @param list
	 */
	public void delEquipBatch(List<Integer> list) {
		// TODO Auto-generated method stub
		EquipExample equipExample = new EquipExample();
		Criteria criteria = equipExample.createCriteria();
		criteria.andEqIdIn(list);
		equipMapper.deleteByExample(equipExample);
	}

}

package com.fengzi.ITSS.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.fengzi.ITSS.bean.Equip;
import com.fengzi.ITSS.bean.Msg;
import com.fengzi.ITSS.service.EquipService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class EquipController {
	@Autowired
	EquipService equipService;

	/**
	 * 返回所有设备信息
	 * 
	 * @param pn
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/getEquips")
	public Msg getAllEquips(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		PageHelper.startPage(pn, 10);
		List<Equip> equips = equipService.getAllEquips();
		PageInfo page = new PageInfo(equips, 10);
		return Msg.success().add("pageInfo", page);
	}

	/**
	 * 登录设备
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/loginEquip/{eqId}", method = RequestMethod.GET)
	public Msg loginEquips(@PathVariable("eqId") Integer eqId) {
		equipService.loginEquip(eqId);
		return Msg.success();
	}

	/**
	 * 根据eqid查找设备信息
	 */
	@ResponseBody
	@RequestMapping(value = "/equip/{id}", method = RequestMethod.GET)
	public Msg getEquip(@PathVariable("eqId") Integer eqId) {
		Equip equip = equipService.getEquipsById(eqId);
		return Msg.success().add("equip", equip);
	}
}

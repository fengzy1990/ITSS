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
	@RequestMapping(value = "/loginEquip/{eqId}", method = RequestMethod.PUT)
	public Msg loginEquips(@PathVariable("eqId") Integer eqId) {
		equipService.loginEquip(eqId);
		return Msg.success();
	}

	/**
	 * 根据eqid查找设备信息
	 */
	@ResponseBody
	@RequestMapping(value = "/equip/{eqId}", method = RequestMethod.GET)
	public Msg getEquip(@PathVariable("eqId") Integer eqId) {
		Equip equip = equipService.getEquipsById(eqId);
		return Msg.success().add("equip", equip);
	}

	/**
	 * 增加设备
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/equip", method = RequestMethod.POST)
	public Msg addEquip(@Valid Equip equip, BindingResult bindingResult) {
		System.out.println("----addEquip------");
		if (bindingResult.hasErrors()) {
			Map<String, Object> map = new HashMap<>();
			List<FieldError> list = bindingResult.getFieldErrors();
			for (FieldError fieldError : list) {
				map.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			return Msg.fail().add("errorFields", map);
		} else {
			System.out.println("" + equip.getEqAddress() + equip.getEqPort());
			equipService.addEquip(equip);
			return Msg.success();
		}
	}

	/**
	 * 删除设备，支持批量删除
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/equip/{eqIds}", method = RequestMethod.DELETE)
	public Msg delEquip(@PathVariable("eqIds") String eqIds) {
		if (eqIds.contains("_")) {
			List<Integer> list = new ArrayList<>();
			String[] ids = eqIds.split("_");
			for (String string : ids) {
				list.add(Integer.parseInt(string));
			}
			equipService.delEquipBatch(list);
		} else {
			int id = Integer.parseInt(eqIds);
			equipService.delEquip(id);
		}
		return Msg.success();
	}

	// 更新设备信息
	@ResponseBody
	@RequestMapping(value = "/equip/{eqId}", method = RequestMethod.PUT)
	public Msg updateEquip(Equip equip) {
		equipService.updateEquip(equip);
		return Msg.success();
	}

}

package com.fengzi.ITSS.dao;

import com.fengzi.ITSS.bean.Equip;
import com.fengzi.ITSS.bean.EquipExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EquipMapper {
    long countByExample(EquipExample example);

    int deleteByExample(EquipExample example);

    int deleteByPrimaryKey(Integer eqId);

    int insert(Equip record);

    int insertSelective(Equip record);

    List<Equip> selectByExample(EquipExample example);

    Equip selectByPrimaryKey(Integer eqId);

    int updateByExampleSelective(@Param("record") Equip record, @Param("example") EquipExample example);

    int updateByExample(@Param("record") Equip record, @Param("example") EquipExample example);

    int updateByPrimaryKeySelective(Equip record);

    int updateByPrimaryKey(Equip record);
}
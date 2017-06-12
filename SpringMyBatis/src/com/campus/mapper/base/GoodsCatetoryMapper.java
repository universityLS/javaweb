package com.campus.mapper.base;

import com.campus.entity.GoodsCatetory;
import com.campus.entity.GoodsCatetoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface GoodsCatetoryMapper {
    int countByExample(GoodsCatetoryExample example);

    int deleteByExample(GoodsCatetoryExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(GoodsCatetory record);

    int insertSelective(GoodsCatetory record);

    List<GoodsCatetory> selectByExample(GoodsCatetoryExample example);

    GoodsCatetory selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") GoodsCatetory record, @Param("example") GoodsCatetoryExample example);

    int updateByExample(@Param("record") GoodsCatetory record, @Param("example") GoodsCatetoryExample example);

    int updateByPrimaryKeySelective(GoodsCatetory record);

    int updateByPrimaryKey(GoodsCatetory record);
}
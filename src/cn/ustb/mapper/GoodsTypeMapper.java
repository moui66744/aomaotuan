package cn.ustb.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import cn.ustb.bean.GoodsType;

public interface GoodsTypeMapper {
	public ArrayList<GoodsType> getAllGoodsType();
	public ArrayList<GoodsType> getAllGoodsTypeAndParent();
	public int deleteGoodsTypeById(int typeId);
	public ArrayList<GoodsType> getAllParentType();
	public int insertGoodsType(@Param("goodsType")GoodsType goodsType);
	public int updateGoodsTypePath(@Param("typeId")String typeId);
	public GoodsType getGoodsTypeByTypeId(int typeId);
}
package cn.ustb.service;

import java.util.ArrayList;

import com.github.pagehelper.PageInfo;

import cn.ustb.bean.GoodsType;

public interface GoodsTypeService {
	public ArrayList<GoodsType> getAllGoodsType();
	public PageInfo<GoodsType> getAllGoodsTypeAndParent(int pageNum);
	public PageInfo<GoodsType> deleteGoodsTypeById(int typeId, int remove_pageNum);
	public ArrayList<GoodsType> getAllParentType();
	public int insertGoodsType(GoodsType goodsType);
	public int updateGoodsType(String typeId);
	public GoodsType getGoodsTypeByTypeId(int typeId);
}
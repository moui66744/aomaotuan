package cn.ustb.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import cn.ustb.bean.Admins;
import cn.ustb.bean.Goods;
import cn.ustb.bean.Shopitems;

public interface ShopitemsMapper {
	public int insertShopitems(@Param("shopitems")Shopitems shopitems);//
	public ArrayList<Shopitems> getAllShopitemsAndGoods(int itemUser);
	public int deleteShopitems(int itemId);
	public Shopitems getOneShopitemsAndGoods(int itemId);
//	public Shopitems getOneShopitemsAndGoods(@Param("itemId")int itemId,@Param("itemNum")int itemNum);
	public int getShopitemsCount(int itemUser);
	public int updateShopitems(@Param("shopitems")Shopitems shopitems);
	
}

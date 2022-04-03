package cn.ustb.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import cn.ustb.bean.Goods;

public interface GoodsMapper {
	public ArrayList<Goods> getAllGoodsAndGoodsType();
	public int deleteGoodsByGoodsId(int goodsId);
	public int insertGoods(@Param("goods")Goods goods);
	public Goods getGoodsByGoodsId(int goodsId);
	public int updateGoods(@Param("goods")Goods goods);
	public ArrayList<Goods> getGoodsByGoodsPrice(@Param("left")double left, @Param("right")double right);
	public ArrayList<Goods> getGoodsByGoodsBrand(@Param("brand") String brand);
	public ArrayList<Goods> getOrderedGoodsByGoodsPriceAsc();
	public ArrayList<Goods> getOrderedGoodsByGoodsPriceDesc();
	public ArrayList<Goods> getGoodsByGoodsTypeId(int goodsTypeId);
	public ArrayList<Goods> getGoodsByTypePid(int typePid);
}

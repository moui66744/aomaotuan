package cn.ustb.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.ustb.bean.Shopitems;
import cn.ustb.mapper.ShopitemsMapper;
import cn.ustb.util.MybatisUtil;

public class ShopitemsServiceImpl implements ShopitemsService{
	

	@Override
	public int insertShopitems(Shopitems shopitems) {
		try {
			SqlSession sqlSession=MybatisUtil.getSqlSession();
			ShopitemsMapper mapper = sqlSession.getMapper(ShopitemsMapper.class);
			int result = mapper.insertShopitems(shopitems);
			sqlSession.commit();
			if(result>0){return 1;}//成功
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;//失败
	}

	@Override
	public ArrayList<Shopitems> getAllShopitemsAndGoods(int itemUser) {
		SqlSession sqlSession=MybatisUtil.getSqlSession();
		ShopitemsMapper mapper = sqlSession.getMapper(ShopitemsMapper.class);
		ArrayList<Shopitems> shopitemsList=new ArrayList<>(); 
		shopitemsList= mapper.getAllShopitemsAndGoods(itemUser);
		return shopitemsList;
	}

	@Override
	public int deleteShopitems(int itemId) {
		try {
			SqlSession sqlSession=MybatisUtil.getSqlSession();
			ShopitemsMapper mapper = sqlSession.getMapper(ShopitemsMapper.class);
			int result = mapper.deleteShopitems(itemId);
			sqlSession.commit();
			if(result>0){return 1;}//成功
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;//失败
	}

	@Override
	public Shopitems getOneShopitemsAndGoods(int itemId) {
		
		SqlSession sqlSession=MybatisUtil.getSqlSession();
		ShopitemsMapper mapper = sqlSession.getMapper(ShopitemsMapper.class);
		Shopitems shopitems=new Shopitems();
		shopitems= mapper.getOneShopitemsAndGoods(itemId);
			
		return shopitems;
	}

	@Override
	public int getShopitemsCount(int itemUser) {
		SqlSession sqlSession=MybatisUtil.getSqlSession();
		ShopitemsMapper mapper = sqlSession.getMapper(ShopitemsMapper.class);
		int result = mapper.getShopitemsCount(itemUser);
		//System.out.println();
		return result;
	}

	@Override
	public int updateShopitems(Shopitems shopitems) {
		try {
			SqlSession sqlSession=MybatisUtil.getSqlSession();
			ShopitemsMapper mapper = sqlSession.getMapper(ShopitemsMapper.class);
			int result = mapper.updateShopitems(shopitems);
			sqlSession.commit();
			if(result>0){return 1;}//成功
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;//失败
	}
	

}

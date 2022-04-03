package cn.ustb.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.ustb.bean.Goods;
import cn.ustb.bean.GoodsType;
import cn.ustb.mapper.GoodsMapper;
import cn.ustb.mapper.GoodsTypeMapper;
import cn.ustb.util.MybatisUtil;

public class GoodsTypeServiceImpl implements GoodsTypeService {

	@Override
	public ArrayList<GoodsType> getAllGoodsType() {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		GoodsTypeMapper mapper = sqlSession.getMapper(GoodsTypeMapper.class);
		ArrayList<GoodsType> allGoodsType = mapper.getAllGoodsType();
		return allGoodsType;
	}

	@Override
	public PageInfo<GoodsType> getAllGoodsTypeAndParent(int pageNum) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		GoodsTypeMapper mapper = sqlSession.getMapper(GoodsTypeMapper.class);
		PageHelper.startPage(pageNum, 5);
		ArrayList<GoodsType> allGoodsType = mapper.getAllGoodsTypeAndParent();
		PageInfo<GoodsType> pageInfo = new PageInfo<>(allGoodsType);
		return pageInfo;
	}

	@Override
	public PageInfo<GoodsType> deleteGoodsTypeById(int typeId, int remove_pageNum) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		GoodsTypeMapper mapper = sqlSession.getMapper(GoodsTypeMapper.class);
		int delete = mapper.deleteGoodsTypeById(typeId);
		sqlSession.commit();
		PageInfo<GoodsType> pagaInfo = getAllGoodsTypeAndParent(remove_pageNum);
		return pagaInfo;
	}

	@Override
	public ArrayList<GoodsType> getAllParentType() {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		GoodsTypeMapper mapper = sqlSession.getMapper(GoodsTypeMapper.class);
		ArrayList<GoodsType> allParentType = mapper.getAllParentType();
		return allParentType;
	}

	@Override
	public int insertGoodsType(GoodsType goodsType) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		GoodsTypeMapper mapper = sqlSession.getMapper(GoodsTypeMapper.class);
		int res = mapper.insertGoodsType(goodsType);
		sqlSession.commit();
		int typeId = goodsType.getTypeId();
		this.updateGoodsType(typeId+"");
		if (res > 0) {
			return 1;
		} 
		return 0;
	}

	@Override
	public int updateGoodsType(String typeId) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		GoodsTypeMapper mapper = sqlSession.getMapper(GoodsTypeMapper.class);
		int res = mapper.updateGoodsTypePath(typeId);
		System.out.println(res);
		sqlSession.commit();
		System.out.println(res);
		return 0;
	}
	
	@Override
	public GoodsType getGoodsTypeByTypeId(int typeId) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		GoodsTypeMapper mapper = sqlSession.getMapper(GoodsTypeMapper.class);
		GoodsType ret = mapper.getGoodsTypeByTypeId(typeId);
		return ret;
	}
	
}

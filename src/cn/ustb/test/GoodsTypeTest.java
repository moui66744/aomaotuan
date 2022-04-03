package cn.ustb.test;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.ustb.bean.GoodsType;
import cn.ustb.mapper.GoodsTypeMapper;
import cn.ustb.service.GoodsTypeService;
import cn.ustb.service.GoodsTypeServiceImpl;
import cn.ustb.util.MybatisUtil;

public class GoodsTypeTest {
	public static void main(String[] args) {
		GoodsTypeService service = new GoodsTypeServiceImpl();
		GoodsType goodsType = new GoodsType();
		goodsType.setTypeLevel(2);
		goodsType.setTypeName("≤‚ ‘");
		goodsType.setTypePath("1");
		goodsType.setTypePid(1);
		service.insertGoodsType(goodsType);
	}
}

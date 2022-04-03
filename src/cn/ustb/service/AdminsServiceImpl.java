package cn.ustb.service;

import org.apache.ibatis.session.SqlSession;

import cn.ustb.bean.Admins;
import cn.ustb.mapper.AdminsMapper;
import cn.ustb.util.MD5Util;
import cn.ustb.util.MybatisUtil;

public class AdminsServiceImpl implements AdminsService {

	@Override
	public Admins getAdminByAdminNameAndAdminPass(String adminName, String adminPass) {
		try {
			SqlSession sqlSession = MybatisUtil.getSqlSession();
			AdminsMapper mapper = sqlSession.getMapper(AdminsMapper.class);
			Admins admin = mapper.getAdminByAdminNameAndAdminPass(adminName, MD5Util.getMd5(adminPass));
			return admin;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}

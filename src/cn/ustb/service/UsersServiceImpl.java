package cn.ustb.service;

import org.apache.ibatis.session.SqlSession;

import cn.ustb.bean.Users;
import cn.ustb.mapper.UsersMapper;
import cn.ustb.util.MybatisUtil;

public class UsersServiceImpl implements UsersService {

	@Override
	public Users getUsersByUserPhoneAndUserPass(String userName, String userPass) {
		System.out.println(1);
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		UsersMapper mapper = sqlSession.getMapper(UsersMapper.class);
		Users users = mapper.getUsersByUserPhoneAndUserPass(userName, userPass);
		return users;
	}

	@Override
	public int insertUsers(Users users) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		UsersMapper mapper = sqlSession.getMapper(UsersMapper.class);
		int res = mapper.insertUsers(users);
		sqlSession.commit();
		return res;
	}
	@Override
	public int changePass(String userName, String newPassword) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		UsersMapper mapper = sqlSession.getMapper(UsersMapper.class);
		int changePass = mapper.changePass(userName, newPassword);
		sqlSession.commit();
		return changePass;
	}



}

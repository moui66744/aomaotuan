package cn.ustb.service;

import org.apache.ibatis.annotations.Param;

import cn.ustb.bean.Users;

public interface UsersService {
	public int changePass(String userName,String newPassword);
	int insertUsers(Users users);
	public Users getUsersByUserPhoneAndUserPass(String userName, String userPass);

}

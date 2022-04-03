package cn.ustb.service;

import cn.ustb.bean.Admins;

public interface AdminsService {
	public Admins getAdminByAdminNameAndAdminPass(String adminName, String adminPass);
}

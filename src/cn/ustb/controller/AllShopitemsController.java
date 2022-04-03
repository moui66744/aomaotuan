package cn.ustb.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ustb.bean.GoodsType;
import cn.ustb.bean.Shopitems;
import cn.ustb.bean.Users;
import cn.ustb.service.GoodsTypeService;
import cn.ustb.service.GoodsTypeServiceImpl;
import cn.ustb.service.ShopitemsService;
import cn.ustb.service.ShopitemsServiceImpl;

@WebServlet("/AllShopitemsController.do")
public class AllShopitemsController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(1);
		ShopitemsService shopitemsService = new ShopitemsServiceImpl();
		
		Users userInfo=new Users();
		userInfo =(Users)request.getSession().getAttribute("users");
		if(userInfo==null){request.getRequestDispatcher("UserLoginController.do").forward(request, response);;}
		System.out.println(userInfo);
		
		
		ArrayList<Shopitems> allShopitemsAndGoods =new ArrayList<>();
		allShopitemsAndGoods= shopitemsService.getAllShopitemsAndGoods(userInfo.getUserId());
		System.out.println(allShopitemsAndGoods);
		request.setAttribute("allShopitemsAndGoods", allShopitemsAndGoods);
		request.getRequestDispatcher("/Cart.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

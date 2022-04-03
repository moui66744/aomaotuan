package cn.ustb.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.pagehelper.PageInfo;

import cn.ustb.bean.Goods;
import cn.ustb.bean.Shopitems;
import cn.ustb.service.GoodsService;
import cn.ustb.service.GoodsServiceImpl;
import cn.ustb.service.ShopitemsService;
import cn.ustb.service.ShopitemsServiceImpl;

@WebServlet("/DeleteShopitemsController.do")
public class DeleteShopitemsController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int itemId = Integer.parseInt(request.getParameter("itemId"));
		ShopitemsService shopitemsService = new ShopitemsServiceImpl();
		int result = shopitemsService.deleteShopitems(itemId);
		request.getRequestDispatcher("/AllShopitemsController.do").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

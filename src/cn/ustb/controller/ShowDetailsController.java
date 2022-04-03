package cn.ustb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ustb.bean.Goods;
import cn.ustb.bean.GoodsType;
import cn.ustb.service.GoodsService;
import cn.ustb.service.GoodsServiceImpl;
import cn.ustb.service.GoodsTypeService;
import cn.ustb.service.GoodsTypeServiceImpl;

/**
 * Servlet implementation class ShowDetailsController
 */
@WebServlet("/ShowDetailsController.do")
public class ShowDetailsController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("111");
		int goodsId = Integer.parseInt(request.getParameter("goodsId"));
		String strLstGoodsId = request.getParameter("lstGoodsId");
		GoodsService goodsService = new GoodsServiceImpl();
		Goods goods = goodsService.getGoodsByGoodsId(goodsId);
		GoodsTypeService goodsTypeService = new GoodsTypeServiceImpl();
		GoodsType goodsPtype = goodsTypeService.getGoodsTypeByTypeId(goods.getGoodsType().getTypePid());
		System.out.println("hello");
		request.setAttribute("goods", goods);
		request.setAttribute("goodsPtype", goodsPtype);
		System.out.println("nsa"+strLstGoodsId);
		if(strLstGoodsId != null && strLstGoodsId!="") {
			System.out.println("la"+strLstGoodsId);
			int lstGoodsId  = Integer.parseInt(strLstGoodsId);
			Goods lstGoods = goodsService.getGoodsByGoodsId(lstGoodsId);
			request.setAttribute("lstGoods", lstGoods);
		}
		
		request.getRequestDispatcher("details.jsp").forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

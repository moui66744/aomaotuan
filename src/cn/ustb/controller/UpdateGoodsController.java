package cn.ustb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ustb.bean.Goods;
import cn.ustb.service.GoodsService;
import cn.ustb.service.GoodsServiceImpl;

@WebServlet("/admin/UpdateGoodsController.do")
public class UpdateGoodsController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Goods goods = new Goods();
		goods.setGoodsId(Integer.parseInt(request.getParameter("goodsId")));
		goods.setGoodsName(request.getParameter("goodsName"));
		goods.setGoodsPrice(Double.parseDouble(request.getParameter("goodsPrice")));
		goods.setGoodsNum(Integer.parseInt(request.getParameter("goodsNum")));
		goods.setGoodsTypeId(Integer.parseInt(request.getParameter("goodsType")));
		
		GoodsService service = new GoodsServiceImpl();
		int res = service.updateGoods(goods);
		
		if (res > 0) {
			request.getRequestDispatcher("GoodsController.do").forward(request, response);
		} else {
			request.getRequestDispatcher("OneGoodsController.do?goodsId="+goods.getGoodsId()).forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

package cn.ustb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.pagehelper.PageInfo;

import cn.ustb.bean.Goods;
import cn.ustb.service.GoodsService;
import cn.ustb.service.GoodsServiceImpl;

@WebServlet("/admin/DeleteGoodsController.do")
public class DeleteGoodsController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int goodsId = Integer.parseInt(request.getParameter("goodsId"));
		int remove_pageNum = Integer.parseInt(request.getParameter("remove_pageNum"));
		GoodsService goodsService = new GoodsServiceImpl();
		PageInfo<Goods> pageInfo = goodsService.deleteGoodsByGoodsId(goodsId, remove_pageNum);
		request.setAttribute("pageInfo", pageInfo);
		request.getRequestDispatcher("/admin/goods/show.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

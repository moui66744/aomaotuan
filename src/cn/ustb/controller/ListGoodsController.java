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

/**
 * Servlet implementation class ListGoodsController
 */
@WebServlet("/ListGoodsController.do")
public class ListGoodsController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		String pos = request.getParameter("pos");
		String order = request.getParameter("order");
		int newPageNum = 1; 
		System.out.println("hello");
		String pageNum = request.getParameter("pageNum");
		if (pageNum != null) {
			newPageNum = Integer.parseInt(pageNum);
		}
		GoodsService service = new GoodsServiceImpl();
		PageInfo<Goods> pageInfo;
		if(type == null) {
			pageInfo = service.getListPageGoodsByPageNum(newPageNum);
		} else {
			pageInfo = service.getOrderedGoodsByGoodsPrice(newPageNum, order);
		}
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("type", type);
		request.setAttribute("order", order);
		System.out.println(pageInfo);
		request.getRequestDispatcher(pos).forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

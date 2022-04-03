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

@WebServlet("/admin/GoodsController.do")
public class GoodsController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int newPageNum = 1; 
		String pageNum = request.getParameter("pageNum");
		if (pageNum != null) {
			newPageNum = Integer.parseInt(pageNum);
		}
		GoodsService service = new GoodsServiceImpl();
		PageInfo<Goods> pageInfo = service.getPageGoodsByPageNum(newPageNum);
		request.setAttribute("pageInfo", pageInfo);
		request.getRequestDispatcher("/admin/goods/show.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

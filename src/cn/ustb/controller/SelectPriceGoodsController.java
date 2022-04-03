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
 * Servlet implementation class SelectPriceGoodsController
 */
@WebServlet("/SelectPriceGoodsController.do")
public class SelectPriceGoodsController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String left = request.getParameter("left");
	    String right = request.getParameter("right");
	    String pos = request.getParameter("pos");
	    GoodsService service = new GoodsServiceImpl();
	    PageInfo<Goods> pageInfo = service.getGoodsByGoodsPrice(Double.parseDouble(left), Double.parseDouble(right));
	    request.setAttribute("pageInfo", pageInfo);
	    System.out.println(pageInfo);
	    request.getRequestDispatcher(pos).forward(request, response);
	    
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

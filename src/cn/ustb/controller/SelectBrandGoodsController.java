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
 * Servlet implementation class SelectBrandGoodsController
 */
@WebServlet("/SelectBrandGoodsController.do")
public class SelectBrandGoodsController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String brand = request.getParameter("brand");
	    String pos = request.getParameter("pos");
	    System.out.println(brand);
	    GoodsService service = new GoodsServiceImpl();
	    PageInfo<Goods> pageInfo;
	    if(brand == null || brand.equals("all")) {
	    	pageInfo = service.getListPageGoodsByPageNum(1);
	    } else {
	    	pageInfo = service.getGoodsByGoodsBrand(brand);
	    }
	    request.setAttribute("pageInfo", pageInfo);
	    System.out.println(pageInfo);
	    request.getRequestDispatcher(pos).forward(request, response);
	    
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

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
 * Servlet implementation class SelectGoodsByGoodsTypeIdOrTypePid
 */
@WebServlet("/SelectGoodsByGoodsTypeIdOrTypePid.do")
public class SelectGoodsByGoodsTypeIdOrTypePid extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    int opt = Integer.parseInt(request.getParameter("opt"));
	    int id = Integer.parseInt(request.getParameter("id"));
	    String pos = request.getParameter("pos");
	   // pos = pos + ".jsp";
	    System.out.println(pos);
	    System.out.println(opt);
	    System.out.println(id);
	    GoodsService service = new GoodsServiceImpl();
	    PageInfo<Goods> pageInfo;
	    if(opt == 0) {
	    	pageInfo = service.getGoodsByTypePid(id);
	    }else {
	    	pageInfo = service.getGoodsByGoodsTypeId(id);
	    }
	    request.setAttribute("pageInfo", pageInfo);
	    System.out.println(pageInfo);
	    request.getRequestDispatcher(pos).forward(request, response);
	    
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

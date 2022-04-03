package cn.ustb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.pagehelper.PageInfo;

import cn.ustb.bean.Goods;
import cn.ustb.bean.GoodsType;
import cn.ustb.service.GoodsService;
import cn.ustb.service.GoodsServiceImpl;
import cn.ustb.service.GoodsTypeService;
import cn.ustb.service.GoodsTypeServiceImpl;

/**
 * Servlet implementation class DeleteGoodsTypeController
 */
@WebServlet("/admin/DeleteGoodsTypeController.do")
public class DeleteGoodsTypeController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int typeId = Integer.parseInt(request.getParameter("typeId"));
		int remove_pageNum = Integer.parseInt(request.getParameter("remove_pageNum"));
		GoodsTypeService service = new GoodsTypeServiceImpl();
		PageInfo<GoodsType> pageInfo = service.deleteGoodsTypeById(typeId, remove_pageNum);
		request.setAttribute("pageInfo", pageInfo);
		request.getRequestDispatcher("/admin/goodstype/show.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

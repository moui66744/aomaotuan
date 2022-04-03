package cn.ustb.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.pagehelper.PageInfo;

import cn.ustb.bean.GoodsType;
import cn.ustb.service.GoodsTypeService;
import cn.ustb.service.GoodsTypeServiceImpl;


@WebServlet("/admin/GetAllGoodsTypeController.do")
public class GetAllGoodsTypeController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int newPageNum = 1;
		String pageNum = request.getParameter("pageNum"); 
		if (pageNum != null) {
			newPageNum = Integer.parseInt(pageNum);
		}
		GoodsTypeService service = new GoodsTypeServiceImpl();
		PageInfo<GoodsType> pageInfo = service.getAllGoodsTypeAndParent(newPageNum);
		request.setAttribute("pageInfo", pageInfo);
		request.getRequestDispatcher("/admin/goodstype/show.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

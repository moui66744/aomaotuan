package cn.ustb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ustb.bean.GoodsType;
import cn.ustb.service.GoodsTypeService;
import cn.ustb.service.GoodsTypeServiceImpl;


@WebServlet("/admin/InsertGoodsTypeController.do")
public class InsertGoodsTypeController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GoodsTypeService service = new GoodsTypeServiceImpl();
		GoodsType goodsType = new GoodsType();
		goodsType.setTypeLevel(2);
		goodsType.setTypeName(request.getParameter("typeName"));
		goodsType.setTypePath(request.getParameter("typeId"));
		goodsType.setTypePid(Integer.parseInt(request.getParameter("typeId")));
		int num = service.insertGoodsType(goodsType);
		request.getRequestDispatcher("GetAllGoodsTypeController.do").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

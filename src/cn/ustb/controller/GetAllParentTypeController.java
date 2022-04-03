package cn.ustb.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ustb.bean.GoodsType;
import cn.ustb.service.GoodsTypeService;
import cn.ustb.service.GoodsTypeServiceImpl;

@WebServlet("/admin/GetAllParentTypeController.do")
public class GetAllParentTypeController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GoodsTypeService service = new GoodsTypeServiceImpl();
		ArrayList<GoodsType> allParentType = service.getAllParentType();
		request.setAttribute("allParentType", allParentType);
		request.getRequestDispatcher("/admin/goodstype/save.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

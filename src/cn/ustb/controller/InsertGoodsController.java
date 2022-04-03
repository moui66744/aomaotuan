package cn.ustb.controller;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import cn.ustb.bean.Goods;
import cn.ustb.service.GoodsService;
import cn.ustb.service.GoodsServiceImpl;
@WebServlet("/admin/InsertGoodsController.do")
@MultipartConfig
public class InsertGoodsController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Part part = request.getPart("goodsImg");
		String goodsImg = part.getSubmittedFileName();
		String newGoodsImg = UUID.randomUUID().toString().replace("-", "") + goodsImg;
		String realPath = "D:/coding/Java_practive/ustb/WebContent/uploadimg/";
		part.write(realPath + newGoodsImg);
//		System.out.println(realPath + newGoodsImg);
		
		String goodsName = request.getParameter("goodsName");
		String goodsPrice = request.getParameter("goodsPrice");
		String goodsNum = request.getParameter("goodsNum");
		String goodsTypeId = request.getParameter("goodsType");
		
		Goods goods = new Goods();
		goods.setGoodsImg(newGoodsImg);
		goods.setGoodsName(goodsName);
		goods.setGoodsName(goodsName);
		goods.setGoodsNum(Integer.parseInt(goodsNum));
		goods.setGoodsPrice(Double.parseDouble(goodsPrice));
		goods.setGoodsTypeId(Integer.parseInt(goodsTypeId));
		
		GoodsService goodsService = new GoodsServiceImpl();
		int num = goodsService.insertGoods(goods);
		if (num == 0) {
			request.getRequestDispatcher("AllGoodsTypeController.do").forward(request, response);
		} else {
			request.getRequestDispatcher("GoodsController.do").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

package cn.ustb.controller;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.alibaba.fastjson.JSON;

import cn.ustb.bean.Shopitems;
import cn.ustb.bean.Users;
import cn.ustb.service.ShopitemsService;
import cn.ustb.service.ShopitemsServiceImpl;


@WebServlet("/InsertShopitemsController.do")
@MultipartConfig
public class InsertShopitemsController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
//		System.out.println("jiaru");
//		request.getSession().setAttribute("itemUser",1);
		Users userInfo=new Users();
		userInfo =(Users)request.getSession().getAttribute("users");
		
		if(userInfo!=null){
		System.out.println("!!!!!");
		System.out.println(userInfo.getUserId());
		
		Shopitems shopitems=new Shopitems();
		shopitems.setItemGoods(Integer.parseInt(request.getParameter("goodsId")));//ajax����
//		shopitems.setItemId(Integer.parseInt(request.getParameter("itemId")));//����
		shopitems.setItemNum(1);
		String parameter = request.getParameter("itemNum");
		if(parameter!=null){
			shopitems.setItemNum(Integer.parseInt(parameter));//ajax����
		}
		
		shopitems.setItemUser(userInfo.getUserId());//session��ȡ
		ShopitemsService service=new ShopitemsServiceImpl();
		
		//�ȳ��Ը���
		int updateResult = service.updateShopitems(shopitems);
		//��������޹����Ͳ���
		if(updateResult==0){
			int insertResult = service.insertShopitems(shopitems);
		}
		
		int shopitemsCount = service.getShopitemsCount(userInfo.getUserId());
		System.out.println("count###");
		System.out.println(shopitemsCount);
		request.getSession().setAttribute("shopitemsCount", shopitemsCount);
//		String a=""+shopitemsCount;
//		response.getWriter().print(JSON.toJSONString(shopitemsCount));
//		return JSON.toJSONString(a);
//		System.out.println(shopitems);
//		request.getRequestDispatcher("abc").forward(request, response);
		//���ظ���Ʒ����֮ǰ��controller
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

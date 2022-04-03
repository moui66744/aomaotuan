package cn.ustb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import cn.ustb.bean.Shopitems;
import cn.ustb.service.ShopitemsService;
import cn.ustb.service.ShopitemsServiceImpl;



@WebServlet("/AjaxShopitemsToOrdersController")
public class AjaxShopitemsToOrdersController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		System.out.println("getttt");
		String goodsIdList = request.getParameter("goodsIdList");//注意此时获取的是json字符串
		JSONArray jsongoodsIdList = JSON.parseArray(goodsIdList); //将json字符串转成jsonarry
		System.out.println(jsongoodsIdList);
		
		String goodsNumList = request.getParameter("goodsNumList");//注意此时获取的是json字符串
		JSONArray jsongoodsNumList = JSON.parseArray(goodsNumList); //将json字符串转成jsonarry
		System.out.println(jsongoodsNumList);
		
//		System.out.println(jsongoodsIdList.get(0));
		
//		List idsList = (List) jsongoodsIdList.toList();
//        int[] ids = new int[jsongoodsIdList.size()]; 
		int itemId;
		int itemNum;
		ArrayList<Shopitems> shopitemsList=new ArrayList<>();
        for(int i = 0;i<jsongoodsIdList.size();i++){ 
        	itemId = (Integer) jsongoodsIdList.getInteger(i);
        	itemNum = (Integer) jsongoodsNumList.getInteger(i); 
        	ShopitemsService service=new ShopitemsServiceImpl();
    		Shopitems shopitems=new Shopitems();
    		
    		shopitems = service.getOneShopitemsAndGoods(itemId);
    		shopitems.setItemNum(itemNum);
//    		System.out.println(shopitems);  
    		shopitemsList.add(shopitems);
//             System.out.println(ids[i]+1);
        }
        System.out.println(shopitemsList);
        request.getSession().setAttribute("shopitemsList", shopitemsList);
        
//		for (int i = 0; i < jsongoodsIdList.size(); i++) {
//			Integer.parseInt(jsongoodsIdList.get(i));
//			
//			
//        }
//		System.out.println("wanc");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

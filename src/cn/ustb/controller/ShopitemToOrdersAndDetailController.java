package cn.ustb.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ustb.bean.OrderDetail;
import cn.ustb.bean.OrderRecipients;
import cn.ustb.bean.Orders;
import cn.ustb.bean.Shopitems;
import cn.ustb.bean.Users;
import cn.ustb.service.OrderDetailService;
import cn.ustb.service.OrderDetailServiceImpl;
import cn.ustb.service.OrderRecipientsService;
import cn.ustb.service.OrderRecipientsServiceImpl;
import cn.ustb.service.OrdersService;
import cn.ustb.service.OrdersServiceImpl;
import cn.ustb.service.ShopitemsService;
import cn.ustb.service.ShopitemsServiceImpl;

@WebServlet("/ShopitemToOrdersAndDetailController.do")
public class ShopitemToOrdersAndDetailController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		//获取参数
		ArrayList shopitemsListOb = (ArrayList)request.getSession().getAttribute("shopitemsList");
		int recipientsId = Integer.parseInt(request.getParameter("recipientsIdCheck"));
		int sumPrice = Integer.parseInt(request.getParameter("sumPrice"));
		
		ShopitemsService shopitemsService=new ShopitemsServiceImpl();
		OrdersService ordersService=new OrdersServiceImpl();
		OrderDetailService orderDetailService=new OrderDetailServiceImpl();
		OrderRecipientsService orderRecipientsService=new OrderRecipientsServiceImpl();
		
		//用recipientsId从数据库获取购物车
		OrderRecipients recipients = orderRecipientsService.getOrderRecipientsByRecipientsId(recipientsId);
		
		
		
		//把 购物车 包装成 总订单
		Orders orders=new Orders();
		orders.setOrderAddress(recipients.getRecipientsAddress());
		String orderIdUUID = UUID.randomUUID().toString().replace("-", "");
		orders.setOrderId(orderIdUUID);
		orders.setOrderName(recipients.getRecipientsName());
		orders.setOrderPhone(recipients.getRecipientsPhone());
		orders.setOrderPrice(sumPrice);
		orders.setOrderStatus(2);
		
		Users userInfo=new Users();
		userInfo =(Users)request.getSession().getAttribute("users");
		if(userInfo==null){request.getRequestDispatcher("UserLoginController.do").forward(request, response);}
		System.out.println("!!!!!");
		System.out.println(userInfo.getUserId());
		
		orders.setOrderUser(userInfo.getUserId());
		//订单存入数据库
		int insertOrders = ordersService.insertOrders(orders);
		
		//订单详情
		ArrayList<OrderDetail> orderDetailList=new ArrayList<>();
		for (Object object : shopitemsListOb) {
			OrderDetail orderDetail=new OrderDetail();
			Shopitems shopitems=(Shopitems)object;
			
			orderDetail.setDetailOrder(orderIdUUID);
			orderDetail.setDetailGoods(shopitems.getItemGoods());
			orderDetail.setDetailPrice((float)shopitems.getGoods().getGoodsPrice());
			orderDetail.setDetailNum(shopitems.getItemNum());
			orderDetail.setGoods(shopitems.getGoods());
			orderDetailList.add(orderDetail);
			int insertOrderDetail = orderDetailService.insertOrderDetail(orderDetail);
			
//			System.out.println(shopitems);
			int itemId= shopitems.getItemId();
			int deleteShopitems = shopitemsService.deleteShopitems(itemId);
			
		}
//		for (int i=0;i<shopitemsListOb.size();i++){
////			shopitemsList.add((Shopitems)(shopitemsList.get(i)));
//		}
//		System.out.println(shopitemsList);
		System.out.println("over");
		request.setAttribute("sumPrice", sumPrice);
		System.out.println(recipients);
		request.setAttribute("recipients", recipients);
		request.setAttribute("orderDetailList", orderDetailList);
		
		//取得Application对象  
        ServletContext application=this.getServletContext();  
        //设置Application属性  
        application.setAttribute("orderIdApp", orderIdUUID); 
        
		request.getRequestDispatcher("/Cart-pay.jsp").forward(request, response);
//        request.getRequestDispatcher("UpdateOrderStatusController.do").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

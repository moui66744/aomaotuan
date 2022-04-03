package cn.ustb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ustb.bean.OrderRecipients;
import cn.ustb.bean.Users;
import cn.ustb.service.OrderRecipientsService;
import cn.ustb.service.OrderRecipientsServiceImpl;

/**
 * Servlet implementation class InsertOrderRecipients
 */
@WebServlet("/InsertOrderRecipientsInCartController.do")
public class InsertOrderRecipientsInCartController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String recipientsAddress = request.getParameter("recipientsAddress");
		String recipientsName = request.getParameter("recipientsName");
		String recipientsPhone = request.getParameter("recipientsPhone");
		int recipientsChecked = Integer.parseInt(request.getParameter("recipientsChecked"));
//		int recipientsUser = Integer.parseInt(request.getParameter("recipientsUser"));
		
		//user
		Users userInfo=new Users();
		userInfo =(Users)request.getSession().getAttribute("users");
		if(userInfo==null){request.getRequestDispatcher("UserLoginController.do").forward(request, response);}
		System.out.println("!!!!!");
		System.out.println(userInfo.getUserId());
		
		OrderRecipients orderRecipients = new OrderRecipients();
		orderRecipients.setRecipientsAddress(recipientsAddress);
		orderRecipients.setRecipientsName(recipientsName);
		orderRecipients.setRecipientsPhone(recipientsPhone);
		orderRecipients.setRecipientsChecked(recipientsChecked);
		orderRecipients.setRecipientsUser(userInfo.getUserId());
		//System.out.println(orderRecipients);
		
		OrderRecipientsService service = new OrderRecipientsServiceImpl();
		int res = service.insertOrderRecipients(orderRecipients);
		if (res == -1) {//数量超过10个
			renderData(response, "添加失败，最多保存10条收货地址");
		} else if (res > 0) {//插入成功
			renderData(response, "添加成功");
		} else {//插入失败
			renderData(response, "添加失败");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void renderData(HttpServletResponse response, String data){
		try {
			response.setContentType("text/plain;charset=UTF-8");
			response.getWriter().write(data);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

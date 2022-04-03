package cn.ustb.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ustb.bean.OrderRecipients;
import cn.ustb.service.OrderRecipientsService;
import cn.ustb.service.OrderRecipientsServiceImpl;

@WebServlet("/GetAllOrderRecipientsController.do")
public class GetAllOrderRecipientsController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userId = Integer.parseInt(request.getParameter("userId"));
//		System.out.println(userId);
		OrderRecipientsService service = new OrderRecipientsServiceImpl();
		ArrayList<OrderRecipients> allOrderRecipients = service.getAllOrderRecipientsByUserId(userId);
		request.setAttribute("allOrderRecipients", allOrderRecipients);
		request.getRequestDispatcher("Member-address.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

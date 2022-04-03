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

/**
 * Servlet implementation class RecipientsInCartIndent
 */
@WebServlet("/RecipientsInCartIndent.do")
public class RecipientsInCartIndent extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().setAttribute("userId",1);
		int userId = (int)request.getSession().getAttribute("userId");
		OrderRecipientsService orderRecipientsService=new OrderRecipientsServiceImpl();
		ArrayList<OrderRecipients> orderRecipientsList = orderRecipientsService.getAllOrderRecipientsByUserId(userId);
		request.setAttribute("orderRecipientsList", orderRecipientsList);
		System.out.println(orderRecipientsList);
		request.getRequestDispatcher("/Cart-indent.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

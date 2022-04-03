package cn.ustb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ustb.service.OrderRecipientsService;
import cn.ustb.service.OrderRecipientsServiceImpl;

@WebServlet("/DeleteOrderRecipientsByIdController.do")
public class DeleteOrderRecipientsByIdController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int recipientsId = Integer.parseInt(request.getParameter("recipientsId"));
		OrderRecipientsService service = new OrderRecipientsServiceImpl();
		int res = service.deleteOrderRecipientsById(recipientsId);
		request.getRequestDispatcher("GetAllOrderRecipients.do").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package cn.ustb.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ustb.bean.OrderDetail;
import cn.ustb.service.OrderService;
import cn.ustb.service.OrderServiceImpl;

/**
 * Servlet implementation class UpdateOrderStatusController
 */
@WebServlet("/UpdateOrderStatusController.do")
public class UpdateOrderStatusController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//取得Application对象  
        ServletContext application=this.getServletContext();  
        String orderId = (String)application.getAttribute("orderIdApp");
        OrderService service= new OrderServiceImpl();
        int result = service.updateOrderStatus(orderId);
        application.removeAttribute("orderIdApp");
        request.getRequestDispatcher("Cart-success.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

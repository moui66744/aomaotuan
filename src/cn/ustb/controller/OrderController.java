package cn.ustb.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ustb.bean.Orders;
import cn.ustb.service.OrderService;
import cn.ustb.service.OrderServiceImpl;

@WebServlet("/OrderController")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     OrderService service= new OrderServiceImpl();
	     ArrayList<Orders> ordersType = service.getAllOrdersAndOrdersType();
	     System.out.println(ordersType);
	     request.setAttribute("ordersType", ordersType);
	     request.getRequestDispatcher("/Member-allOrder.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

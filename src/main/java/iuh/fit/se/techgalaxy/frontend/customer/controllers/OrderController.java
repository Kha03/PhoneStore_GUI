package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.OrderDetailResponse;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.OrderResponse;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.DetailStatus;
import iuh.fit.se.techgalaxy.frontend.customer.service.CustomerService;
import iuh.fit.se.techgalaxy.frontend.customer.service.OrderDetailService;
import iuh.fit.se.techgalaxy.frontend.customer.service.OrderService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Controller
@RequestMapping({ "/orders" })
@Slf4j
public class OrderController {

	CustomerService customerServiceImpl;
	OrderService orderServiceImpl;
	OrderDetailService orderDetailServiceImpl;

	@GetMapping()
	public ModelAndView getOrders(

			ModelAndView model) {
		ApiResponse<List<OrderResponse>> orders = orderServiceImpl
				.getOrderByCustomerId("008b425f-fcbe-4b3a-952c-555835a4dc2c");
		
//		orders.getData().forEach(idOrder -> {
//			ApiResponse<List<OrderDetailResponse>> orderDetail = orderDetailServiceImpl
//					.orderDetailByOrderId(idOrder.getId());
//			double total = orderDetail.getData().stream().mapToDouble(t -> t.getPrice() * t.getQuantity()).sum();
//			model.addObject("total", total);
//		});
		
		model.addObject("orders", orders.getData());
		model.addObject("size",orders.getData().size());
		model.setViewName("Orders");
		return model;
	}

	@GetMapping("/orders")
	public ModelAndView getOrderDetailsByOrderId(@RequestParam(value = "idOrder", required = false) String idOrder,
			@RequestParam(value = "cusId", required = false) String cusId, ModelAndView model) {
		String idOrder1 = idOrder;
		ApiResponse<List<OrderDetailResponse>> orderDetail = orderDetailServiceImpl.orderDetailByOrderId(idOrder1);
//		ApiResponse<List<CustomerResponse>> customer = customerServiceImpl.getCustomerById(cusId);
		ApiResponse<List<OrderResponse>> orderRe = orderServiceImpl.getOrderById(idOrder1);

		if (orderDetail != null && orderDetail.getData() != null) {
			List<OrderDetailResponse> orderDetails = orderDetail.getData();

			DetailStatus status = null;
			status = DetailStatus.valueOf(
					orderDetails.stream().map(st -> st.getDetailStatus().toString()).findFirst().orElse("PEN"));
			double total = orderDetails.stream().mapToDouble(t -> t.getPrice() * t.getQuantity()).sum();

			String idOrderDetail = orderRe.getData().stream().map(id -> String.valueOf(id.getId())) // Chuyển đổi id
					.findFirst().orElse(null);

			String address = orderRe.getData().stream().map(order -> order.getAddress()).findFirst().orElse(null);
			model.addObject("idOrderDetail", idOrderDetail);
			model.addObject("total", total);
			model.addObject("address", address);
			model.addObject("orderDetail", orderDetails);
			model.addObject("status", status);

		} else {
			System.out.println("No order details found for idOrder: " + idOrder);
		}
//		model.addObject("cus", customer.getData());
		model.setViewName("Order_Detail");
		return model;
	}
	
	
	
	
}

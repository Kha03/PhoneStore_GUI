package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import iuh.fit.se.techgalaxy.frontend.customer.service.AttributeValueService;
import iuh.fit.se.techgalaxy.frontend.customer.service.ColorService;
import iuh.fit.se.techgalaxy.frontend.customer.service.MemoriesService;
import iuh.fit.se.techgalaxy.frontend.customer.service.ProductService;
import iuh.fit.se.techgalaxy.frontend.customer.service.TrademarkService;
import iuh.fit.se.techgalaxy.frontend.customer.service.UsageCategoryService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Controller
@RequestMapping({"/orders"})
@Slf4j
public class OrderController {

	@GetMapping()
	public ModelAndView getOrders(ModelAndView model) {
		model.setViewName("Order_Detail");
		return model;
	}
}

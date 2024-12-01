package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ProductVariantResponse;
import iuh.fit.se.techgalaxy.frontend.customer.service.ProductService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import lombok.Getter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Controller
@RequestMapping({"/", "/home"})
@Slf4j
public class HomeController {
ProductService productService;
	@GetMapping()
	public ModelAndView getOrders(ModelAndView model) {
		ApiResponse<List<ProductVariantResponse>> response = productService.getAllProductVariant();
		List<ProductVariantResponse> productVariants = response.getData();
		model.addObject("productVariants", productVariants);
		model.setViewName("main");
		return model;
	}
	@GetMapping("/blog")
		public ModelAndView getBlog(ModelAndView model) {
			model.setViewName("blog");
			return model;
		}
}

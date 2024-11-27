package iuh.fit.se.techgalaxy.frontend.customer.controllers;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ProductDetailResponse;
import iuh.fit.se.techgalaxy.frontend.customer.service.ProductService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;

@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Controller
@Slf4j
public class TemplateController {
    ProductService productService;

    @GetMapping("/header")
    public String getHeader(
            Model model,
            HttpServletRequest request
    ) {
        HttpSession session = request.getSession();
        Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
        if (cart != null) {
            List<String> productIds = List.copyOf(cart.keySet());
            ApiResponse<List<ProductDetailResponse>> productDetails = productService.getProductDetailsByIds(productIds);

            for (ProductDetailResponse product : productDetails.getData()) {
                if (cart.containsKey(product.getId())) {
                    product.setQuantity(cart.get(product.getId()));
                }
                product.setProductVariantId(productService.getProductVariant(product.getProductVariantId()).getData().get(0).getName());
            }

            model.addAttribute("cart", productDetails.getData());
            double cartTotal = productDetails.getData().stream()
                    .mapToDouble(product -> (product.getPrice() - product.getPrice() * product.getSale())  * product.getQuantity())
                    .sum();
            model.addAttribute("cartTotal", cartTotal);
        } else {
            model.addAttribute("cartTotal", 0);
        }
        return "header";
    }
    @GetMapping("/footer")
    public String getFooter() {
        return "footer";
    }
}

package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ProductDetailResponse;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ProductVariantResponse;
import iuh.fit.se.techgalaxy.frontend.customer.service.ProductService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import jakarta.servlet.http.HttpSession;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@AllArgsConstructor
public class CartService {

     ProductService productService;
     public void populateCartData(Model model, HttpSession session) {
          Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");

          model.addAttribute("cart", List.of());
          model.addAttribute("cartTotal", 0.0);
          model.addAttribute("cartDiscount", 0.0);
          model.addAttribute("finalTotal", 0.0);

          if (cart == null || cart.isEmpty()) {
               return;
          }

          List<String> productIds = List.copyOf(cart.keySet());
          ApiResponse<List<ProductDetailResponse>> productDetails = productService.getProductDetailsByIds(productIds);

          if (productDetails == null || productDetails.getData() == null || productDetails.getData().isEmpty()) {
               return;
          }


          List<ProductDetailResponse> productDetailResponses = productDetails.getData();

          for (ProductDetailResponse product : productDetailResponses) {
               if (cart.containsKey(product.getId())) {
                    product.setQuantity(cart.get(product.getId()));
               }
               ApiResponse<List<ProductVariantResponse>> variantResponse = productService.getProductVariant(product.getProductVariantId());
               if (variantResponse != null && variantResponse.getData() != null && !variantResponse.getData().isEmpty()) {
                    product.setProductVariantId(variantResponse.getData().get(0).getName());
               }
          }

          // caculate Subtotal, Discount , Final Total
          double cartTotal = 0.0;
          double cartDiscount = 0.0;
          for (ProductDetailResponse product : productDetailResponses) {
               // caculate Subtotal
               double productSubtotal = product.getPrice() * product.getQuantity();
               cartTotal += productSubtotal;

               // caculate Discount
               double productDiscount = product.getPrice() * product.getSale() * product.getQuantity();
               cartDiscount += productDiscount;
          }


          double finalTotal = cartTotal - cartDiscount;


          model.addAttribute("cart", productDetailResponses);
          model.addAttribute("cartTotal", cartTotal);
          model.addAttribute("cartDiscount", cartDiscount);
          model.addAttribute("finalTotal", finalTotal);
          session.setAttribute("finalTotal", finalTotal);
     }
     public void addToCart(String productVariantId, String memoryId, String colorId, HttpSession session) {
          Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
          if (cart == null) {
               cart = new HashMap<>();
          }

          String idToAdd;
          if (memoryId == null && colorId == null) {
               idToAdd = productVariantId;
          } else {
               idToAdd = productService.getVariantDetailIdByVariantIdAndMemoryColor(productVariantId, colorId, memoryId);
          }

          cart.put(idToAdd, cart.getOrDefault(idToAdd, 0) + 1);
          session.setAttribute("cart", cart);
     }
     public void removeFromCart(String productId, HttpSession session) {
          Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
          if (cart != null && cart.containsKey(productId)) {
               cart.remove(productId);
               session.setAttribute("cart", cart);
          }
     }
     public void removeSingleFromCart(String productId, HttpSession session) {
          Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
          if (cart != null && cart.containsKey(productId)) {
               int quantity = cart.get(productId);
               if (quantity > 1) {
                    cart.put(productId, quantity - 1);
               } else {
                    cart.remove(productId);
               }
               session.setAttribute("cart", cart);
          }
     }
        public void addQuantity(String productId, HttpSession session) {
            Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
            if (cart != null && cart.containsKey(productId)) {
                cart.put(productId, cart.get(productId) + 1);
                session.setAttribute("cart", cart);
            }
        }
}

package iuh.fit.se.techgalaxy.frontend.customer.dto.request;

import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.OrderStatus;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.PaymentStatus;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class OrderRequestV2 {
    String customerId;
    String systemUserId;
    @NotBlank(message = "ADDRESS_NOT_EMPTY")
    String address;
    PaymentStatus paymentStatus = PaymentStatus.PENDING;
    OrderStatus orderStatus = OrderStatus.NEW;
    List<ProductDetailOrder> productDetailOrders;

    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    @FieldDefaults(level = AccessLevel.PRIVATE)
     public static class ProductDetailOrder {
        String productVariantDetailId;
        @Size(min = 1, message = "QUANTITY_MIN_1")
        int quantity;
    }
}

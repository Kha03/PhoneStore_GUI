package iuh.fit.se.techgalaxy.frontend.customer.dto.response;

import iuh.fit.se.techgalaxy.frontend.customer.entities.Order;
import iuh.fit.se.techgalaxy.frontend.customer.entities.ProductVariantDetail;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.DetailStatus;
import lombok.*;
import lombok.experimental.FieldDefaults;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class OrderDetailResponse {
    String id;
    DetailStatus detailStatus;
    Order order;
    ProductVariantDetail productVariantDetail;
    Integer quantity;
    Double price;
}

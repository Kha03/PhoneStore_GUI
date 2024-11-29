package iuh.fit.se.techgalaxy.frontend.customer.dto.response;

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
	    OrderResponse order;
	    ProductVariantDetailResponse productVariantDetail;
	    int quantity;
	    double price;
}

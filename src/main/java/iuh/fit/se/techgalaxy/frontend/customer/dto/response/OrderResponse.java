package iuh.fit.se.techgalaxy.frontend.customer.dto.response;

import java.time.LocalDateTime;
import java.util.List;

import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.OrderStatus;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.PaymentStatus;
import lombok.*;
import lombok.experimental.FieldDefaults;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class OrderResponse {
	   String id;
	    CustomerResponse customer;
	    SystemUserResponse systemUser;
	    String address;
	    PaymentStatus paymentStatus;
	    OrderStatus orderStatus;
	    List<OrderDetailResponse> orderDetails;
	    LocalDateTime createdAt;
}

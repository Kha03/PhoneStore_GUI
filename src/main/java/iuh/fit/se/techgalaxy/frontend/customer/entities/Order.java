package iuh.fit.se.techgalaxy.frontend.customer.entities;


import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.OrderStatus;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.PaymentStatus;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Order {

    private String id;

    private Customer customer;

    private SystemUser systemUser;

    private PaymentStatus paymentStatus;

    private String address;

    private OrderStatus orderStatus;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

}

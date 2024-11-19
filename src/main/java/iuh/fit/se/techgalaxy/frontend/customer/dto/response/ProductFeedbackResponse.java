package iuh.fit.se.techgalaxy.frontend.customer.dto.response;

import iuh.fit.se.techgalaxy.frontend.customer.entities.Customer;
import iuh.fit.se.techgalaxy.frontend.customer.entities.ProductVariant;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDateTime;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ProductFeedbackResponse {
     String id;

     Integer feedbackRating;

     String feedbackText;

     Customer customer;

     ProductVariant productVariant;

     LocalDateTime createdAt;

     LocalDateTime updatedAt;
}

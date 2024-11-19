package iuh.fit.se.techgalaxy.frontend.customer.dto.request;

import lombok.*;
import lombok.experimental.FieldDefaults;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ProductFeedbackRequest {
    private String id;

    private Integer feedbackRating;

    private String feedbackText;

    private String customerId;

    private String productVariantId;
}

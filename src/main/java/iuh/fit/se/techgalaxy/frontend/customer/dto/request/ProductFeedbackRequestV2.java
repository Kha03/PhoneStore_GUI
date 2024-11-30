package iuh.fit.se.techgalaxy.frontend.customer.dto.request;

import lombok.*;
import lombok.experimental.FieldDefaults;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ProductFeedbackRequestV2 {
    String feedbackText;
    String customerId;
    String productVariantId;
    List<String> imagePaths;
}

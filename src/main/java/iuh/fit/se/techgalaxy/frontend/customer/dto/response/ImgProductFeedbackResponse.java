package iuh.fit.se.techgalaxy.frontend.customer.dto.response;

import iuh.fit.se.techgalaxy.frontend.customer.entities.ProductFeedback;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDateTime;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ImgProductFeedbackResponse {
    private String id;

    private ProductFeedback productFeedback;

    private String imagePath;

    private String description;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;
}

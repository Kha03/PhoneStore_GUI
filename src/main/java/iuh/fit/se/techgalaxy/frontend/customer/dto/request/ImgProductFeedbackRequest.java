package iuh.fit.se.techgalaxy.frontend.customer.dto.request;

import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ImgProductFeedbackRequest {
	
    private String id;

    private String productFeedbackId;

    private String imagePath;

    private String description;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;
}

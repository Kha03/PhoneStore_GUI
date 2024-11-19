package iuh.fit.se.techgalaxy.frontend.customer.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ImgProductFeedback {

    private String id;

    private ProductFeedback productFeedback;

    private String imagePath;

    private String description;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;
}

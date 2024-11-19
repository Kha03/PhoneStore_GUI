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
public class ProductFeedback {

    private String id;

    private Integer feedbackRating;

    private String feedbackText;

    private Customer customer;

    private ProductVariant productVariant;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;
}

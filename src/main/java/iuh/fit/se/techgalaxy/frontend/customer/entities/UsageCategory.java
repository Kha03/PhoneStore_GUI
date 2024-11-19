package iuh.fit.se.techgalaxy.frontend.customer.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.List;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UsageCategory {
    private String id;

    private String name;

    private String description;

    private String avatar;

    private String status;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    private List<ProductVariant> productVariants;
}

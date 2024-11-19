package iuh.fit.se.techgalaxy.frontend.customer.entities;

import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Product {

    String id;

    String name;

    Trademark trademark;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    List<ProductVariant> productVersions;
}

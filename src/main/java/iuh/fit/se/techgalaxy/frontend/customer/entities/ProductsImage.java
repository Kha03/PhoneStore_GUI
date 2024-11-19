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
public class ProductsImage {

    private String id;

    private String path;

    private Boolean avatar;

    private ProductVariantDetail productVariantDetail;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;
}

package iuh.fit.se.techgalaxy.frontend.customer.dto.response;

import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.ProductStatus;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDateTime;
import java.util.Map;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ProductVariantDetailResponse {
    String id;
    ProductStatus status;
    LocalDateTime createdAt;
    LocalDateTime updatedAt;
    Map<String, ColorQuantity[]> memories;
    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    @FieldDefaults(level = AccessLevel.PRIVATE)
    public static class ColorQuantity {
        Integer viewsCount;
        Double price;
        Double sale;
        Integer quantity;
        String colorId;
    }
}

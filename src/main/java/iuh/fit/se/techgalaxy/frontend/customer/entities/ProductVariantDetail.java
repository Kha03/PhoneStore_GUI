package iuh.fit.se.techgalaxy.frontend.customer.entities;

import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.ProductStatus;
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
public class ProductVariantDetail {

    private String id;
    private ProductVariant productVariant;

    private Color color;

    private Memory memory;

    private Integer viewsCount = 0;

    private Integer quantity;

    private Double price;

    private Double sale;

    private ProductStatus status ;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    private List<OrderDetail> ordersDetails;

    private List<ProductsImage> productsImage;
}

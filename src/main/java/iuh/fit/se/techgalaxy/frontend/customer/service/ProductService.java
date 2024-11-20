package iuh.fit.se.techgalaxy.frontend.customer.service;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ProductPageResponse;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.PagedModel;

import java.util.List;

public interface ProductService {
    PagedModel<EntityModel<ProductPageResponse>> getFilteredProductDetails(
            List<String> trademark, Double minPrice, Double maxPrice,
            List<String> memory, List<String> usageCategoryId, List<String> values,
            String sort, Integer page, Integer size);
}

package iuh.fit.se.techgalaxy.frontend.customer.service;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ProductDetailResponse;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ProductPageResponse;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ProductVariantDetailResponse;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ProductVariantResponse;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.PagedModel;

import java.util.List;
import java.util.Set;

public interface ProductService {
    PagedModel<EntityModel<ProductPageResponse>> getFilteredProductDetails(
            List<String> trademark, Double minPrice, Double maxPrice,
            List<String> memory, List<String> usageCategoryId, List<String> values,
            String sort, Integer page, Integer size);

    ApiResponse<Set<ProductVariantDetailResponse>> getProductVariantDetail(String variantId);

    String getVariantDetailIdByVariantIdAndMemoryColor(String variantId,String colorId, String memoryId);


    ApiResponse<List<ProductDetailResponse>> getProductDetailsByIds(List<String> productDetailIds);

    ApiResponse<List<ProductVariantResponse>> getProductVariant(String variantId);
}

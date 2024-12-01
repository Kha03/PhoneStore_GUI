package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.*;
import iuh.fit.se.techgalaxy.frontend.customer.service.ProductService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.experimental.NonFinal;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.MediaTypes;
import org.springframework.hateoas.PagedModel;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.util.UriComponentsBuilder;
import reactor.core.publisher.Mono;

import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
@Slf4j
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class ProdcutServiceImpl implements ProductService {
    WebClient.Builder webClientBuilder;
    @Value("${api.base-url}")
    @NonFinal
    String baseUrl;

    @Override
    public PagedModel<EntityModel<ProductPageResponse>> getFilteredProductDetails(List<String> trademark, Double minPrice, Double maxPrice, List<String> memory, List<String> usageCategoryId, List<String> values, String sort, Integer page, Integer size) {
        String url = UriComponentsBuilder.fromHttpUrl(baseUrl + "/products/variants/details/filter")
                .queryParamIfPresent("trademark", Optional.ofNullable(trademark))
                .queryParamIfPresent("minPrice", Optional.ofNullable(minPrice))
                .queryParamIfPresent("maxPrice", Optional.ofNullable(maxPrice))
                .queryParamIfPresent("memory", Optional.ofNullable(memory))
                .queryParamIfPresent("usageCategoryId", Optional.ofNullable(usageCategoryId))
                .queryParamIfPresent("values", Optional.ofNullable(values))
                .queryParam("sort", sort)
                .queryParam("page", page)
                .queryParam("size", size)
                .toUriString();
        log.info("url: {}", url);

        ResponseEntity<PagedModel<EntityModel<ProductPageResponse>>> responseEntity =
                webClientBuilder.build().get()
                        .uri(url)
                        .accept(MediaTypes.HAL_JSON).retrieve().toEntity(new ParameterizedTypeReference<PagedModel<EntityModel<ProductPageResponse>>>() {
                        }).block();
        return responseEntity.getBody();
    }

    @Override
    public ApiResponse<Set<ProductVariantDetailResponse>> getProductVariantDetail(String variantId) {
        ApiResponse<Set<ProductVariantDetailResponse>> response = webClientBuilder.build().get()
                .uri(baseUrl + "/products/variants/" + variantId + "/details")
                .retrieve().bodyToMono(new ParameterizedTypeReference<ApiResponse<Set<ProductVariantDetailResponse>>>()
                {}).block();
        return response;
    }

    @Override
    public String getVariantDetailIdByVariantIdAndMemoryColor(String variantId,String colorId, String memoryId) {
        String url = UriComponentsBuilder.fromHttpUrl(baseUrl + "/products/variants/details/getProductVariantDetailByProductVariantAndColorAndMemory")
                .queryParam("productVariantId", variantId)
                .queryParam("color", colorId)
                .queryParam("memory", memoryId)
                .toUriString();

        try {
            // Gửi request và xử lý response
            ApiResponse<List<ProductVariantDetailResponse>> response = webClientBuilder.build()
                    .get()
                    .uri(url)
                    .retrieve()
                    .onStatus(
                            HttpStatusCode::isError,
                            clientResponse -> clientResponse.bodyToMono(ApiResponse.class)
                                    .flatMap(errorBody -> {
                                        String message = errorBody.getMessage();
                                        return Mono.error(new RuntimeException("Error from API: " + message));
                                    })
                    )
                    .bodyToMono(new ParameterizedTypeReference<ApiResponse<List<ProductVariantDetailResponse>>>() {})
                    .block();
            if (response != null && response.getData() != null && !response.getData().isEmpty()) {
                return response.getData().get(0).getId();
            } else {
                throw new RuntimeException("No data found in the API response");
            }
        } catch (Exception e) {
            log.error("Error fetching variant detail: {}", e.getMessage());
            throw new RuntimeException("Failed to fetch product variant details", e);
        }
    }

    @Override
    public ApiResponse<List<ProductDetailResponse>> getProductDetailsByIds(List<String> productDetailIds) {
        String url = UriComponentsBuilder.fromHttpUrl(baseUrl + "/products/variants/details/getProductDetailsByIds")
                .queryParam("productDetailIds", productDetailIds)
                .toUriString();
        ApiResponse<List<ProductDetailResponse>> response = webClientBuilder.build().get().uri(url)
                .retrieve().bodyToMono(new ParameterizedTypeReference<ApiResponse<List<ProductDetailResponse>>>() {
                }).block();
        return response;
    }

    @Override
    public ApiResponse<List<ProductVariantResponse>> getProductVariant(String variantId) {
        try{
            ApiResponse<List<ProductVariantResponse>> response = webClientBuilder.build().get()
                    .uri(baseUrl + "/products/variants/" + variantId)
                    .retrieve().bodyToMono(new ParameterizedTypeReference<ApiResponse<List<ProductVariantResponse>>>() {
                    }).block();
            return response;
        } catch (Exception e) {
            log.error("Error fetching product variant: {}", e.getMessage());
            throw new RuntimeException("Failed to fetch product variant", e);
        }
    }

    @Override
    public ApiResponse<List<ProductVariantResponse>> getAllProductVariant() {
        try {
            return webClientBuilder.build().get()
                    .uri(baseUrl + "/products/variants/all")
                    .retrieve().bodyToMono(new ParameterizedTypeReference<ApiResponse<List<ProductVariantResponse>>>() {
                    }).block();
        }
        catch (Exception e) {
            log.error("Error fetching all product variant: {}", e.getMessage());
            throw new RuntimeException("Failed to fetch all product variant", e);
        }
    }

    @Override
    public ApiResponse<List<ProductsImageResponse>> getProductsImageByVarianttId(String productId) {
        try {
            return webClientBuilder.build().get()
                    .uri(baseUrl + "/products/image/getByVariant/" + productId)
                    .retrieve().bodyToMono(new ParameterizedTypeReference<ApiResponse<List<ProductsImageResponse>>>() {
                    }).block();
        }
        catch (Exception e) {
            log.error("Error fetching product image: {}", e.getMessage());
            throw new RuntimeException("Failed to fetch product image", e);
        }
    }
}


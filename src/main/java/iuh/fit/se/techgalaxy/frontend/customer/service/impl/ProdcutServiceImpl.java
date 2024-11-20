package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ProductPageResponse;
import iuh.fit.se.techgalaxy.frontend.customer.service.ProductService;
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
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClient;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.List;
import java.util.Optional;

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
        String url = UriComponentsBuilder.fromHttpUrl(baseUrl + "/variants/details/filter")
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
}


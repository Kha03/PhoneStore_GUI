package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.UsageCategoryResponse;
import iuh.fit.se.techgalaxy.frontend.customer.service.UsageCategoryService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class UsageCategoryServiceImpl implements UsageCategoryService {
    WebClient webClient;

    @Override
    public ApiResponse<List<UsageCategoryResponse>> getAllUsageCategories() {
        try {
            return webClient.get().uri("/usageCategories")
                    .retrieve().toEntity(new ParameterizedTypeReference<ApiResponse<List<UsageCategoryResponse>>>() {
                    })
                    .block().getBody();
        } catch (NullPointerException e) {
            log.error("Error: ", e);
            return null;
        }
    }
}

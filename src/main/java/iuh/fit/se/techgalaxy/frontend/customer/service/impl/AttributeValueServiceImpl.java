package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ValueResponse;
import iuh.fit.se.techgalaxy.frontend.customer.service.AttributeValueService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class AttributeValueServiceImpl implements AttributeValueService {
    WebClient webClient;

    @Override
    public ApiResponse<List<ValueResponse>> getValueByDriveSize() {
        try {
            ResponseEntity<ApiResponse<List<ValueResponse>>> responseEntity =
                    webClient.get()
                            .uri("attributes/atributevalue/GPU")
                            .retrieve()
                            .toEntity(new ParameterizedTypeReference<ApiResponse<List<ValueResponse>>>() {
                            }).block();
            return responseEntity.getBody();
        } catch (NullPointerException e) {
            log.error("Error: ", e);
        }
        return null;
    }

    @Override
    public ApiResponse<List<ValueResponse>> getValueByScanFre() {
        try {
            ResponseEntity<ApiResponse<List<ValueResponse>>> responseEntity =
                    webClient.get()
                            .uri("attributes/atributevalue/Scan frequency")
                            .retrieve()
                            .toEntity(new ParameterizedTypeReference<ApiResponse<List<ValueResponse>>>() {
                            }).block();
            return responseEntity.getBody();
        } catch (NullPointerException e) {
            log.error("Error: ", e);
        }
        return null;
    }

    @Override
    public ApiResponse<List<ValueResponse>> getValueByVariantId(String variantId) {
        try {
            ResponseEntity<ApiResponse<List<ValueResponse>>> responseEntity =
                    webClient.get()
                            .uri("attributes/attributeByVariantId/" + variantId)
                            .retrieve()
                            .toEntity(new ParameterizedTypeReference<ApiResponse<List<ValueResponse>>>() {
                            }).block();
            return responseEntity.getBody();
        } catch (NullPointerException e) {
            log.error("Error: ", e);
        }
        return null;
    }
}

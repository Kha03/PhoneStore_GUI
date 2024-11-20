package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import iuh.fit.se.techgalaxy.frontend.customer.entities.Trademark;
import iuh.fit.se.techgalaxy.frontend.customer.service.TrademarkService;
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
public class TrademarkServiceImpl implements TrademarkService {

    WebClient webClient;

    @Override
    public ApiResponse<List<Trademark>> getTrademarkAll() {
        try {
            ResponseEntity<ApiResponse<List<Trademark>>> responseEntity =
                    webClient.get()
                            .uri("/trademarks")
                            .retrieve()
                            .toEntity(new ParameterizedTypeReference<ApiResponse<List<Trademark>>>() {
                            }).block();
            return responseEntity.getBody();
        } catch (NullPointerException e) {
            log.error("Error: ", e);
            return null;
        }
    }
}

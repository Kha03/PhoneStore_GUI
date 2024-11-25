package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import iuh.fit.se.techgalaxy.frontend.customer.entities.Color;
import iuh.fit.se.techgalaxy.frontend.customer.service.ColorService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import java.util.List;
import java.util.Set;

@Service
@Slf4j
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class ColorServiceImpl implements ColorService {
    WebClient webClient;
    @Override
    public ApiResponse<List<Color>> getColorsById(Set<String> ids) {
       try {
            return webClient.get()
                    .uri(uriBuilder -> uriBuilder.path("/colors/ids")
                            .queryParam("ids", ids)
                            .build())
                    .retrieve()
                    .toEntity(new ParameterizedTypeReference<ApiResponse<List<Color>>>() {
                    })
                    .block().getBody();
        } catch (NullPointerException e) {
            log.error("Error: ", e);
            return null;
       }
    }
}

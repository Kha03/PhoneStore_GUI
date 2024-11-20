package iuh.fit.se.techgalaxy.frontend.customer.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.hateoas.config.HypermediaWebClientConfigurer;
import org.springframework.web.reactive.function.client.WebClient;
@Configuration
public class WebClientConfig {

    @Value("${api.base-url}")
    private String baseUrl;

    @Bean
    WebClient.Builder hypermediaWebClient(HypermediaWebClientConfigurer configurer) {
        return configurer.registerHypermediaTypes(WebClient.builder());
    }

    @Bean
    WebClient webClient(WebClient.Builder webClientBuilder) {
        return webClientBuilder.baseUrl(baseUrl).build();
    }

}
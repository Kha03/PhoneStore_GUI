package iuh.fit.se.techgalaxy.frontend.customer.service.impl;

import iuh.fit.se.techgalaxy.frontend.customer.dto.request.ProductFeedbackRequestV2;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.CustomerResponse;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ProductFeedbackResponseV2;
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.UploadFileResponse;
import iuh.fit.se.techgalaxy.frontend.customer.service.CustomerService;
import iuh.fit.se.techgalaxy.frontend.customer.service.FileService;
import iuh.fit.se.techgalaxy.frontend.customer.service.ProductFeedBackService;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import jakarta.servlet.http.HttpSession;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.reactive.function.client.WebClient;

import java.util.List;

@Service
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@AllArgsConstructor
@Slf4j
public class ProductFeedBackServiceImpl implements ProductFeedBackService {
    WebClient webClient;
    CustomerService customerService;
    FileService fileService;


    @Override
    public void upFeedBack(String content, String variantId,MultipartFile[] files, HttpSession session) {
        String email = (String) session.getAttribute("email");
        if(email != null) {
            CustomerResponse customerResponse = customerService.getInfoByMail(email, session).getData().get(0);
            String id = customerResponse.getId();
            if (files != null && files.length > 0) {
                List<UploadFileResponse> response = fileService.uploadMultipleFiles(files, "product-feedback");
                if (response != null && !response.isEmpty()) {
                    ProductFeedbackRequestV2 request = new ProductFeedbackRequestV2();
                    request.setCustomerId(id);
                    request.setProductVariantId(variantId);
                    request.setFeedbackText(content);

                    request.setImagePaths(response.stream().map(p -> "product-feedback/"+p.getFileName()).toList());
                    webClient.post()
                            .uri("/product-feedbacks/v2")
                            .header("Authorization", "Bearer " + session.getAttribute("accessToken"))
                            .bodyValue(request)
                            .retrieve()
                            .bodyToMono(ApiResponse.class)
                            .block();
                }
            }
        }
    }

    @Override
    public ApiResponse<List<ProductFeedbackResponseV2>> getFeedBacks(String variantId) {
        return webClient.get()
                .uri("/product-feedbacks/product-variantv2/" + variantId)
                .retrieve()
                .bodyToMono(new ParameterizedTypeReference<ApiResponse<List<ProductFeedbackResponseV2>>>() {
                })
                .block();
    }
}

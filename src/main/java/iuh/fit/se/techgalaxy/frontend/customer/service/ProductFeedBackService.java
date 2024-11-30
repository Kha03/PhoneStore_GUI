package iuh.fit.se.techgalaxy.frontend.customer.service;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ProductFeedbackResponseV2;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface ProductFeedBackService {

    void upFeedBack(String content, String variantId,MultipartFile[] file, HttpSession session);

    ApiResponse<List<ProductFeedbackResponseV2>> getFeedBacks(String variantId);
}

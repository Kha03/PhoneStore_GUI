package iuh.fit.se.techgalaxy.frontend.customer.service;

import java.util.List;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.CustomerResponse;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import jakarta.servlet.http.HttpSession;

public interface CustomerService {
    ApiResponse<List<CustomerResponse>> getInfoByMail(String email, HttpSession session);
}

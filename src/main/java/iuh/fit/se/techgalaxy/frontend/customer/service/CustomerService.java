package iuh.fit.se.techgalaxy.frontend.customer.service;

<<<<<<< HEAD
import java.util.List;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.CustomerResponse;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;

public interface CustomerService {
	ApiResponse<List<CustomerResponse>> getCustomerById(String CustomerId);
=======
import iuh.fit.se.techgalaxy.frontend.customer.dto.response.CustomerResponse;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import jakarta.servlet.http.HttpSession;

import java.util.List;

public interface CustomerService {
    ApiResponse<List<CustomerResponse>> getInfoByMail(String email, HttpSession session);

>>>>>>> 9341e2b12752329331247b73bd8b31c51085d870
}

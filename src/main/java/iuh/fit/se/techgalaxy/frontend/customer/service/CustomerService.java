package iuh.fit.se.techgalaxy.frontend.customer.service;

import java.util.List;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.CustomerResponse;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;

public interface CustomerService {
	ApiResponse<List<CustomerResponse>> getCustomerById(String CustomerId);
}

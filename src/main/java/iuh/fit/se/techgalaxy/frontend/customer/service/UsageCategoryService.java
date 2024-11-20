package iuh.fit.se.techgalaxy.frontend.customer.service;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.UsageCategoryResponse;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;

import java.util.List;

public interface UsageCategoryService {
    ApiResponse<List<UsageCategoryResponse>> getAllUsageCategories();
}

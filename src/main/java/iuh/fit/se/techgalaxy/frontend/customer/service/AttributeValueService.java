package iuh.fit.se.techgalaxy.frontend.customer.service;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.ValueResponse;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;

import java.util.List;

public interface AttributeValueService {
    ApiResponse<List<ValueResponse>> getValueByDriveSize();
    ApiResponse<List<ValueResponse>> getValueByScanFre();

}

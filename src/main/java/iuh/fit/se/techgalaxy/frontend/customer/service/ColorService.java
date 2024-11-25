package iuh.fit.se.techgalaxy.frontend.customer.service;

import iuh.fit.se.techgalaxy.frontend.customer.entities.Color;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;

import java.util.List;
import java.util.Set;

public interface ColorService {

    ApiResponse<List<Color>> getColorsById(Set<String> ids);
}

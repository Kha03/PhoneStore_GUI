package iuh.fit.se.techgalaxy.frontend.customer.service;

import iuh.fit.se.techgalaxy.frontend.customer.entities.Memory;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;

import java.util.List;

public interface MemoriesService {

    ApiResponse<List<Memory>> getAllMemories();
}

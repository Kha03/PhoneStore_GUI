package iuh.fit.se.techgalaxy.frontend.customer.service;

import iuh.fit.se.techgalaxy.frontend.customer.dto.response.UploadFileResponse;
import iuh.fit.se.techgalaxy.frontend.customer.utils.ApiResponse;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface FileService {

    ApiResponse<List<UploadFileResponse>> uploadFile(MultipartFile file, String folder);
}

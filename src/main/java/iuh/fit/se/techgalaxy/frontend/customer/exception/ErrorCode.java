package iuh.fit.se.techgalaxy.frontend.customer.exception;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.experimental.FieldDefaults;
import org.springframework.http.HttpStatus;

@Getter
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public enum ErrorCode {
    UNCATEGORIZED_ERROR(9999, "Uncategorized error", HttpStatus.INTERNAL_SERVER_ERROR),
    CONNECT_REFUSED(5000, "Connection refused: no further information", HttpStatus.INTERNAL_SERVER_ERROR),
    UNAUTHORIZED_ACCESS(401, "Invalid or expired access token", HttpStatus.UNAUTHORIZED),
    GENERAL_ERROR(1000, "An error occurred", HttpStatus.INTERNAL_SERVER_ERROR),
    SERVER_ERROR(1001, "Server error", HttpStatus.INTERNAL_SERVER_ERROR);
    int code;
    String message;
    HttpStatus httpStatus;
}

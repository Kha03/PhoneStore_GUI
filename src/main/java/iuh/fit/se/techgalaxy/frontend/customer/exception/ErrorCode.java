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
    INVALID_KEY(9998, "Invalid key", HttpStatus.UNAUTHORIZED),
    GET_PAYMENT_FAILED(9997, "Get payment failed", HttpStatus.BAD_REQUEST),
    UNCATEGORIZED_ERROR(9999, "Uncategorized error", HttpStatus.INTERNAL_SERVER_ERROR),
    CUSTOMER_NOT_ACTIVE(9997, "An error occurred, please log in again", HttpStatus.BAD_REQUEST),
    CART_EMPTY(9996, "Cart is empty no order, please add product to cart", HttpStatus.BAD_REQUEST),
    CONNECT_REFUSED(5000, "Connection refused: no further information", HttpStatus.INTERNAL_SERVER_ERROR),
    ORDER_CREATION_FAILED(5001, "Order creation failed", HttpStatus.BAD_REQUEST),
    INSUFFICIENT_PRODUCT_QUANTITY(5002, "Insufficient product quantity", HttpStatus.BAD_REQUEST),

    ADRESS_NOT_EMPTY(2000, "Address is not empty", HttpStatus.BAD_REQUEST),
    QUANTITY_MIN_1(2001, "Quantity must be greater than 0", HttpStatus.BAD_REQUEST),
    UNAUTHORIZED_ACCESS(4001, "Invalid or expired access token", HttpStatus.UNAUTHORIZED),
    GENERAL_ERROR(5000, "An error occurred", HttpStatus.INTERNAL_SERVER_ERROR),
    SERVER_ERROR(5001, "Server error", HttpStatus.INTERNAL_SERVER_ERROR);
    int code;
    String message;
    HttpStatus httpStatus;
}

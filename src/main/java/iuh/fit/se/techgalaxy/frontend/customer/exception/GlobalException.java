package iuh.fit.se.techgalaxy.frontend.customer.exception;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.reactive.function.client.WebClientRequestException;
import org.springframework.web.servlet.ModelAndView;

import java.net.ConnectException;
import java.util.Map;

@ControllerAdvice
@Slf4j
public class GlobalException {
    private static final String MIN_ATTRIBUTE = "min";
    private static final String MAX_ATTRIBUTE = "max";

    // Handle all exception
    @ExceptionHandler(Exception.class)
    public ModelAndView handleException(Exception exception) {
        String message = exception.getMessage();
        ErrorCode errorCode = ErrorCode.UNCATEGORIZED_ERROR;
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("status", errorCode.getCode());
        modelAndView.addObject("message", message);
        modelAndView.setViewName("error");
        return modelAndView;
    }

    // Handle AppException Custom
    @ExceptionHandler(AppException.class)
    public ModelAndView handleAppException(AppException ex) {
        ModelAndView modelAndView = new ModelAndView();
        ErrorCode errorCode = ex.getErrorCode();
        modelAndView.addObject("status", errorCode.getCode());
        modelAndView.addObject("message", errorCode.getMessage());
        modelAndView.setViewName("error");
        return modelAndView;
    }

    //
    @ExceptionHandler(WebClientRequestException.class)
    public ModelAndView handleConnectException(ConnectException ex) {
        ErrorCode errorCode = ErrorCode.CONNECT_REFUSED;
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("error");
        modelAndView.addObject("status", errorCode.getCode());
        modelAndView.addObject("message", ex.getMessage());
        return modelAndView;
    }
    // Handle NoResourceFoundException File
//    @ExceptionHandler(NoResourceFoundException.class)
//    public ResponseEntity<DataResponse> handleNoResourceFoundException() {
//        DataResponse dataResponse = DataResponse.builder().status(ErrorCode.NO_RESOURCE_FOUND.getCode()).message(ErrorCode.NO_RESOURCE_FOUND.getMessage()).build();
//        return ResponseEntity.status(ErrorCode.NO_RESOURCE_FOUND.getHttpStatus()).body(dataResponse);
//    }
//    // Handle File Exception
//    @ExceptionHandler({URISyntaxException.class, IOException.class})
//    public ResponseEntity<DataResponse> handleFileException() {
//        DataResponse dataResponse = DataResponse.builder().status(ErrorCode.CREATE_DIRECTORY_FAILED.getCode()).message(ErrorCode.CREATE_DIRECTORY_FAILED.getMessage()).build();
//        return ResponseEntity.status(ErrorCode.CREATE_DIRECTORY_FAILED.getHttpStatus()).body(dataResponse);
//    }
//    // Handle DataIntegrityViolationException
//    @ExceptionHandler(DataIntegrityViolationException.class)
//    public ResponseEntity<DataResponse> handleDataIntegrityViolationException(DataIntegrityViolationException ex) {
//        if (ex.getCause() instanceof ConstraintViolationException) {
//            ErrorCode errorCode = ErrorCode.DATA_DUPLICATE_PRODUCT_DETAIL;
//            return  ResponseEntity.status(errorCode.getHttpStatus()).body(DataResponse.builder().status(errorCode.getCode()).message(errorCode.getMessage()).build());
//        }
//        return handleException();
//    }
//    // Handle Validation Exception
//    @ExceptionHandler(MethodArgumentNotValidException.class)
//    public ResponseEntity<DataResponse> handleValidationException(MethodArgumentNotValidException ex) {
//        ErrorCode errorCode;
//        Map<String, Object> attributes = null;
//
//        try {
//            var fieldError = ex.getBindingResult().getFieldError();
//            if (fieldError != null) {
//                errorCode = ErrorCode.valueOf(fieldError.getDefaultMessage());
//                var constraint = ex.getBindingResult().getAllErrors().get(0).unwrap(ConstraintViolation.class);
//                attributes = constraint.getConstraintDescriptor().getAttributes();
//            } else {
//                errorCode = ErrorCode.INVALID_KEY;
//            }
//        } catch (Exception e) {
//            errorCode = ErrorCode.INVALID_KEY;
//        }
//
//        DataResponse dataResponse = DataResponse.builder()
//                .status(errorCode.getCode())
//                .message(Objects.nonNull(attributes) ? mapAttributeMessage(errorCode.getMessage(), attributes) : errorCode.getMessage())
//                .build();
//
//        return ResponseEntity.status(errorCode.getHttpStatus()).body(dataResponse);
//    }

    private String mapAttributeMessage(String message, Map<String, Object> attributes) {
        String minValue = String.valueOf(attributes.get(MIN_ATTRIBUTE));
        String maxValue = String.valueOf(attributes.get(MAX_ATTRIBUTE));
        return message.replace("{" + MIN_ATTRIBUTE + "}", minValue)
                .replace("{" + MAX_ATTRIBUTE + "}", maxValue);
    }

}

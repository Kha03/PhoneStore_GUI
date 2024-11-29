package iuh.fit.se.techgalaxy.frontend.customer.config;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class AuthInterceptor  implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String token = (String) request.getSession().getAttribute("accessToken");
        if (token == null || token.isEmpty()) {
            response.sendRedirect("/home");
            return false;
        }
        return true;
    }
}

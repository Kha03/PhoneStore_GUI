package iuh.fit.se.techgalaxy.frontend.customer.dto.response;

import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.Gender;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CustommerCreateResponse {
    private String id;
    private String name;
    private String email;
    private Gender gender;
    private String address;
    private int age;
    private LocalDateTime createdAt;

}

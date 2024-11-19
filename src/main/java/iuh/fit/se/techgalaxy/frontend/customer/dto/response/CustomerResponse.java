package iuh.fit.se.techgalaxy.frontend.customer.dto.response;

import iuh.fit.se.techgalaxy.frontend.customer.entities.Account;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.CustomerStatus;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.Gender;
import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CustomerResponse {
    String id;
    CustomerStatus userStatus;
    String name;
    String phone;
    Gender gender;
    String avatar;
    LocalDate dateOfBirth;
    Account account;
}

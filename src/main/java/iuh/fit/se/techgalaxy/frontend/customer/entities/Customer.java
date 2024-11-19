package iuh.fit.se.techgalaxy.frontend.customer.entities;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.CustomerStatus;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.Gender;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Customer {

    private String id;

    private CustomerStatus userStatus;

    @JsonManagedReference(value = "account-customer")
    private Account account;

    private String name;

    private String phone;

    private Gender gender;

    private String avatar;

    private LocalDate dateOfBirth;

    private List<Order> orders;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;
}

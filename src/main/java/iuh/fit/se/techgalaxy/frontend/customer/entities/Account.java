package iuh.fit.se.techgalaxy.frontend.customer.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.List;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Account {
    private String id;

    private String email;

    private String password;

    private List<Role> roles;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    @JsonBackReference(value = "account-systemUser")
    private SystemUser systemUsers;

    @JsonBackReference(value = "account-customer")
    private Customer customers;

    private String refreshToken;
}

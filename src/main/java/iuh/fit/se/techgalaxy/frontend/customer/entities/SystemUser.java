package iuh.fit.se.techgalaxy.frontend.customer.entities;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.Gender;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.SystemUserLevel;
import iuh.fit.se.techgalaxy.frontend.customer.entities.enumeration.SystemUserStatus;
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
public class SystemUser {

    private String id;

    private SystemUserStatus systemUserStatus;

    private SystemUserLevel level;

    @JsonManagedReference(value = "account-systemUser")
    private Account account;

    private String name;

    private String address;

    private String phone;

    private Gender gender;

    private String avatar;

    private List<Order> order;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

}

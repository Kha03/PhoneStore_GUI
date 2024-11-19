package iuh.fit.se.techgalaxy.frontend.customer.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
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
public class Role {

    private String id;

    private String name;

    private boolean active;

    private String description;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    @JsonIgnore
    private List<Account> accounts;

    @JsonIgnoreProperties(value = { "roles" })
    private List<Permission> permissions;
}

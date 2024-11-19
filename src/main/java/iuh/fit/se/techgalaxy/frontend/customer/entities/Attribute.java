package iuh.fit.se.techgalaxy.frontend.customer.entities;

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
public class Attribute {

    private String id;

    private String name;

    private String type;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    private List<Value> values;
}

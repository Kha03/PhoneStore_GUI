package iuh.fit.se.techgalaxy.frontend.customer.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Value {

    private String id;

    private Attribute attribute;

    private String value;

    private ProductVariant productVariant;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;
}

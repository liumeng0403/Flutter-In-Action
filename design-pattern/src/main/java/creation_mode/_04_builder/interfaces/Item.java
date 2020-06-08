package creation_mode._04_builder.interfaces;

import java.math.BigDecimal;

public interface Item {
    String name();
    Packing packing();
    BigDecimal price();
}

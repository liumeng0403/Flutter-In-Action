package creation_mode._04_builder.impls.item.drink;

import creation_mode._04_builder.abstracts.ColdDrink;

import java.math.BigDecimal;

public class Pepsi extends ColdDrink {
    @Override
    public String name() {
        return "Pepsi";
    }

    @Override
    public BigDecimal price() {
        return BigDecimal.valueOf(35.0);
    }
}

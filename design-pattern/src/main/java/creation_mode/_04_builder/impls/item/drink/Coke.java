package creation_mode._04_builder.impls.item.drink;

import creation_mode._04_builder.abstracts.ColdDrink;

import java.math.BigDecimal;

public class Coke extends ColdDrink {
    @Override
    public String name() {
        return "Coke";
    }

    @Override
    public BigDecimal price() {
        return BigDecimal.valueOf(30.0);
    }
}

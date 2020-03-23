package _04_builder.impls.item.bugger;

import _04_builder.abstracts.Burger;

import java.math.BigDecimal;

public class VegBurger extends Burger {
    @Override
    public String name() {
        return "Veg Burger";
    }

    @Override
    public BigDecimal price() {
        return BigDecimal.valueOf(25.0);
    }
}

package _04_builder.impls.item.bugger;

import _04_builder.abstracts.Burger;

import java.math.BigDecimal;

public class ChickenBurger extends Burger {
    @Override
    public String name() {
        return "Chicken Burger";
    }

    @Override
    public BigDecimal price() {
        return BigDecimal.valueOf(50.5);
    }
}

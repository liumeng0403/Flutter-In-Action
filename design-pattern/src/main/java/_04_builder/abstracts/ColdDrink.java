package _04_builder.abstracts;

import _04_builder.impls.pack.Bottle;
import _04_builder.interfaces.Item;
import _04_builder.interfaces.Packing;

import java.math.BigDecimal;

public abstract class ColdDrink implements Item {

    @Override
    public Packing packing() {
        return new Bottle();
    }

    @Override
    public abstract BigDecimal price() ;
}

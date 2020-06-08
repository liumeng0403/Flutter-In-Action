package creation_mode._04_builder.abstracts;

import creation_mode._04_builder.impls.pack.Wrapper;
import creation_mode._04_builder.interfaces.Item;
import creation_mode._04_builder.interfaces.Packing;

import java.math.BigDecimal;

public abstract class Burger implements Item {
    @Override
    public Packing packing() {
        return new Wrapper();
    }

    @Override
    public abstract BigDecimal price() ;
}

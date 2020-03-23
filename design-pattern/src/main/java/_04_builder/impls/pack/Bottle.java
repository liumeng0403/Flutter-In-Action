package _04_builder.impls.pack;

import _04_builder.interfaces.Packing;

public class Bottle implements Packing {
    @Override
    public String pack() {
        return "Bottle";
    }
}

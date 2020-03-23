package _02_abstract_factory.impls.color;

import _02_abstract_factory.interfaces.Color;

public class Red implements Color {
    @Override
    public void fill() {
        System.out.println("Inside Red::fill() method.");
    }
}

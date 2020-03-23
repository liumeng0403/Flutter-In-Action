package _02_abstract_factory.impls.color;

import _02_abstract_factory.interfaces.Color;

public class Blue implements Color {
    @Override
    public void fill() {
        System.out.println("Inside Blue::fill() method.");
    }
}

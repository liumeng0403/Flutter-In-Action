package _10_decorator.impls.shapes;

import _10_decorator.interfaces.Shape;

public class Circle implements Shape {
    @Override
    public void draw() {
        System.out.println("Shape: Circle");
    }
}

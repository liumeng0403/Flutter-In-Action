package creation_mode._01_factory.impls;

import creation_mode._01_factory.interfaces.Shape;

public class Circle implements Shape {
    @Override
    public void draw() {
        System.out.println("Inside Circle::draw() method.");
    }
}

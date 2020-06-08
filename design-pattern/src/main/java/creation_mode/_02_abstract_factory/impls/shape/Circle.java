package creation_mode._02_abstract_factory.impls.shape;

import creation_mode._02_abstract_factory.interfaces.Shape;

public class Circle implements Shape {
    @Override
    public void draw() {
        System.out.println("Inside Circle::draw() method.");
    }
}

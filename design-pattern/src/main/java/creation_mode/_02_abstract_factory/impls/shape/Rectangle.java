package creation_mode._02_abstract_factory.impls.shape;

import creation_mode._02_abstract_factory.interfaces.Shape;

public class Rectangle implements Shape {
    @Override
    public void draw() {
        System.out.println("Inside Rectangle::draw() method.");
    }
}

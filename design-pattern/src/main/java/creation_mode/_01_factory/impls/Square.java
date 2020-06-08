package creation_mode._01_factory.impls;

import creation_mode._01_factory.interfaces.Shape;

public class Square implements Shape {
    @Override
    public void draw() {
        System.out.println("Inside Square::draw() method.");
    }
}

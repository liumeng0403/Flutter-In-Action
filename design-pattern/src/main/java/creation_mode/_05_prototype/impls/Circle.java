package creation_mode._05_prototype.impls;

import creation_mode._05_prototype.abstracts.Shape;

public class Circle extends Shape {
    public Circle(){
        type="Circle";
    }

    @Override
    public void draw() {
        System.out.println("Inside Circle::draw() method.");
    }
}

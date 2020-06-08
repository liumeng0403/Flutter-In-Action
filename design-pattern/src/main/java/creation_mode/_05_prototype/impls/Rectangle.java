package creation_mode._05_prototype.impls;

import creation_mode._05_prototype.abstracts.Shape;

public class Rectangle extends Shape {

    public Rectangle(){
        type="Rectangle";
    }

    @Override
    public void draw() {
        System.out.println("Inside Rectangle::draw() method.");
    }
}

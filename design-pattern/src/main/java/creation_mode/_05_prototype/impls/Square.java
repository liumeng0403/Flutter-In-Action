package creation_mode._05_prototype.impls;

import creation_mode._05_prototype.abstracts.Shape;

public class Square extends Shape {

    public Square(){
        type = "Square";
    }

    @Override
    public void draw() {
        System.out.println("Inside Square::draw() method.");
    }
}

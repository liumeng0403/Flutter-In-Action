package _11_facade.impls;

import _11_facade.interfaces.Shape;

public class Rectangle implements Shape {

    @Override
    public void draw() {
        System.out.println("Rectangle::draw()");
    }

}

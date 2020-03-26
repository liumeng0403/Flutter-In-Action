package _10_decorator;

import _10_decorator.abstracts.ShapeDecorator;
import _10_decorator.impls.decorators.RedShapeDecorator;
import _10_decorator.impls.shapes.Circle;
import _10_decorator.impls.shapes.Rectangle;
import _10_decorator.interfaces.Shape;

public class Test10 {

    // https://www.runoob.com/design-pattern/decorator-pattern.html

    public static void main(String[] args) {
        Shape circle = new Circle();
        ShapeDecorator redCircle = new RedShapeDecorator(new Circle());
        ShapeDecorator redRectangle = new RedShapeDecorator(new Rectangle());

        System.out.println("Circle with normal border");
        circle.draw();
        System.out.println("\nCircle of red border");
        redCircle.draw();
        System.out.println("\nRectangle of red border");
        redRectangle.draw();
    }

}

package _11_facade.facades;

import _11_facade.impls.Circle;
import _11_facade.impls.Rectangle;
import _11_facade.impls.Square;
import _11_facade.interfaces.Shape;

public class ShapeMaker {
    private Shape circle;
    private Shape rectangle;
    private Shape square;

    public ShapeMaker() {
        circle = new Circle();
        rectangle = new Rectangle();
        square = new Square();
    }

    public void drawCircle(){
        circle.draw();
    }
    public void drawRectangle(){
        rectangle.draw();
    }
    public void drawSquare(){
        square.draw();
    }
}

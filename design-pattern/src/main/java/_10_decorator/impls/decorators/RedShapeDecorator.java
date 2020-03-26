package _10_decorator.impls.decorators;

import _10_decorator.abstracts.ShapeDecorator;
import _10_decorator.interfaces.Shape;

public class RedShapeDecorator extends ShapeDecorator {

    public RedShapeDecorator(Shape decoratedShape) {
        super(decoratedShape);
    }

    @Override
    public void draw(){
        decoratedShape.draw();
        setRedBorder(decoratedShape);
    }

    public void setRedBorder(Shape decoratedShape){
        System.out.println("Border Color: Red");
    }

}

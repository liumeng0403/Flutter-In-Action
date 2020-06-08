package creation_mode._02_abstract_factory.factory;

import creation_mode._02_abstract_factory.abstracts.AbstractFactory;
import creation_mode._02_abstract_factory.impls.shape.Circle;
import creation_mode._02_abstract_factory.impls.shape.Rectangle;
import creation_mode._02_abstract_factory.impls.shape.Square;
import creation_mode._02_abstract_factory.interfaces.Color;
import creation_mode._02_abstract_factory.interfaces.Shape;

public class ShapeFactory extends AbstractFactory {
    @Override
    public Color getColor(String color) {
        return null;
    }

    @Override
    public Shape getShape(String shape) {
        if(shape == null){
            return null;
        }
        if(shape.equalsIgnoreCase("CIRCLE")){
            return new Circle();
        } else if(shape.equalsIgnoreCase("RECTANGLE")){
            return new Rectangle();
        } else if(shape.equalsIgnoreCase("SQUARE")){
            return new Square();
        }
        return null;
    }
}

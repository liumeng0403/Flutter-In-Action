package creation_mode._01_factory;

import creation_mode._01_factory.impls.Circle;
import creation_mode._01_factory.impls.Rectangle;
import creation_mode._01_factory.impls.Square;
import creation_mode._01_factory.interfaces.Shape;

public class ShapeFactory {

    public Shape getShape(String shapeType){
        if(shapeType == null){
            return null;
        }else if(shapeType.equalsIgnoreCase("CIRCLE")){
            return new Circle();
        } else if(shapeType.equalsIgnoreCase("RECTANGLE")){
            return new Rectangle();
        } else if(shapeType.equalsIgnoreCase("SQUARE")){
            return new Square();
        } else {
            return null;
        }
    }
}

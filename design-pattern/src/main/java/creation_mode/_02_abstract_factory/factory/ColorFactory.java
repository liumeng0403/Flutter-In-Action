package creation_mode._02_abstract_factory.factory;

import creation_mode._02_abstract_factory.abstracts.AbstractFactory;
import creation_mode._02_abstract_factory.impls.color.Blue;
import creation_mode._02_abstract_factory.impls.color.Green;
import creation_mode._02_abstract_factory.impls.color.Red;
import creation_mode._02_abstract_factory.interfaces.Color;
import creation_mode._02_abstract_factory.interfaces.Shape;

public class ColorFactory extends AbstractFactory {
    @Override
    public Color getColor(String color) {
        if(color == null){
            return null;
        }
        if(color.equalsIgnoreCase("RED")){
            return new Red();
        } else if(color.equalsIgnoreCase("GREEN")){
            return new Green();
        } else if(color.equalsIgnoreCase("BLUE")){
            return new Blue();
        }
        return null;
    }

    @Override
    public Shape getShape(String shape) {
        return null;
    }
}

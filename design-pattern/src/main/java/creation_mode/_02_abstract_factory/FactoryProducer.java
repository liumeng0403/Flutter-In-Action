package creation_mode._02_abstract_factory;

import creation_mode._02_abstract_factory.abstracts.AbstractFactory;
import creation_mode._02_abstract_factory.factory.ColorFactory;
import creation_mode._02_abstract_factory.factory.ShapeFactory;

public class FactoryProducer {
    public static AbstractFactory getFactory(String choice){
        if(choice.equalsIgnoreCase("SHAPE")){
            return new ShapeFactory();
        } else if(choice.equalsIgnoreCase("COLOR")){
            return new ColorFactory();
        }
        return null;
    }
}

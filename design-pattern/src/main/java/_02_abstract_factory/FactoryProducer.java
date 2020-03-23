package _02_abstract_factory;

import _02_abstract_factory.abstracts.AbstractFactory;
import _02_abstract_factory.factory.ColorFactory;
import _02_abstract_factory.factory.ShapeFactory;
import com.sun.javafx.tk.TKPulseListener;

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

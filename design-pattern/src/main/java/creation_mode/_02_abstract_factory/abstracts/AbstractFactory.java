package creation_mode._02_abstract_factory.abstracts;

import creation_mode._02_abstract_factory.interfaces.Color;
import creation_mode._02_abstract_factory.interfaces.Shape;

public abstract class AbstractFactory {
    public abstract Color getColor(String color);
    public abstract Shape getShape(String shape);
}

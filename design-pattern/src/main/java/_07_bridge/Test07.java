package _07_bridge;

import _07_bridge.abstracts.Shape;
import _07_bridge.impls.Circle;
import _07_bridge.impls.circle.GreenCircle;
import _07_bridge.impls.circle.RedCircle;

public class Test07 {

    // https://www.runoob.com/design-pattern/bridge-pattern.html

    public static void main(String[] args) {
        Shape redCircle = new Circle(100,10,10,new RedCircle());
        redCircle.draw();

        Shape greenCircle = new Circle(100,10,10,new GreenCircle());
        greenCircle.draw();
    }
}

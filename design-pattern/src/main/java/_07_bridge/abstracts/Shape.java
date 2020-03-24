package _07_bridge.abstracts;

import _07_bridge.interfaces.DrawAPI;

public abstract class Shape {
    protected DrawAPI drawAPI;
    protected Shape(DrawAPI drawAPI){
        this.drawAPI = drawAPI;
    }
    public abstract void draw();
}

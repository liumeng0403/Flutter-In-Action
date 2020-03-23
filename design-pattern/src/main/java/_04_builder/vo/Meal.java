package _04_builder.vo;

import _04_builder.MealBuilder;
import _04_builder.interfaces.Item;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class Meal {

    private MealBuilder mealBuilder;

    public Meal(MealBuilder mealBuilder){
        this.mealBuilder = mealBuilder;
    }

    public MealBuilder getMealBuilder(){
        return this.mealBuilder;
    }

    private List<Item> items = new ArrayList<>();

    public void addItem(Item item){
        items.add(item);
    }

    public BigDecimal getCost(){
        BigDecimal cost = BigDecimal.valueOf(0);
        for (Item item : items) {
            cost = cost.add(item.price());
        }
        return cost;
    }

    public void showItems(){
        for (Item item : items) {
            System.out.print("Item : "+item.name());
            System.out.print(", Packing : "+item.packing().pack());
            System.out.println(", Price : "+item.price());
        }
    }

}

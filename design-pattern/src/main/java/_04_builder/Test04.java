package _04_builder;

import _04_builder.impls.item.bugger.VegBurger;
import _04_builder.impls.item.drink.Coke;
import _04_builder.vo.Meal;

public class Test04 {

    // https://www.runoob.com/design-pattern/builder-pattern.html

    public static void main(String[] args) {
        Meal meal = MealBuilder
                .getBuilder()
                .addCoke(new Coke())
                .addVegBurger(new VegBurger())
                .build();
        meal.showItems();
        System.out.println("Total Cost: " +meal.getCost());

    }
}

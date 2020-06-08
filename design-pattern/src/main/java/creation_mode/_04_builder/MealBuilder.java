package creation_mode._04_builder;

import creation_mode._04_builder.impls.item.bugger.ChickenBurger;
import creation_mode._04_builder.impls.item.bugger.VegBurger;
import creation_mode._04_builder.impls.item.drink.Coke;
import creation_mode._04_builder.impls.item.drink.Pepsi;
import creation_mode._04_builder.vo.Meal;

public class MealBuilder {

    private Meal meal;

    private MealBuilder(){
        this.meal = new Meal(this);
    }

    public static MealBuilder getBuilder(){
        return new MealBuilder();
    }

    public Meal build(){
        return this.meal;
    }

    public MealBuilder addCoke(Coke coke){
        this.meal.addItem(coke);
        return this.meal.getBuilder();
    }
    public MealBuilder addPepsi(Pepsi pepsi){
        this.meal.addItem(pepsi);
        return this.meal.getBuilder();
    }
    public MealBuilder addVegBurger(VegBurger vegBurger){
        this.meal.addItem(vegBurger);
        return this.meal.getBuilder();
    }
    public MealBuilder addChickenBurger(ChickenBurger chickenBurger){
        this.meal.addItem(chickenBurger);
        return this.meal.getBuilder();
    }

}

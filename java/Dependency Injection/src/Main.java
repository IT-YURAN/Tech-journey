import Entity.*;
public class Main {

    public static void main(String[] args) {

        Engine engine=new Engine(2017,190,"BMW"); // Creating an Engine object (Dependency)

        Car car=new Car("Toyota", 2020, engine); // Injecting Engine dependency when creating Car

        car.drive();
        System.out.println(car.getEngine());

    }
}

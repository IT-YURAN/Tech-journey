package Entity;

public class Car {
    private String maker;
    private int year;
//    private Engine engine=new Engine();  <- This is tightly coupled

    private Engine engine; // Declaring a dependency on Engine

    public Car(String maker,int year,Engine engine){
        this.maker=maker;
        this.year=year;
        this.engine=engine; //Engine Dependency is injected via constructor
    }

    public String getMaker() {
        return maker;
    }

    public int getYear() {
        return year;
    }

    public Engine getEngine() {
        return engine;
    }

    public void drive(){
        engine.start(); // Using the injected Engine dependency
        System.out.println("Driving...");
    }
}

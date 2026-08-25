package Entity;

public class Engine {
    private int year;
    private int hp;
    private String maker;

    public Engine(int year, int hp, String maker) {
        this.year = year;
        this.hp = hp;
        this.maker = maker;
    }

    public int getYear() {
        return year;
    }

    public int getHp() {
        return hp;
    }

    public String getMaker() {
        return maker;
    }
    public void  start(){
        System.out.println("Engine Started...");
    }

    @Override
    public String toString() {
        return "Engine{" +
                "year=" + year +
                ", hp=" + hp +
                ", maker='" + maker + '\'' +
                '}';
    }
}

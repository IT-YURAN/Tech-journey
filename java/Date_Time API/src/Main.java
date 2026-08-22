import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

public class Main {


    public static void main(String[] args) {


        LocalDate today=LocalDate.now();
        System.out.println(today);

        LocalTime thisTime=LocalTime.now();
        System.out.println(thisTime);

        LocalDateTime currentDate=LocalDateTime.now();
        System.out.println(currentDate);


    }
}

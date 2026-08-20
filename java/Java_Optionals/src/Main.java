import java.util.Optional;

public class Main {

    public static void main(String[] args) {

        //Creating an Optional
        Optional<String> empty = Optional.empty();

        Optional<String> present = Optional.of("Hello");

        Optional<String> maybe = Optional.ofNullable("World");

        //Exemples
        System.out.println(maybe.orElseThrow());
        Optional<Integer> length = present.map(String::length);
        System.out.println(length.get());
        int[] numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9};
        System.out.println(findNumber(numbers, 9));
    }

    public static Optional<Integer> findNumber(int[] arr, int number) {

        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == number) {
                return Optional.of(number);
            }
        }
        return Optional.empty();
    }

}

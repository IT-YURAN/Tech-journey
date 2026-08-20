import Model.User;

import java.util.List;

public class Main {


    public static void main(String[] args) {

        List<User> userList=List.of(
                new User(1,"Enzo","Enzo@gmail.com"),
                new User(2,"Yuri","Yuri22@gmail.com"),
                new User(3,"Catia","Catia53@gmail.com"),
                new User(4,"Isabel","IsabelM@gmail.com"),
                new User(5,"Flavio","Flavioantonio@gmail.com"),
                new User(6,"Rodrigo","RodrigoSanto@gmail.com"),
                new User(7,"Gabriel","Gabriel77@gmail.com")
        );


        //All operations that does not return a stream os something is a terminal operator!!
        //All intermediate operations 'Lazy'  only execute when a terminal operator is called.
        List<User> idUser=userList.stream()
                .filter(user-> user.getId()>5).toList(); //Simple filtering operation
        idUser.forEach(System.out::println);

        List<String> userEmails=userList.stream()
                .filter(user -> user.getId()<5)
                .map(user -> user.getEmail()) //Using map() to "modify " user to get only the Email
                .toList();
        userEmails.forEach(System.out::println);


    }
}

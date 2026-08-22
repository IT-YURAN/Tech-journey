package Config;

import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class AppConfig {
    private static String Username="root";
    private static String Password="[<Yuran140521>]";
    private static   String Url="jdbc:mysql://localhost:3306/sqlbasic";

    public static Connection connection=null;

    private AppConfig() {
    }

    public static Connection connect() throws SQLException {

        try {
            if (connection==null|| connection.isClosed()){
                connection= DriverManager.getConnection(Url,Username,Password);
                JOptionPane.showMessageDialog(null,"Connected");
            }
        }catch (SQLException e){
            JOptionPane.showMessageDialog(null,"Error: "+e.getMessage());
        }

        return connection;
    }


    public static void closeConnection() throws SQLException{
     try {
         if (connection!=null && !connection.isClosed()){
             connection.close();
             JOptionPane.showMessageDialog(null,"Connection Closed");
         }
     }catch (SQLException e){
         JOptionPane.showMessageDialog(null,"Error: "+e.getMessage());
     }
    }

}

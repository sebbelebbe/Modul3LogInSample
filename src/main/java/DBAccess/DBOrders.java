package DBAccess;

import Entity.Order;
import FunctionLayer.LoginSampleException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DBOrders {

public ArrayList<Order> getorders(int userid){
        try {
            
            Connection con = Connector.connection();
            String SQL = "";
            PreparedStatement ps = con.prepareStatement( SQL, Statement.RETURN_GENERATED_KEYS );

        } catch ( SQLException | ClassNotFoundException ex ) {
            System.out.println("der er sket en fejl");
        }
        return null;
    }   
}

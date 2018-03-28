package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.User;
import Entity.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 The purpose of UserMapper is to...

 @author kasper
 */
public class UserMapper {

    public static void createUser( User user ) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO Users (email, password, role) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement( SQL, Statement.RETURN_GENERATED_KEYS );
            ps.setString( 1, user.getEmail() );
            ps.setString( 2, user.getPassword() );
            ps.setString( 3, user.getRole() );
            ps.executeUpdate();
            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt( 1 );
            user.setId( id );
        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
    }

    public static User login( String email, String password ) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT id, role FROM Users "
                    + "WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement( SQL );
            ps.setString( 1, email );
            ps.setString( 2, password );
            ResultSet rs = ps.executeQuery();
            if ( rs.next() ) {
                String role = rs.getString( "role" );
                int id = rs.getInt( "id" );
                User user = new User( email, password, role );
                user.setId( id );
                return user;
            } else {
                throw new LoginSampleException( "Could not validate user" );
            }
        } catch ( ClassNotFoundException | SQLException ex ) {
            throw new LoginSampleException(ex.getMessage());
        }
    }
    
    public static ArrayList<Order> GetUserOrders(String userID) throws LoginSampleException{ 
        ArrayList<Order> ordre = new ArrayList();
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT orderID, højde, længde, brede, pris FROM orders WHERE KundeID=?;";
            PreparedStatement ps = con.prepareStatement( SQL);
            ps.setString( 1, userID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
            int height = rs.getInt( "højde" );
            int length  = rs.getInt( "længde" );
            int width = rs.getInt( "brede" );
            int orderID = rs.getInt( "orderID" );
            int pris = rs.getInt( "pris" );
            ordre.add(new Order(height,length,width,1,Integer.parseInt(userID),orderID));
            }
            return ordre;
        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
    }
    
    public static void PerformOrder(Order order) throws LoginSampleException{
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO orders (højde, længde, brede, pris, KundeID) VALUES (?, ?, ?, ?,?)";
            PreparedStatement ps = con.prepareStatement( SQL, Statement.RETURN_GENERATED_KEYS );
            ps.setInt(1, order.højde);
            ps.setInt(2, order.længde);
            ps.setInt(3, order.brede);
            ps.setInt(4, 0);
            ps.setInt(5, order.userID);
            ps.executeUpdate();
            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
        } catch ( SQLException | ClassNotFoundException ex ) {
            throw new LoginSampleException( ex.getMessage() );
        }
    }
    

}

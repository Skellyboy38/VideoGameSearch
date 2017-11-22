package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserTDG {
    public static boolean addUser(UserModel user) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("insert into user (user_id, password, firstname, lastname, email, address1, address2, city, state, zip, country, credit_card_type, credit_card_number, credit_card_cvv, credit_card_expiry) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, user.userId);
            ps.setString(2, user.password);
            ps.setString(3, user.firstName);
            ps.setString(4, user.lastName);
            ps.setString(5, user.email);
            ps.setString(6, user.address1);
            ps.setString(7, user.address2);
            ps.setString(8, user.city);
            ps.setString(9, user.state);
            ps.setString(10, user.zip);
            ps.setString(11, user.country);
            ps.setString(12, user.creditCardType);
            ps.setString(13, user.creditCardNumber);
            ps.setString(14, user.creditCardCvv);
            ps.setString(15, user.creditCardExpiry);
            int rs = ps.executeUpdate();

            return true;
        }
        catch(Exception e){
            e.printStackTrace();
            return false;
        }
        finally {
            try {
                con.close();
            }
            catch(Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static String getPassword(String username) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("select password from user where user_id=?");
            ps.setString(1, username);
            ResultSet result = ps.executeQuery();
            result.next();
            return result.getString("password");
        }
        catch(Exception e){
            e.printStackTrace();
            return "";
        }
        finally {
            try {
                con.close();
            }
            catch(Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static String getEmail(String username) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("select email from user where user_id=?");
            ps.setString(1, username);
            ResultSet result = ps.executeQuery();
            result.next();
            return result.getString("email");
        }
        catch(Exception e){
            e.printStackTrace();
            return "";
        }
        finally {
            try {
                con.close();
            }
            catch(Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static String updateLastLogin(UserModel user, String lastLogin) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("select last_login from user where user_id=?");
            ps.setString(1, user.userId);
            ResultSet result = ps.executeQuery();
            result.next();
            String old_login = result.getString("last_login");

            ps = con.prepareStatement
                             ("update user set last_login=? where user_id=?");
            ps.setString(1, lastLogin);
            ps.setString(2, user.userId);
            int rs = ps.executeUpdate();

            return old_login;
        }
        catch(Exception e){
            e.printStackTrace();
            return "";
        }
        finally {
            try {
                con.close();
            }
            catch(Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static UserModel getUser(String username, String password) {
        Connection con = null;
        UserModel user = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps =con.prepareStatement
                             ("select * from user where user_id=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet result = ps.executeQuery();

            if(result.next()) {
                user = new UserModel(
                    result.getString("user_id"),
                    result.getString("password"),
                    result.getString("firstname"),
                    result.getString("lastname"),
                    result.getString("email"),
                    result.getString("address1"),
                    result.getString("address2"),
                    result.getString("city"),
                    result.getString("state"),
                    result.getString("zip"),
                    result.getString("country"),
                    result.getString("credit_card_type"),
                    result.getString("credit_card_number"),
                    result.getString("credit_card_cvv"),
                    result.getString("credit_card_expiry")
                );
            }

            return user;
        }
        catch(Exception e){
            e.printStackTrace();
            return null;
        }
        finally {
            try {
                con.close();
            }
            catch(Exception e) {
                e.printStackTrace();
            }
        }
    }

}
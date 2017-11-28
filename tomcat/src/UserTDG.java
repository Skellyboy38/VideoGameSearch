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
                             ("insert into user (user_id, password, firstname, lastname, email, address1, address2, city, state, zip, country, credit_card_type, credit_card_number, credit_card_cvv, credit_card_expiry, admin) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
            ps.setInt(16, user.isAdmin);
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

    public static UserModel getUserInfo(String username) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("select * from user where user_id=?");
            ps.setString(1, username);
            ResultSet result = ps.executeQuery();
            result.next();
                UserModel user = new UserModel(
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
                    result.getString("credit_card_expiry"),
                    result.getInt("admin"),
                    result.getInt("blocked"),
                    result.getInt("number_attempts")
                );
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

    public static List<LoginModel> getLogins() {
        Connection con = null;
        List<LoginModel> logins = new ArrayList<LoginModel>();
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps =con.prepareStatement
                             ("select * from login_history");
            ResultSet result = ps.executeQuery();

            while(result.next()) {
                LoginModel login = new LoginModel(
                    result.getString("user_id"),
                    result.getString("date")
                );
                logins.add(login);
            }
            return logins;
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
                    result.getString("credit_card_expiry"),
                    result.getInt("admin"),
                    result.getInt("blocked"),
                    result.getInt("number_attempts")
                );

                ps = con.prepareStatement
                                 ("insert into login_history(user_id, date) values (?, now())");
                ps.setString(1, username);
                ps.executeUpdate();
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

    public static void updateUserInfo(UserModel user, String oldUsername) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("update user set user_id=?, password=?, firstname=?, lastname=?, email=?, address1=?, address2=?, city=?, state=?, zip=?, country=?, credit_card_type=?, credit_card_number=?, credit_card_cvv=?, credit_card_expiry=? where user_id=?");
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
            ps.setString(16, oldUsername);
            int rs = ps.executeUpdate();
        }
        catch(Exception e){
            e.printStackTrace();
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

    public static void setPassword(String username, String newPassword) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("update user set password=? where user_id=?");
            ps.setString(1, newPassword);
            ps.setString(2, username);
            int rs = ps.executeUpdate();
        }
        catch(Exception e){
            e.printStackTrace();
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

    public static int getNumberAttempts(String username) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("select number_attempts from user where user_id=?");
            ps.setString(1, username);
            ResultSet result = ps.executeQuery();
            result.next();
            return result.getInt("number_attempts");
        }
        catch(Exception e){
            e.printStackTrace();
            return 0;
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

    public static int isAdmin(String username) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("select admin from user where user_id=?");
            ps.setString(1, username);
            ResultSet result = ps.executeQuery();
            result.next();
            return result.getInt("admin");
        }
        catch(Exception e){
            e.printStackTrace();
            return 0;
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

    public static List<UserModel> getRegularUsers() {
        Connection con = null;
        List<UserModel> users = new ArrayList<UserModel>();
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps =con.prepareStatement
                             ("select * from user where admin=0");
            ResultSet result = ps.executeQuery();

            while(result.next()) {
                UserModel user = new UserModel(
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
                    result.getString("credit_card_expiry"),
                    result.getInt("admin"),
                    result.getInt("blocked"),
                    result.getInt("number_attempts")
                );
                users.add(user);
            }

            return users;
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

    public static void blockUser(String username) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("update user set blocked=1 where user_id=?");
            ps.setString(1, username);
            ps.executeUpdate();
        }
        catch(Exception e){
            e.printStackTrace();
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

    public static void toggleBlock(String username) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps =con.prepareStatement
                             ("select blocked from user where user_id=?");
            ps.setString(1, username);

            ResultSet result = ps.executeQuery();
            result.next();
            if(result.getInt("blocked") == 1) {
                ps = con.prepareStatement
                             ("update user set blocked=0 where user_id=?");
                ps.setString(1, username);
                ps.executeUpdate();
            }
            else {
                ps = con.prepareStatement
                             ("update user set blocked=1 where user_id=?");
                ps.setString(1, username);
                ps.executeUpdate();
            }
        }
        catch(Exception e){
            e.printStackTrace();
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

    public static void removeFavorite(String username, String gameId) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("delete from favorites where user_id=? and game_id=?");
            ps.setString(1, username);
            ps.setString(2, gameId);
            int rs = ps.executeUpdate();
        }
        catch(Exception e){
            e.printStackTrace();
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

    public static void setNumberAttempts(String username, int numberAttempts) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("update user set number_attempts=? where user_id=?");
            ps.setInt(1, numberAttempts);
            ps.setString(2, username);
            int rs = ps.executeUpdate();
        }
        catch(Exception e){
            e.printStackTrace();
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

    public static void addFavorite(String username, String gameId) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("insert into favorites(user_id, game_id) values (?,?)");
            ps.setString(1, username);
            ps.setString(2, gameId);
            int rs = ps.executeUpdate();
        }
        catch(Exception e){
            e.printStackTrace();
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

    public static List<GameModel> getFavorites(String username) {
        Connection con = null;
        List<GameModel> favorites = new ArrayList<GameModel>();
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("select game_id from favorites where user_id=?");
            ps.setString(1, username);
            ResultSet result = ps.executeQuery();
            while(result.next()) {
                ps = con.prepareStatement
                             ("select * from game where game_id=?");
                ps.setString(1, result.getString("game_id"));
                ResultSet gameResult = ps.executeQuery();
                gameResult.next();
                GameModel gameToAdd = new GameModel(
                    gameResult.getString("game_id"),
                    gameResult.getString("game_name"),
                    gameResult.getString("game_description"),
                    gameResult.getString("console"),
                    gameResult.getString("num_players"),
                    gameResult.getString("coop"),
                    gameResult.getString("genre"),
                    gameResult.getString("release_date"),
                    gameResult.getString("developer"),
                    gameResult.getString("publisher"),
                    gameResult.getString("front_box_art"),
                    gameResult.getString("back_box_art"),
                    gameResult.getString("logo"),
                    gameResult.getString("developer_logo"),
                    gameResult.getString("price"),
                    gameResult.getString("discount"),
                    gameResult.getInt("display"),
                    gameResult.getInt("inventory")
                );
                favorites.add(gameToAdd);
            }
            return favorites;
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
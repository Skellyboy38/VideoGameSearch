package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GameTDG {
    public static List<GameModel> getGames() {
        Connection con = null;
        List<GameModel> games = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from game");
            ResultSet result = ps.executeQuery();
            games = new ArrayList<GameModel>();
            while(result.next()) {
                GameModel gameToAdd = new GameModel(
                    result.getString("game_id"),
                    result.getString("game_name"),
                    result.getString("game_description"),
                    result.getString("console"),
                    result.getString("num_players"),
                    result.getString("coop"),
                    result.getString("genre"),
                    result.getString("release_date"),
                    result.getString("developer"),
                    result.getString("publisher"),
                    result.getString("front_box_art"),
                    result.getString("back_box_art"),
                    result.getString("logo"),
                    result.getString("developer_logo"),
                    result.getString("price"),
                    result.getString("discount"),
                    result.getInt("display")
                );
                games.add(gameToAdd);
            }
            return games;
        }
        catch(Exception e){
            e.printStackTrace();
            return games;
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

    public static List<GameModel> getSpecials() {
        Connection con = null;
        List<GameModel> games = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from game where discount > 0");
            ResultSet result = ps.executeQuery();
            games = new ArrayList<GameModel>();
            while(result.next()) {
                GameModel gameToAdd = new GameModel(
                    result.getString("game_id"),
                    result.getString("game_name"),
                    result.getString("game_description"),
                    result.getString("console"),
                    result.getString("num_players"),
                    result.getString("coop"),
                    result.getString("genre"),
                    result.getString("release_date"),
                    result.getString("developer"),
                    result.getString("publisher"),
                    result.getString("front_box_art"),
                    result.getString("back_box_art"),
                    result.getString("logo"),
                    result.getString("developer_logo"),
                    result.getString("price"),
                    result.getString("discount"),
                    result.getInt("display")
                );
                games.add(gameToAdd);
            }
            return games;
        }
        catch(Exception e){
            e.printStackTrace();
            return games;
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

    public static String getUnitPrice(String gameId) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("select price, discount from game where game_id=?");
            ps.setString(1, gameId);
            ResultSet result = ps.executeQuery();

            result.next();

            String price = result.getString("price");
            String discount = result.getString("discount");
            return "" + Math.round(Float.parseFloat(price) * (100-Float.parseFloat(discount)))/100.0;
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

    public static String getGameName(String gameId) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("select game_name from game where game_id=?");
            ps.setString(1, gameId);
            ResultSet result = ps.executeQuery();

            result.next();

            return result.getString("game_name");
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

    public static GameModel getGame(String gameId) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from game where game_id=?");
            ps.setString(1, gameId);
            ResultSet result = ps.executeQuery();

            result.next();

            GameModel gameToReturn = new GameModel(
                    result.getString("game_id"),
                    result.getString("game_name"),
                    result.getString("game_description"),
                    result.getString("console"),
                    result.getString("num_players"),
                    result.getString("coop"),
                    result.getString("genre"),
                    result.getString("release_date"),
                    result.getString("developer"),
                    result.getString("publisher"),
                    result.getString("front_box_art"),
                    result.getString("back_box_art"),
                    result.getString("logo"),
                    result.getString("developer_logo"),
                    result.getString("price"),
                    result.getString("discount"),
                    result.getInt("display")
            );

            return gameToReturn;
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

    public static void toggleGameVisibility(String gameId) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from game where game_id=?");
            ps.setString(1, gameId);
            ResultSet result = ps.executeQuery();
            result.next();

            int oldDisplay = result.getInt("display");
            int display;
            if(oldDisplay == 1) {
                display = 0;
            }
            else {
                display = 1;
            }

            ps = con.prepareStatement("update game set display=? where game_id=?");
            ps.setInt(1, display);
            ps.setString(2, gameId);
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

}
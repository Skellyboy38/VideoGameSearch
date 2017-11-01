package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CommentTDG {
    public static List<CommentModel> getComments(String gameId) {
        Connection con = null;
        ArrayList<CommentModel> comments = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("select * from comments where game_id=?");
            ps.setString(1, gameId);
            ResultSet reviews = ps.executeQuery();
            comments = new ArrayList<CommentModel>();
            while(reviews.next()) {
                CommentModel commentToAdd = new CommentModel(
                    reviews.getString("comment_id"),
                    reviews.getString("user_id"),
                    gameId,
                    reviews.getString("comment_date"),
                    reviews.getString("comment_details"),
                    reviews.getString("ratings")
                );
                comments.add(commentToAdd);
            }
            return comments;
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

    public static void addComment(CommentModel comment) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("insert into comments(user_id, game_id, comment_date, comment_details, ratings) values(?, ?, ?, ?, ?)");
            ps.setString(1, comment.username);
            ps.setString(2, comment.gameId);
            ps.setString(3, comment.currentDate);
            ps.setString(4, comment.details);
            ps.setString(5, comment.rating);
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

}
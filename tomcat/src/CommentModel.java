package src;

public class CommentModel {
    public String commentId;
    public String username;
    public String gameId;
    public String currentDate;
    public String details;
    public String rating;

    public CommentModel(
        String commentId,
        String username,
        String gameId,
        String currentDate,
        String details,
        String rating
    ) {
        this.commentId = commentId;
        this.username = username;
        this.gameId = gameId;
        this.currentDate = currentDate;
        this.details = details;
        this.rating = rating;
    }


}
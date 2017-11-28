package src;

public class GameModel {

    public String gameId;
    public String gameName;
    public String gameDescription;
    public String console;
    public String numPlayers;
    public String coop;
    public String genre;
    public String releaseDate;
    public String developer;
    public String publisher;
    public String frontBoxArt;
    public String backBoxArt;
    public String logo;
    public String developerLogo;
    public String price;
    public String discount;
    public int display;
    public int inventory;

    public GameModel(
        String gameId,
        String gameName,
        String gameDescription,
        String console,
        String numPlayers,
        String coop,
        String genre,
        String releaseDate,
        String developer,
        String publisher,
        String frontBoxArt,
        String backBoxArt,
        String logo,
        String developerLogo,
        String price,
        String discount,
        int display,
        int inventory
    ) {
        this.gameId = gameId;
        this.gameName = gameName;
        this.gameDescription = gameDescription;
        this.console = console;
        this.numPlayers = numPlayers;
        this.coop = coop;
        this.genre = genre;
        this.releaseDate = releaseDate;
        this.developer = developer;
        this.publisher = publisher;
        this.frontBoxArt = frontBoxArt;
        this.backBoxArt = backBoxArt;
        this.logo = logo;
        this.developerLogo = developerLogo;
        this.price = price;
        this.discount = discount;
        this.display = display;
        this.inventory = inventory;
    }


}
package src;

import java.util.*;

public class GameIdentityMap {

    private List<GameModel> games;
    private boolean isModified;

    public GameIdentityMap() {
        this.games = GameTDG.getGames();
        this.isModified = false;
    }

    public List<GameModel> getGames() {
        if(isModified) {
            this.isModified = false;
            return GameTDG.getGames();
        }
        else {
            return this.games;
        }
    }

    public void modify() {
        this.isModified = true;
    }
}
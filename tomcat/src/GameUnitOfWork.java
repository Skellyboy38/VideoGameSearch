package src;

public class GameUnitOfWork {

    GameModel gameToEdit;

    public GameUnitOfWork() {
        this.gameToEdit = null;
    }

    public void registerGameToEdit(GameModel gameToEdit) {
        this.gameToEdit = gameToEdit;
    }

    public void commit() {
        GameTDG.modifyGame(gameToEdit);
        this.gameToEdit = null;
    }
}
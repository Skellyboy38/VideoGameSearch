package src;

public class UserMapper {

    public static boolean addUser(UserModel user) {
        return UserTDG.addUser(user);
    }

    public static UserModel getUser(String username, String password) {
        return UserTDG.getUser(username, password);
    }
}
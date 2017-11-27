package src;

import java.io.*;
import java.util.*;

public class ValidatePayment {

    public static boolean validatePayment(String username) {
        UserModel user = UserTDG.getUserInfo(username);
        System.out.println(user.creditCardType);
        System.out.println(user.creditCardNumber);
        System.out.println(user.creditCardCvv);
        System.out.println(user.creditCardExpiry);
        return user.creditCardType != null &&
            !user.creditCardType.replaceAll("\\s+","").equals("") &&
            user.creditCardCvv != null &&
            !user.creditCardCvv.replaceAll("\\s+","").equals("") &&
            user.creditCardNumber != null &&
            !user.creditCardNumber.replaceAll("\\s+","").equals("") && 
            user.creditCardExpiry != null &&
            !user.creditCardExpiry.replaceAll("\\s+","").equals("");
    }
}
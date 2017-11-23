package src;

public class UserModel {
    public String userId;
    public String password;
    public String firstName;
    public String lastName;
    public String email;
    public String address1;
    public String address2;
    public String city;
    public String state;
    public String zip;
    public String country;
    public String creditCardType;
    public String creditCardNumber;
    public String creditCardCvv;
    public String creditCardExpiry;
    public int isAdmin;
    public int isBlocked;

    public UserModel(
        String userId,
        String password,
        String firstName,
        String lastName,
        String email,
        String address1,
        String address2,
        String city,
        String state,
        String zip,
        String country,
        String creditCardType,
        String creditCardNumber,
        String creditCardCvv,
        String creditCardExpiry,
        int isAdmin,
        int isBlocked
    ) {
        this.userId = userId;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.address1 = address1;
        this.address2 = address2;
        this.city = city;
        this.state = state;
        this.zip = zip;
        this.country = country;
        this.creditCardType = creditCardType;
        this.creditCardNumber = creditCardNumber;
        this.creditCardCvv = creditCardCvv;
        this.creditCardExpiry = creditCardExpiry;
        this.isAdmin = isAdmin;
        this.isBlocked = isBlocked;
    }


}
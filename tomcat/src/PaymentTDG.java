package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PaymentTDG {
    public static boolean makePayment(String username, String totalPrice) {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("insert into purchase_history (user_id, amount, date) values(?,?, now())");
            ps.setString(1, username);
            ps.setString(2, totalPrice);
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

    public static List<PaymentModel> getPayments() {
        Connection con = null;
        try{
            con = CreateConnection.getConnection();
            PreparedStatement ps = con.prepareStatement
                             ("select * from purchase_history");
            ResultSet result = ps.executeQuery();
            List<PaymentModel> payments = new ArrayList<PaymentModel>();
            while(result.next()) {
                PaymentModel payment = new PaymentModel(
                    result.getString("user_id"),
                    result.getString("amount"),
                    result.getString("date")
                );
                payments.add(payment);
            }
            return payments;
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
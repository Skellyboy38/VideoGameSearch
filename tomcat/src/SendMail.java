package src;

import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class SendMail {

    public static void send(String to, String sub, String msg, final String user, final String password) {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", 587);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(sub);
            message.setText(msg);

            Transport.send(message);
        }
        catch(Exception e) {
            System.out.println(e.getStackTrace());
            System.out.println(e.getMessage());
        }

    }

}
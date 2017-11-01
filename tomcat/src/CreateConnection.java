package src;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;


public class CreateConnection {
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection
                        ("jdbc:mysql://videogamesearch_mysql_1:3306/videogames?autoReconnect=true&useSSL=false","root","password");
            return con;
        }
        catch (Exception e) {
            System.out.println(e.getStackTrace());
            return null;
        }
    }

}
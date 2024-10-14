package com.org.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionHelper {

    private static final String URL = "jdbc:mysql://localhost:3306/?useSSL=false&serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASSWORD = "A@34e678";

    public static Connection getConObj() {
        Connection con = null;
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the connection
            con = DriverManager.getConnection(URL, USER, PASSWORD);
            createDatabaseAndTables(con);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    private static void createDatabaseAndTables(Connection con) {
        Statement stmt = null;
        try {
            stmt = con.createStatement();
            // Check if the 'hospital' database exists, if not, create it
            stmt.executeUpdate("CREATE DATABASE IF NOT EXISTS hospital");

            // Use the 'hospital' database
            stmt.executeUpdate("USE hospital");

            // Create the 'user' table if it does not exist
            String createUserTable = "CREATE TABLE IF NOT EXISTS user (" +
                    "id INT AUTO_INCREMENT PRIMARY KEY, " +
                    "fullname VARCHAR(100) NOT NULL, " +
                    "email VARCHAR(100) NOT NULL UNIQUE, " +
                    "password VARCHAR(255) NOT NULL" +
                    ");";
            stmt.executeUpdate(createUserTable);

            // Create the 'doctor' table if it does not exist
            String createDoctorTable = "CREATE TABLE IF NOT EXISTS doctor (" +
                    "id INT AUTO_INCREMENT PRIMARY KEY, " +
                    "full_name VARCHAR(255) NOT NULL, " +
                    "dob DATE NOT NULL, " +
                    "qualification VARCHAR(255) NOT NULL, " +
                    "specialist VARCHAR(255), " +
                    "email VARCHAR(255) UNIQUE NOT NULL, " +
                    "mobno VARCHAR(15) NOT NULL, " +
                    "password VARCHAR(255) NOT NULL" +
                    ");";
            stmt.executeUpdate(createDoctorTable);

            // Create the 'specialist' table if it does not exist
            String createSpecialistTable = "CREATE TABLE IF NOT EXISTS specialist (" +
                    "id INT AUTO_INCREMENT PRIMARY KEY, " +
                    "spec_name VARCHAR(255) NOT NULL" +
                    ");";
            stmt.executeUpdate(createSpecialistTable);

            // Create the 'appointment' table if it does not exist
            String createAppointmentTable = "CREATE TABLE IF NOT EXISTS appointment (" +
                    "id INT AUTO_INCREMENT PRIMARY KEY, " +
                    "user_id INT NOT NULL, " +
                    "fullname VARCHAR(100) NOT NULL, " +
                    "gender VARCHAR(10) NOT NULL, " +
                    "age VARCHAR(3) NOT NULL, " +
                    "appoint_data DATE NOT NULL, " +
                    "email VARCHAR(100) NOT NULL, " +
                    "phno VARCHAR(15) NOT NULL, " +
                    "disease VARCHAR(255), " +
                    "doctor_id INT NOT NULL, " +
                    "address VARCHAR(255) NOT NULL, " +
                    "status VARCHAR(20) NOT NULL, " +
                    "FOREIGN KEY (user_id) REFERENCES user(id), " +
                    "FOREIGN KEY (doctor_id) REFERENCES doctor(id)" +
                    ");";
            stmt.executeUpdate(createAppointmentTable);

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close the statement
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

package com.org.test;

import com.org.dao.AppointmentDao;
import com.org.entity.Appointment;

import java.util.List;

public class AppointmentDaoTest {

    public static void main(String[] args) {
        AppointmentDao appointmentDao = new AppointmentDao();

        // Test adding an appointment
        testAddAppointment(appointmentDao);

        // Test fetching all appointments for a specific user
        testGetAllAppointmentByLoginUser(appointmentDao, 1); // Assuming userId is 1

        // Test fetching all appointments for a specific doctor
        testGetAllAppointmentByDoctorLogin(appointmentDao, 1); // Assuming doctorId is 1

        // Test fetching an appointment by ID
        testGetAppointmentById(appointmentDao, 1); // Assuming appointment ID is 1

        // Test updating appointment status
        testUpdateCommentStatus(appointmentDao, 1, 1, "Confirmed"); // Assuming id and doctorId are 1
    }

    private static void testAddAppointment(AppointmentDao appointmentDao) {
        Appointment appointment = new Appointment();
        appointment.setUserId(1); // Hardcoded user ID
        appointment.setFullName("John Doe"); // Hardcoded name
        appointment.setGender("Male"); // Hardcoded gender
        appointment.setAge("30"); // Hardcoded age
        appointment.setAppoinDate("2024-10-20"); // Hardcoded appointment date
        appointment.setEmail("johndoe@example.com"); // Hardcoded email
        appointment.setPhNo("1234567890"); // Hardcoded phone number
        appointment.setDiseases("Flu"); // Hardcoded disease
        appointment.setDoctorId(1); // Hardcoded doctor ID
        appointment.setAddress("123 Street Name, City"); // Hardcoded address
        appointment.setStatus("Pending"); // Hardcoded status

        boolean result = appointmentDao.addAppointment(appointment);
        System.out.println("Add Appointment Test: " + (result ? "Success" : "Failure"));
    }

    private static void testGetAllAppointmentByLoginUser(AppointmentDao appointmentDao, int userId) {
        List<Appointment> appointments = appointmentDao.getAllAppointmentByLoginUser(userId);
        System.out.println("Appointments for User ID " + userId + ":");
        for (Appointment appointment : appointments) {
            System.out.println(appointment);
        }
    }

    private static void testGetAllAppointmentByDoctorLogin(AppointmentDao appointmentDao, int doctorId) {
        List<Appointment> appointments = appointmentDao.getAllAppointmentByDoctorLogin(doctorId);
        System.out.println("Appointments for Doctor ID " + doctorId + ":");
        for (Appointment appointment : appointments) {
            System.out.println(appointment);
        }
    }

    private static void testGetAppointmentById(AppointmentDao appointmentDao, int id) {
        Appointment appointment = appointmentDao.getAppointmentById(id);
        System.out.println("Appointment with ID " + id + ": " + appointment);
    }

    private static void testUpdateCommentStatus(AppointmentDao appointmentDao, int id, int doctorId, String status) {
        boolean result = appointmentDao.updateCommentStatus(id, doctorId, status);
        System.out.println("Update Comment Status Test: " + (result ? "Success" : "Failure"));
    }
}

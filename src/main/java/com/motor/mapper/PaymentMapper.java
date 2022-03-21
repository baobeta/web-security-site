package com.motor.mapper;

import com.motor.model.Payment;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PaymentMapper implements RowMapper<Payment> {
    @Override
    public Payment mapRow(ResultSet resultSet) {
        try {
            Payment payment = new Payment();
            payment.setId(resultSet.getInt("id"));
            payment.setName(resultSet.getString("name"));
            return payment;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}

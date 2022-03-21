package com.motor.dao;


import com.motor.model.Brand;
import com.motor.model.Payment;

import java.util.List;

public interface IPaymentDAO {
    List<Payment> findAll();

    Payment findOne(int id);

    Long insert(Payment payment);

    void update(Payment payment);

    void delete(int id);
}

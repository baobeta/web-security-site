package com.motor.service;

import com.motor.model.Payment;

import java.util.List;

public interface IPaymentService {
    List<Payment> findAll();

    Payment findOne(int id);

    Long insert(Payment payment);

    void update(Payment payment);

    void delete(int id);
}

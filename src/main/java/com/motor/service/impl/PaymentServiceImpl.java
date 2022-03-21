package com.motor.service.impl;

import com.motor.dao.IPaymentDAO;
import com.motor.dao.impl.PaymentDAOImpl;
import com.motor.model.Payment;
import com.motor.service.IPaymentService;

import java.util.List;

public class PaymentServiceImpl implements IPaymentService {
    IPaymentDAO paymentDAO = new PaymentDAOImpl();

    @Override
    public List<Payment> findAll() {
        return paymentDAO.findAll();
    }

    @Override
    public Payment findOne(int id) {
        return paymentDAO.findOne(id);
    }

    @Override
    public Long insert(Payment payment) {
        return paymentDAO.insert(payment);
    }

    @Override
    public void update(Payment payment) {
        paymentDAO.update(payment);
    }

    @Override
    public void delete(int id) {
        paymentDAO.delete(id);
    }
}

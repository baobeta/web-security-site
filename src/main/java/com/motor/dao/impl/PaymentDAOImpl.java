package com.motor.dao.impl;

import com.motor.dao.IPaymentDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.PaymentMapper;
import com.motor.model.Payment;

import java.util.List;

public class PaymentDAOImpl extends AbstractDAO<Payment> implements IPaymentDAO {
    @Override
    public List<Payment> findAll() {
        String sql = "select * from PaymentMethods";
        return query(sql, new PaymentMapper());
    }

    @Override
    public Payment findOne(int id) {
        String sql = "select * from PaymentMethods where id = ?";
        List<Payment> payments = query(sql, new PaymentMapper(), id);
        return payments.isEmpty() ? null : payments.get(0);
    }

    @Override
    public Long insert(Payment payment) {
        String sql = "INSERT INTO [dbo].[PaymentMethods] ([name]) VALUES (?);";
        return insert(sql, payment.getName());
    }

    @Override
    public void update(Payment payment) {
        String sql = "UPDATE [dbo].[PaymentMethods] SET [name] = ? WHERE [id] = ?;";
        update(sql, payment.getName(), payment.getId());
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[PaymentMethods] WHERE id = ?";
        update(sql, id);
    }
}

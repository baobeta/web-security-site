package com.motor.service.impl;

import com.motor.dao.IOrderStatusDAO;
import com.motor.dao.impl.OrderStatusDAOImpl;
import com.motor.model.OrderStatus;
import com.motor.service.IOrderStatusService;

import java.util.List;

public class OrderStatusServiceImpl implements IOrderStatusService {
    IOrderStatusDAO orderStatusDAO = new OrderStatusDAOImpl();

    @Override
    public List<OrderStatus> findAll() {
        return orderStatusDAO.findAll();
    }

    @Override
    public OrderStatus findOne(int id) {
        return orderStatusDAO.findOne(id);
    }
}

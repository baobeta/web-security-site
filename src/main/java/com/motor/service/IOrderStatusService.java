package com.motor.service;

import com.motor.model.OrderStatus;

import java.util.List;

public interface IOrderStatusService {
    List<OrderStatus> findAll();

    OrderStatus findOne(int id);
}

package com.motor.service;

import com.motor.model.OrderDetail;

import java.util.List;

public interface IOrderDetailService {
    List<OrderDetail> findAll();

    List<OrderDetail> findAllByOrderId(int orderId);

    OrderDetail findOne(int id);
    void insert(OrderDetail order);
}

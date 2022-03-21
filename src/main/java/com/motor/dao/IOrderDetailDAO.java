package com.motor.dao;


import com.motor.model.OrderDetail;

import java.util.List;

public interface IOrderDetailDAO {
    List<OrderDetail> findAll();

    List<OrderDetail> findAllByOrderId(int orderId);

    OrderDetail findOne(int id);
    void insert(OrderDetail order);
}

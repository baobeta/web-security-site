package com.motor.dao.impl;

import com.motor.dao.IOrderDetailDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.OrderDetailMapper;
import com.motor.model.OrderDetail;

import java.util.List;

public class OrderDetailDAOImpl extends AbstractDAO<OrderDetail> implements IOrderDetailDAO {

    @Override
    public List<OrderDetail> findAll() {
        String sql = "select * from OrderDetails";
        return query(sql, new OrderDetailMapper());
    }

    @Override
    public List<OrderDetail> findAllByOrderId(int orderId) {
        String sql = "select * from OrderDetails where order_id = ?";
        return query(sql, new OrderDetailMapper(), orderId);
    }

    @Override
    public OrderDetail findOne(int id) {
        String sql = "select * from OrderDetails where id = ?";
        List<OrderDetail> orderDetails = query(sql, new OrderDetailMapper(), id);
        return orderDetails.isEmpty() ? null : orderDetails.get(0);
    }

    @Override
    public void insert(OrderDetail order) {
        String sql = "INSERT INTO [dbo].[OrderDetails] ( [quantity], [unit_price], [product_id], [order_id]) VALUES ( ?, ?, ?, ?);";
        insert(sql, order.getQuantity(), order.getUnit_price(), order.getProduct_id(),
                order.getOrder_id());
    }
}

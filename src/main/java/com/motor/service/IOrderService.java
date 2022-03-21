package com.motor.service;

import com.motor.model.Order;
import com.motor.model.User;

import java.util.List;

public interface IOrderService {
    List<Order> findAll();

    List<Order> findAllBySeller(int seller_id);

    Order findOne(int id);

    void updateStatus(Order order);

    long countAll();

    long countNotCancelled();

    int countBySeller(int seller_id);

    long orderMoneyTotal();

    long orderMoneyTotalBySeller(int seller_id);

    long orderMoneyAveragesBySeller(int seller_id);

    List<User> findTopCustomer();

    List<User> findTopSeller();

    List<User> findUserBySeller(int seller_id);

    long getRevenueInMonth( int month, int year);

    long getRevenueBySellerInMonth(int seller_id, int month, int year);

    int countOrderInMonth(int month, int year);
    int countOrderBySellerInMonth(int seller_id, int month, int year);

    void insert(Order order);

    List<Order> findAllByUser(int id);

    long getLastId();
}

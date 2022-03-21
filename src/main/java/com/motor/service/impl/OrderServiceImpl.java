package com.motor.service.impl;

import com.motor.dao.IOrderDAO;
import com.motor.dao.impl.OrderDAOImpl;
import com.motor.model.Order;
import com.motor.model.User;
import com.motor.service.IOrderService;
import com.motor.service.IUserService;

import java.util.List;

public class OrderServiceImpl implements IOrderService {
    IOrderDAO orderDAO = new OrderDAOImpl();
    IUserService userService = new UserServiceImpl();

    @Override
    public List<Order> findAll() {
        return orderDAO.findAll();
    }

    @Override
    public List<Order> findAllBySeller(int seller_id) {
        return orderDAO.findAllBySeller(seller_id);
    }

    @Override
    public Order findOne(int id) {
        return orderDAO.findOne(id);
    }

    @Override
    public void updateStatus(Order order) {
        orderDAO.updateStatus(order);
    }

    @Override
    public long countAll() {
        return orderDAO.countAll();
    }

    @Override
    public long countNotCancelled() {
        return orderDAO.countNotCancelled();
    }

    @Override
    public int countBySeller(int seller_id) {
        return orderDAO.countBySeller(seller_id);
    }

    @Override
    public long orderMoneyTotal() {
        return orderDAO.orderMoneyTotal();
    }

    @Override
    public long orderMoneyTotalBySeller(int seller_id) {
        return orderDAO.orderMoneyTotalBySeller(seller_id);
    }

    @Override
    public long orderMoneyAveragesBySeller(int seller_id) {
        return orderDAO.orderMoneyAveragesBySeller(seller_id);
    }

    @Override
    public List<User> findTopCustomer() {
        return orderDAO.findTopCustomer();
    }

    @Override
    public List<User> findTopSeller() {
        List<User> sellers = userService.findAllSeller();
        for (User seller : sellers) {
            seller.setMail(String.valueOf(countBySeller(seller.getId())));
            seller.setPhone(String.valueOf(orderMoneyTotalBySeller(seller.getId())));
        }
        return sellers;
    }

    @Override
    public List<User> findUserBySeller(int seller_id) {
        return orderDAO.findUserBySeller(seller_id);
    }

    @Override
    public long getRevenueInMonth(int month, int year) {
        return orderDAO.getRevenueInMonth(month, year);
    }

    @Override
    public long getRevenueBySellerInMonth(int seller_id, int month, int year) {
        return orderDAO.getRevenueBySellerInMonth(seller_id, month, year);
    }

    @Override
    public int countOrderInMonth(int month, int year) {
        return orderDAO.countOrderInMonth(month, year);
    }

    @Override
    public int countOrderBySellerInMonth(int seller_id, int month, int year) {
        return orderDAO.countOrderBySellerInMonth(seller_id, month, year);
    }
    @Override
    public void insert(Order order) {
        orderDAO.insert(order);
    }
    @Override
    public List<Order> findAllByUser(int id) {return orderDAO.findAllByUser(id);
    }

    @Override
    public long getLastId() {
        return orderDAO.getLastId();
    }

}

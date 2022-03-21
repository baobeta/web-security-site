package com.motor.model;

import com.motor.service.IOrderStatusService;
import com.motor.service.IPaymentService;
import com.motor.service.IUserService;
import com.motor.service.impl.OrderStatusServiceImpl;
import com.motor.service.impl.PaymentServiceImpl;
import com.motor.service.impl.UserServiceImpl;

import java.sql.Timestamp;

public class Order {
    private int id;
    private int customer_id;
    private int seller_id;
    private Timestamp buy_date;
    private String phone;
    private String address;
    private String receiver;
    private int pay_id;
    private int status;

    public Order() {
    }

    IUserService userService = new UserServiceImpl();
    IPaymentService paymentService = new PaymentServiceImpl();
    IOrderStatusService orderStatusService = new OrderStatusServiceImpl();

    public String getCustomerName() {
        return userService.findOne(customer_id).getfullname();
    }
    public String getCustomerEmail() {
        return userService.findOne(customer_id).getMail();
    }
    public String getCustomerPhone() {
        return userService.findOne(customer_id).getPhone();
    }

    public String getSellerName() {
        return userService.findOne(seller_id).getfullname();
    }

    public String getPayment() {
        return paymentService.findOne(pay_id).getName();
    }

    public String getOrderStatus() {
        return orderStatusService.findOne(status).getName();
    }

    public Order(int id, int customer_id, int seller_id, Timestamp buy_date, String phone, String address, String receiver, int pay_id, int status) {
        this.id = id;
        this.customer_id = customer_id;
        this.seller_id = seller_id;
        this.buy_date = buy_date;
        this.phone = phone;
        this.address = address;
        this.receiver = receiver;
        this.pay_id = pay_id;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public int getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(int seller_id) {
        this.seller_id = seller_id;
    }

    public Timestamp getBuy_date() {
        return buy_date;
    }

    public void setBuy_date(Timestamp buy_date) {
        this.buy_date = buy_date;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public int getPay_id() {
        return pay_id;
    }

    public void setPay_id(int pay_id) {
        this.pay_id = pay_id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", customer_id=" + customer_id +
                ", seller_id=" + seller_id +
                ", buy_date=" + buy_date +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", receiver='" + receiver + '\'' +
                ", pay_id=" + pay_id +
                ", status=" + status +
                '}';
    }
}
